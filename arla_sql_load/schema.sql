-- =====================================================
-- Arla Foods Nigeria -- Practice Database
-- Tables: products, customers, sales
-- =====================================================

DROP TABLE IF EXISTS sales_arla;
DROP TABLE IF EXISTS customers_arla;
DROP TABLE IF EXISTS products_arla;

-- ---------------------------------------------------
-- 1. products
-- ERP-style product master. One row per SKU.
-- ---------------------------------------------------
CREATE TABLE products_arla (
    product_id        INT PRIMARY KEY,
    sku                 VARCHAR(20),      -- e.g. DAN-MPW-001
    product_name          VARCHAR(100),
    brand                   VARCHAR(20),      -- DANO, Arla, Lurpak, Castello, Puck
    category                  VARCHAR(30),      -- Milk Powder, UHT Milk, Flavoured Milk, Butter, Cheese,
                                                  -- Cream Cheese, Cooking Cream, Whipping Cream, Dairy Dessert, Yoghurt
    pack_size                   VARCHAR(20),
    unit_price_ngn                 NUMERIC(10,2),   -- current list/reference selling price
    unit_cost_ngn                    NUMERIC(10,2),   -- cost to produce/import (for margin analysis)
    launch_year                        INT,
    active_status                        VARCHAR(20)   -- Active or Discontinued
);

-- ---------------------------------------------------
-- 2. customers
-- One row per buyer (distributor, retailer, HORECA, etc.)
-- ---------------------------------------------------
CREATE TABLE customers_arla (
    customer_id       INT PRIMARY KEY,
    customer_name        VARCHAR(100),
    customer_type           VARCHAR(30),   -- Distributor, Supermarket, Retail Store, Pharmacy, Hotel,
                                             -- Restaurant, Convenience Store, Bakery, Cafe
    state                      VARCHAR(50),
    geopolitical_zone            VARCHAR(50),
    registration_date               DATE,
    contact_channel                    VARCHAR(30)   -- Field Sales Rep, WhatsApp Order, Distributor Portal, Phone Order, Walk-in
);

-- ---------------------------------------------------
-- 3. sales
-- Fact table. One row per transaction, full year 2025.
-- ---------------------------------------------------
CREATE TABLE sales_arla (
    sale_id        INT PRIMARY KEY,
    customer_id       INT REFERENCES customers_arla(customer_id),
    product_id           INT REFERENCES products_arla(product_id),
    quantity                INT,
    unit_price_ngn             NUMERIC(10,2),   -- actual transacted price (may differ slightly from products.unit_price_ngn)
    discount_pct                  NUMERIC(5,2),   -- % discount applied to this order
    sale_date                        DATE
);

-- Indexes on FK/date columns for JOIN and filter performance
CREATE INDEX idx_sales_customer ON sales_arla(customer_id);
CREATE INDEX idx_sales_product ON sales_arla(product_id);
CREATE INDEX idx_sales_date ON sales_arla(sale_date);
CREATE INDEX idx_products_brand ON products_arla(brand);
CREATE INDEX idx_products_category ON products_arla(category);
CREATE INDEX idx_customers_state ON customers_arla(state);
