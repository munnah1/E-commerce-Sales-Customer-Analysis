WITH customer_revenue AS(
	SELECT product_category,
    AVG(discount) AS average_discount,
    COUNT(order_id) AS number_of_order,
   SUM(quantity*unit_price) AS total_revenue
FROM ecommerce_sales_analytics_5000 
GROUP BY product_category
),
discount_revenue AS(
SELECT 
	product_category,
	average_discount, 
    number_of_order,
    total_revenue,
    RANK() OVER( ORDER BY total_revenue DESC) AS revenue_rank
FROM customer_revenue
)
SELECT
    product_category,
	average_discount, 
    number_of_order,
    total_revenue,
    revenue_rank
FROM discount_revenue
WHERE revenue_rank <=3
ORDER BY total_revenue, revenue_rank;









