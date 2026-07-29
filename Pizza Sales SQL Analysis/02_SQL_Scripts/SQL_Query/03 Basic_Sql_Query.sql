-- Basic SQL Query

-- (1) Retrieve the total number of orders placed.
SELECT COUNT(order_id) AS total_orders
FROM taranovas_pizza.orders;

-- (2) Calculate the total revenue generated from pizza sales.

SELECT
    ROUND(SUM(od.quantity * p.price), 2) AS total_sales
FROM
    taranovas_pizza.order_details AS od
JOIN
    taranovas_pizza.pizzas AS p
ON
    od.pizza_id = p.pizza_id;
    
    -- (3) Identify the highest-priced pizza
SELECT
    pizza_types.name AS pizza_name,
    pizzas.price
FROM
    pizza_types
INNER JOIN
    pizzas
    ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY
    pizzas.price DESC
LIMIT 1;
-- (4) Identify the most common pizza size ordered
SELECT
    pizzas.size,
    COUNT(order_details.order_details_id) AS order_count
FROM taranovas_pizza.pizzas
JOIN taranovas_pizza.order_details
    ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC;

-- (5) List the top 5 most ordered pizza types along with their quantities
SELECT 
    pizza_types.name,
    SUM(order_details.quantity) AS quantity
FROM pizza_types
JOIN pizzas 
    ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN order_details 
    ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY quantity DESC
LIMIT 5;






