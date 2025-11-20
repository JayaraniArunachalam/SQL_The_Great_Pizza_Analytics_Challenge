-- 1. Total quantity of pizzas sold (`SUM`).
SELECT SUM(quantity) AS pizzas_sold FROM order_details;

-- 2. Average pizza price (`AVG`).
SELECT ROUND(AVG(price),2) AS avg_pizza_price FROM pizzas;

-- 3. Total order value per order (`JOIN`, `SUM`, `GROUP BY`).
SELECT od.order_id, SUM((od.quantity)*p.price) AS value_per_order
FROM order_details od
LEFT JOIN pizzas p
ON od.pizza_id = p.pizza_id
GROUP BY od.order_id;

SELECT distinct order_id FROM order_details;

-- 4. Total quantity sold per pizza category (`JOIN`, `GROUP BY`).
SELECT pt.category, SUM(od.quantity) AS quantity_sold
FROM order_details od
LEFT JOIN pizzas p
ON od.pizza_id = p.pizza_id
LEFT JOIN pizza_types pt
ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category;

-- 5. Categories with more than 5,000 pizzas sold (`HAVING`).
SELECT pt.category, SUM(od.quantity) AS quantity_sold
FROM order_details od
LEFT JOIN pizzas p
ON od.pizza_id = p.pizza_id
LEFT JOIN pizza_types pt
ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category
HAVING quantity_sold>5000;

-- 6. Pizzas never ordered (`LEFT/RIGHT JOIN`).
SELECT DISTINCT pt.name AS pizza_never_ordered
FROM order_details od
RIGHT JOIN pizzas p
ON od.pizza_id = p.pizza_id
JOIN pizza_types pt
ON p.pizza_type_id= pt.pizza_type_id
WHERE od.quantity IS NULL;

-- 7. Price differences between different sizes of the same pizza (`SELF JOIN`).
SELECT 
    p1.pizza_type_id,
    p1.size AS size_1,
    p1.price AS price_1,
    p2.size AS size_2,
    p2.price AS price_2,
    ABS(p2.price - p1.price) AS price_difference
FROM pizzas p1
JOIN pizzas p2
    ON p1.pizza_type_id = p2.pizza_type_id
    AND p1.size < p2.size 
ORDER BY p1.pizza_type_id, p1.size;

select pizza_type_id, count(distinct(size)) from pizzas group by pizza_type_id;
SELECT distinct size from pizzas;