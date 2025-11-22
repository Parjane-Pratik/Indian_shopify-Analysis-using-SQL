create database indian_shopify_sales;
use indian_shopify_sales;
CREATE TABLE shopify_orders (
    admin_graphql_api_id           VARCHAR(255),
    order_number                   BIGINT PRIMARY KEY,
    billing_address_country        VARCHAR(100),
    billing_address_first_name     VARCHAR(100),
    billing_address_last_name      VARCHAR(100),
    billing_address_province       VARCHAR(100),
    billing_address_zip            VARCHAR(20),
    city                           VARCHAR(100),
    currency                       VARCHAR(10),
    customer_id                    BIGINT,
    invoice_date                   DATE,
    gateway                        VARCHAR(100),
    product_id                     BIGINT,
    product_type                   VARCHAR(100),
    variant_id                     BIGINT,
    quantity                       INT,
    subtotal_price                 DECIMAL(12,2),
    total_price_inr                DECIMAL(12,2),
    total_tax                      DECIMAL(12,2)
);
select * from shopify_orders ;
-- Convert invoice_date to DATE format if needed
UPDATE shopify_orders
SET invoice_date = STR_TO_DATE(invoice_date, '%d-%m-%Y')
WHERE invoice_date LIKE '%-%-%'
  AND order_number IS NOT NULL;


-- Replace blank cities with NULL
UPDATE shopify_orders
SET city = NULL
WHERE TRIM(city) = '';

-- Standardize gateway values (UPI, COD, Card)
UPDATE shopify_orders
SET gateway = UPPER(gateway);

-- Remove negative quantity orders
DELETE FROM shopify_orders
WHERE quantity < 0;

-- Remove duplicate order_numbers (if any)
DELETE t1 FROM shopify_orders t1
JOIN shopify_orders t2
ON t1.order_number = t2.order_number
AND t1.admin_graphql_api_id > t2.admin_graphql_api_id;

