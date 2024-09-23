
--\i /home/hania/xampp/www/gamer_pro/docs/db_docs/db_structure.sql

DROP DATABASE IF EXISTS gamer_pro;
CREATE DATABASE gamer_pro;

--use gamer_pro
\c gamer_pro

CREATE SCHEMA branch_mgmt;
CREATE SCHEMA product_mgmt;
CREATE SCHEMA sales_mgmt;

--show schemas
--\dn

CREATE TABLE branch_mgmt.branches (
    branch_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(200)
);

CREATE TABLE branch_mgmt.admins (
    admin_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    state VARCHAR(8) CHECK (state IN ('active', 'inactive'))
);

CREATE TABLE branch_mgmt.cashiers (
    cashier_id SERIAL PRIMARY KEY,
    branch_id INTEGER REFERENCES branch_mgmt.branches(branch_id),
    name VARCHAR(100) NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    state VARCHAR(8) CHECK (state IN ('active', 'inactive'))
);

CREATE TABLE branch_mgmt.storers (
    storer_id SERIAL PRIMARY KEY,
    branch_id INTEGER REFERENCES branch_mgmt.branches(branch_id),
    name VARCHAR(100) NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    state VARCHAR(8) CHECK (state IN ('active', 'inactive'))
);

CREATE TABLE branch_mgmt.inventory_emp (
    inventory_emp_id SERIAL PRIMARY KEY,
    branch_id INTEGER REFERENCES branch_mgmt.branches(branch_id),
    name VARCHAR(100) NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    state VARCHAR(8) CHECK (state IN ('active', 'inactive'))
);

CREATE TABLE product_mgmt.products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    description VARCHAR(500),
    price NUMERIC(10,2) NOT NULL
);

CREATE TYPE sales_mgmt.card_type AS ENUM ('none', 'common', 'gold', 'platinum', 'diamond');
CREATE TABLE sales_mgmt.clients (
    nit INTEGER PRIMARY KEY CHECK (nit > 0 AND nit < 1000000000),
    name VARCHAR(100) NOT NULL,
    phone_number INTEGER CHECK (phone_number > 0 AND phone_number < 100000000),
    card sales_mgmt.card_type DEFAULT 'none',
    points INTEGER DEFAULT 0
);

CREATE TABLE sales_mgmt.sales (
    sale_id SERIAL PRIMARY KEY,
    client_nit INTEGER REFERENCES sales_mgmt.clients(nit) NOT NULL ,
    cashier_id INTEGER REFERENCES branch_mgmt.cashiers(cashier_id) NOT NULL ,
    branch_id INTEGER REFERENCES branch_mgmt.branches(branch_id) NOT NULL ,
    temp_discount NUMERIC(10,2),
    point_discount NUMERIC(10,2),
    checkout_number INTEGER NOT NULL,
    date TIMESTAMP DEFAULT NOW(),
    total NUMERIC(10,2)
);

CREATE TABLE sales_mgmt.points_usage (
    points_usage_id SERIAL PRIMARY KEY,
    client_nit INTEGER REFERENCES sales_mgmt.clients(nit) NOT NULL ,
    sale_id INTEGER REFERENCES sales_mgmt.sales(sale_id) NOT NULL,
    card sales_mgmt.card_type NOT NULL,
    points INTEGER
);

CREATE TABLE sales_mgmt.temp_discounts (
    temp_discounts_id SERIAL PRIMARY KEY,
    percentage NUMERIC(3,3),
    initial_date TIMESTAMP DEFAULT NOW(),
    final_date TIMESTAMP
);

CREATE TABLE sales_mgmt.sale_items (
    sale_id INTEGER REFERENCES sales_mgmt.sales(sale_id) NOT NULL,
    product_id INTEGER REFERENCES product_mgmt.products(product_id) NOT NULL,
    amount INTEGER NOT NULL,
    unit_price NUMERIC(10,2) NOT NULL,
    PRIMARY KEY (sale_id, product_id)
);

CREATE TABLE product_mgmt.inventories (
    product_id INTEGER REFERENCES product_mgmt.products(product_id) NOT NULL,
    branch_id INTEGER REFERENCES branch_mgmt.branches(branch_id) NOT NULL,
    amount INTEGER NOT NULL,
    state VARCHAR(10) CHECK (state IN ('on display', 'in store')),
    aisle INTEGER NOT NULL ,
    shelve INTEGER,
    notes VARCHAR(150),
    PRIMARY KEY (branch_id, product_id)
);




DROP ROLE IF EXISTS products_analyst;
CREATE ROLE products_analyst;
GRANT USAGE ON SCHEMA product_mgmt TO products_analyst;
GRANT SELECT ON ALL TABLES IN SCHEMA product_mgmt TO products_analyst;

DROP ROLE IF EXISTS sales_analyst;
CREATE ROLE sales_analyst;
GRANT USAGE ON SCHEMA sales_mgmt TO sales_analyst;
GRANT SELECT ON ALL TABLES IN SCHEMA sales_mgmt TO sales_analyst;

DROP USER IF EXISTS gp_cashier;
CREATE USER gp_cashier WITH PASSWORD 'gp_cashier_pass';
GRANT sales_analyst TO gp_cashier;
GRANT products_analyst TO gp_cashier;
GRANT INSERT, UPDATE, TRIGGER ON sales_mgmt.sales, sales_mgmt.sale_items, sales_mgmt.clients TO gp_cashier;
GRANT INSERT ON sales_mgmt.points_usage TO gp_cashier;

DROP USER IF EXISTS gp_storers;
CREATE USER gp_storers WITH PASSWORD 'gp_storers_pass';
GRANT products_analyst TO gp_storers;
GRANT INSERT, UPDATE, TRIGGER ON product_mgmt.products, product_mgmt.inventories TO gp_storers;

DROP USER IF EXISTS gp_admin;
CREATE USER gp_admin WITH PASSWORD 'gp_admin_pass';
GRANT sales_analyst TO gp_admin;
GRANT products_analyst TO gp_admin;
GRANT USAGE ON SCHEMA branch_mgmt TO gp_admin;
GRANT SELECT ON ALL TABLES IN SCHEMA branch_mgmt TO gp_admin;
GRANT INSERT, UPDATE, TRIGGER ON sales_mgmt.clients TO gp_admin;
GRANT INSERT, UPDATE, TRIGGER ON branch_mgmt.cashiers, branch_mgmt.inventory_emp, branch_mgmt.storers TO gp_admin;

DROP USER IF EXISTS gp_login;
CREATE USER gp_login WITH PASSWORD 'gp_login_pass';
GRANT USAGE ON SCHEMA branch_mgmt TO gp_login;
GRANT SELECT ON branch_mgmt.admins, branch_mgmt.cashiers, branch_mgmt.inventory_emp, branch_mgmt.storers TO gp_login;

--show users
--\du+ 