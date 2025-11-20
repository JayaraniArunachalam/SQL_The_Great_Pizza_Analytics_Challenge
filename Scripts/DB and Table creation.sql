DROP DATABASE IF EXISTS IDC_Pizza;
CREATE DATABASE IDC_Pizza;

/*
===============================================================================
DDL Script: Create Tables
===============================================================================
Script Purpose:
    This script creates 4 tables named order_details, orders, 
    pizza_types, pizzas ,dropping existing tables 
    if they already exist.
===============================================================================
*/
-- =============================
-- 1.Table: order_details
-- =============================
USE idc_pizza;
DROP TABLE IF EXISTS pizza_types;
CREATE TABLE pizza_types (
    pizza_type_id VARCHAR(50) PRIMARY KEY, -- e.g., 'bbq_ckn'
    name VARCHAR(100),                      -- e.g., 'The Barbecue Chicken Pizza'
    category VARCHAR(50),                   -- e.g., 'Chicken'
    ingredients TEXT                        -- e.g., 'Barbecued Chicken, Red Peppers, ...'
);

-- =============================
-- 2.Table: pizzas
-- =============================
USE idc_pizza;
DROP TABLE IF EXISTS pizzas;
CREATE TABLE pizzas (
    pizza_id VARCHAR(50) PRIMARY KEY,   -- e.g., 'bbq_ckn_s'
    pizza_type_id VARCHAR(50) REFERENCES pizza_types(pizza_type_id),
    size VARCHAR(10),                   -- e.g., 'S', 'M', 'L'
    price NUMERIC(5, 2)                 -- e.g., 12.75
);
-- =============================
-- 3.Table: orders
-- =============================
USE idc_pizza;
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    date DATE,
    time TIME
);
-- =============================
-- 4.Table: order_details
-- =============================
USE idc_pizza;
DROP TABLE IF EXISTS order_details;
CREATE TABLE order_details(
	order_details_id INT PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    pizza_id VARCHAR(50) REFERENCES pizzas(pizza_id),
    quantity INT
);

