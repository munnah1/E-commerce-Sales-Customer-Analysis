WITH customer_revenue AS (
SELECT
    customer_id,
    COUNT(DISTINCT order_id) AS number_of_orders,
    SUM(quantity*unit_price) AS total_revenue
    FROM ecommerce_sales_analytics_5000
    GROUP BY customer_id
    HAVING COUNT(DISTINCT order_id) > 3
    ),
revenue_rank AS (
    SELECT
    customer_id,
    number_of_orders,
    total_revenue,
    RANK() OVER(ORDER BY total_revenue DESC) AS customer_rank
    FROM customer_revenue
)
SELECT
    customer_id,
    number_of_orders,
    total_revenue,
    customer_rank
FROM revenue_rank
WHERE customer_rank <= 5
ORDER BY customer_rank;













