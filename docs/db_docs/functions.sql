
-- Ingresar producto a una sucursal (bodegueros)
CREATE OR REPLACE FUNCTION insert_inventory(p_branch_id INTEGER, p_product_id INTEGER, p_amount INTEGER, p_location VARCHAR, p_notes VARCHAR)
RETURNS VOID AS $$
BEGIN
    -- Si el producto ya existe entonces sumar amount y actualizar location
    IF EXISTS (SELECT 1 FROM product_mgmt.inventories WHERE product_id=p_product_id AND branch_id=p_branch_id) THEN
        UPDATE product_mgmt.inventories SET location = p_location, amount = amount + p_amount WHERE product_id=p_product_id AND branch_id=p_branch_id AND state='in store';
    -- Si no existe agregarlo
    ELSE
        -- Insertar la fila con state 'in store'
        INSERT INTO product_mgmt.inventories (product_id, branch_id, amount, state, location, notes)
        VALUES (p_product_id, p_branch_id, p_amount, 'in store', p_location, p_notes);
        -- Insertar la fila con state 'on display'
        INSERT INTO product_mgmt.inventories (product_id, branch_id, amount, state, location, notes)
        VALUES (p_product_id, p_branch_id, 0, 'on display', 'pendiente', p_notes);
    END IF;
END;
$$ LANGUAGE plpgsql;





-- Select productos de una sucursal
CREATE OR REPLACE FUNCTION get_branch_inventory(p_branch_id INTEGER)
RETURNS TABLE (
    product_id INTEGER,
    product_name VARCHAR,
    product_description VARCHAR,
    product_price NUMERIC(10,2),
    amount_on_display INTEGER,
    amount_in_store INTEGER,
    stock INTEGER,
    location_on_display VARCHAR,
    location_in_store VARCHAR
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        p.product_id AS product_id,
        p.name AS product_name,
        p.description AS product_description,
        p.price AS product_price,
        COALESCE(i_display.amount, 0) AS amount_on_display,
        COALESCE(i_store.amount, 0) AS amount_in_store,
        COALESCE(i_display.amount, 0) + COALESCE(i_store.amount, 0) as stock,
        COALESCE(i_display.location, 'N/A') AS location_on_display,
        COALESCE(i_store.location, 'N/A') AS location_in_store
    FROM 
        product_mgmt.products p
    LEFT JOIN 
        product_mgmt.inventories i_display 
        ON p.product_id = i_display.product_id
        AND i_display.branch_id = p_branch_id
        AND i_display.state = 'on display'
    LEFT JOIN 
        product_mgmt.inventories i_store
        ON p.product_id = i_store.product_id
        AND i_store.branch_id = p_branch_id
        AND i_store.state = 'in store'
    WHERE 
        (i_display.branch_id IS NOT NULL OR i_store.branch_id IS NOT NULL)
        AND COALESCE(i_display.amount, 0) + COALESCE(i_store.amount, 0) > 0 
    ORDER BY product_name ASC;
END;
$$ LANGUAGE plpgsql;





-- Ingresar / Inicializar nueva venta (TRIGGER)
-- solo necesita/usa client_nit y cashier_id
CREATE OR REPLACE FUNCTION initialize_sale()
RETURNS TRIGGER AS $$
BEGIN
    SELECT branch_id FROM branch_mgmt.cashiers WHERE cashier_id = NEW.cashier_id INTO NEW.branch_id;
    SELECT checkout_number FROM branch_mgmt.cashiers WHERE cashier_id = NEW.cashier_id INTO NEW.checkout_number;
    NEW.temp_discount := 0;
    NEW.point_discount := 0;
    NEW.total := 0;
    NEW.date := CURRENT_DATE;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trigger_initialize_sale ON sales_mgmt.sales;
CREATE TRIGGER trigger_initialize_sale
BEFORE INSERT ON sales_mgmt.sales
FOR EACH ROW EXECUTE FUNCTION initialize_sale();





-- Ingresar items de una venta (TRIGGER)
CREATE OR REPLACE FUNCTION insert_sale_item()
RETURNS TRIGGER AS $$
DECLARE
    branch INTEGER;
    total_stock INTEGER;
    stock_on_display INTEGER;
    stock_in_store INTEGER;
    subtotal NUMERIC(10, 2);
BEGIN
    total_stock := 0;
    stock_in_store := 0;
    stock_on_display := 0;

    SELECT branch_id FROM sales_mgmt.sales WHERE sale_id = NEW.sale_id INTO branch;

    -- Validar que la cantidad del sale_item no sea 0
    IF NEW.amount <= 0 THEN
        RAISE EXCEPTION 'No puede agregarse a una venta un item con 0 unidades';
    END IF;

    -- Obtener stocks del producto en la sucursal
    SELECT COALESCE(SUM(CASE WHEN state = 'on display' THEN amount ELSE 0 END), 0),
           COALESCE(SUM(CASE WHEN state = 'in store' THEN amount ELSE 0 END), 0)
    INTO stock_on_display, stock_in_store
    FROM product_mgmt.inventories WHERE product_id = NEW.product_id AND branch_id = branch;
    total_stock := stock_on_display + stock_in_store;

    -- Validar que la cantidad no exceda el stock total
    IF NEW.amount > total_stock THEN
        RAISE EXCEPTION 'La cantidad excede las existencias disponibles';
    END IF;

    -- Traer precio unitario de tabla products, calcular subtotal
    SELECT price FROM product_mgmt.products WHERE product_id = NEW.product_id INTO NEW.unit_price;
    subtotal := NEW.unit_price * NEW.amount;

    -- Actualizar el total en la tabla sales
    UPDATE sales_mgmt.sales SET total = total + subtotal WHERE sale_id = NEW.sale_id;

    -- Actualizar las existencias en product_mgmt.inventories

    -- Restar primero de "on display"
    IF stock_on_display >= NEW.amount THEN
        -- Restar solo de "on display"
        UPDATE product_mgmt.inventories SET amount = amount - NEW.amount
        WHERE product_id = NEW.product_id AND branch_id = branch AND state = 'on display';
    ELSE
        -- Restar todo el stock "on display" y lo que falte de "in store"
        UPDATE product_mgmt.inventories SET amount = 0
        WHERE product_id = NEW.product_id AND branch_id = branch AND state = 'on display';

        -- Restar el resto del "in store"
        UPDATE product_mgmt.inventories SET amount = amount - (NEW.amount - stock_on_display)
        WHERE product_id = NEW.product_id AND branch_id = branch AND state = 'in store';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trigger_insert_sale_item ON sales_mgmt.sale_items;
CREATE TRIGGER trigger_insert_sale_item
BEFORE INSERT ON sales_mgmt.sale_items
FOR EACH ROW EXECUTE FUNCTION insert_sale_item();





-- Usar puntos (TRIGGER)
-- solo necesita/usa points y sale_id
CREATE OR REPLACE FUNCTION insert_points_usage()
RETURNS TRIGGER AS $$
DECLARE
    client_points INTEGER;
    sale_total INTEGER;
BEGIN
    --Puntos a usar no son cero
    IF NEW.points <= 0 THEN
        RAISE EXCEPTION 'No pueden usarse 0 o menos puntos';
    END IF;

    SELECT s.client_nit FROM sales_mgmt.sales s WHERE sale_id = NEW.sale_id INTO NEW.client_nit;
    SELECT card FROM sales_mgmt.clients WHERE nit = NEW.client_nit INTO NEW.card;
    SELECT points FROM sales_mgmt.clients WHERE nit = NEW.client_nit INTO client_points;
    SELECT total FROM sales_mgmt.sales s WHERE sale_id = NEW.sale_id INTO sale_total;

    -- Tiene puntos suficientes?
    IF NEW.points > client_points THEN
        RAISE EXCEPTION 'Los puntos a usar exceden los puntos del cliente';
    END IF;

    -- Es aplicable al total de la venta?
    IF NEW.points > sale_total THEN
        RAISE EXCEPTION 'El descuento por puntos excede el total de la venta';
    END IF;

    --agregar descuento a la venta y restarlo al total
    UPDATE sales_mgmt.sales SET point_discount = NEW.points, total = total - NEW.points WHERE sale_id = NEW.sale_id;

    -- restar puntos al cliente
    UPDATE sales_mgmt.clients SET points = points - NEW.points WHERE nit = NEW.client_nit;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trigger_insert_points_usage ON sales_mgmt.points_usage;
CREATE TRIGGER trigger_insert_points_usage
BEFORE INSERT ON sales_mgmt.points_usage
FOR EACH ROW EXECUTE FUNCTION insert_points_usage();





-- Sumar puntos al cliente por nueva venta
CREATE OR REPLACE FUNCTION add_points(n_sale_id INTEGER)
RETURNS VOID AS $$
DECLARE
    c_nit INTEGER;
    sale_total INTEGER;
    card_name VARCHAR;
    points_to_add INTEGER := 0;
    points_multiplier INTEGER := 0;
BEGIN
    SELECT s.client_nit FROM sales_mgmt.sales s WHERE s.sale_id = n_sale_id INTO c_nit;
    SELECT total FROM sales_mgmt.sales s WHERE s.sale_id = n_sale_id INTO sale_total;
    SELECT c.card FROM sales_mgmt.clients c WHERE c.nit = c_nit INTO card_name;
    
    -- Determinar el multiplicador de puntos según el tipo de tarjeta
    IF card_name = 'common' THEN points_multiplier := 5;
    ELSIF card_name = 'gold' THEN points_multiplier := 10;
    ELSIF card_name = 'platinum' THEN points_multiplier := 20;
    ELSIF card_name = 'diamond' THEN points_multiplier := 30;
    ELSE points_multiplier := 0; -- No tiene tarjeta (none)
    END IF;

    -- Calcular los puntos a agregar (por cada Q200 gastados)
    IF points_multiplier > 0 AND sale_total > 0 THEN
        points_to_add := FLOOR(sale_total / 200) * points_multiplier;
    END IF;

    -- Actualizar los puntos del cliente
    IF points_to_add > 0 AND sale_total > 0 THEN
        UPDATE sales_mgmt.clients  SET points = points + points_to_add WHERE nit = c_nit;
    END IF;
END;
$$ LANGUAGE plpgsql;

