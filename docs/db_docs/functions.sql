
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
    product_name VARCHAR,
    product_description VARCHAR,
    product_price NUMERIC(10,2),
    amount_on_display INTEGER,
    amount_in_store INTEGER,
    location_on_display VARCHAR,
    location_in_store VARCHAR
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        p.name AS product_name,
        p.description AS product_description,
        p.price AS product_price,
        COALESCE(i_display.amount, 0) AS amount_on_display,
        COALESCE(i_store.amount, 0) AS amount_in_store,
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
        i_display.branch_id IS NOT NULL OR i_store.branch_id IS NOT NULL
    ORDER BY product_name ASC;
END;
$$ LANGUAGE plpgsql;

