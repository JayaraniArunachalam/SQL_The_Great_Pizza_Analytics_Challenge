# Phase 1 
Phase 1 is about creating database idc_pizza , followed by creating 4 table structures namely order_details, orders, pizza_types and pizzas

## Table details
### orders:
* order_id INT PRIMARY KEY
* date DATE
* time TIME

### pizza_types:
    pizza_type_id VARCHAR(50) PRIMARY KEY, -- e.g., 'bbq_ckn'
    name VARCHAR(100),                      -- e.g., 'The Barbecue Chicken Pizza'
    category VARCHAR(50),                   -- e.g., 'Chicken'
    ingredients TEXT                        -- e.g., 'Barbecued Chicken, Red Peppers, ...'
    
### pizzas 
    pizza_id VARCHAR(50) PRIMARY KEY,   -- e.g., 'bbq_ckn_s'
    pizza_type_id VARCHAR(50) REFERENCES pizza_types(pizza_type_id),
    size VARCHAR(10),                   -- e.g., 'S', 'M', 'L'
    price NUMERIC(5, 2)                 -- e.g., 12.75

### order_details 
    order_details_id INT PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    pizza_id VARCHAR(50) REFERENCES pizzas(pizza_id),
    quantity INT
