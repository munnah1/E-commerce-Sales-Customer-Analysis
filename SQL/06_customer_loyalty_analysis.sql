  WITH customer_revenue AS (
SELECT
    customer_id,
    COUNT(order_id) AS order_count,
    SUM(quantity*unit_price) AS total_revenue
FROM ecommerce_sales_analytics_5000
GROUP BY customer_id
),
customer_type AS (
SELECT
    customer_id,
    order_count,
    total_revenue,
    CASE
    WHEN order_count =1 THEN 'One Time'
    WHEN order_count BETWEEN 2 AND 3 THEN 'Returning'
    WHEN order_count > 3 THEN 'Loyal'
    END AS customer_type
FROM customer_revenue
)
SELECT
    customer_id,
    order_count,
    total_revenue,
    customer_type,
    RANK() OVER( PARTITION BY customer_type ORDER BY total_revenue DESC) AS customer_rank
FROM customer_type
ORDER BY customer_type, customer_rank;









