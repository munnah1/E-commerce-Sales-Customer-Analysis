WITH product_category_revenue AS(
	SELECT product_category, 
    SUM(quantity * unit_price) AS total_revenue
    FROM ecommerce_sales_analytics_5000
	GROUP BY product_category)
SELECT product_category,
total_revenue
FROM product_category_revenue
ORDER BY total_revenue DESC
LIMIT 3;

