-- (11) Calculate the percentage contribution of each pizza category to total revenue.

SELECT 
    pt.category,
    ROUND(
        SUM(od.quantity * p.price) * 100 /
        (SELECT SUM(od2.quantity * p2.price)
         FROM order_details od2
         JOIN pizzas p2
         ON od2.pizza_id = p2.pizza_id),
        2
    ) AS revenue_percentage
FROM pizza_types pt
JOIN pizzas p
ON pt.pizza_type_id = p.pizza_type_id
JOIN order_details od
ON p.pizza_id = od.pizza_id
GROUP BY pt.category
ORDER BY revenue_percentage DESC;

-- (12) Analyze the cumulative revenue generated over time.

SELECT
    r1.order_date,
    r1.revenue,
    (
        SELECT ROUND(SUM(r2.revenue), 2)
        FROM (
            SELECT
                o.order_date,
                SUM(od.quantity * p.price) AS revenue
            FROM orders o
            JOIN order_details od ON o.order_id = od.order_id
            JOIN pizzas p ON od.pizza_id = p.pizza_id
            GROUP BY o.order_date
        ) AS r2
        WHERE r2.order_date <= r1.order_date
    ) AS cumulative_revenue
FROM (
    SELECT
        o.order_date,
        ROUND(SUM(od.quantity * p.price), 2) AS revenue
    FROM orders o
    JOIN order_details od ON o.order_id = od.order_id
    JOIN pizzas p ON od.pizza_id = p.pizza_id
    GROUP BY o.order_date
) AS r1
ORDER BY r1.order_date;


-- (13) Determine the top 3 pizza types based on revenue for each pizza category.
SELECT
    category,
    name,
    revenue
FROM
(
    SELECT
        pt.category,
        pt.name,
        SUM(od.quantity * p.price) AS revenue,
        RANK() OVER (
            PARTITION BY pt.category
            ORDER BY SUM(od.quantity * p.price) DESC
        ) AS rank_no
    FROM pizza_types pt
    JOIN pizzas p
        ON pt.pizza_type_id = p.pizza_type_id
    JOIN order_details od
        ON p.pizza_id = od.pizza_id
    GROUP BY
        pt.category,
        pt.name
) AS ranked_pizzas
WHERE rank_no <= 3
ORDER BY
    category,
    revenue DESC;