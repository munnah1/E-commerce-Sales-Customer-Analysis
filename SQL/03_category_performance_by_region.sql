WITH product_category_revenue AS(
SELECT 
	region,
	product_category,
	SUM(quantity*unit_price) AS total_revenue
FROM ecommerce_sales_analytics_5000
GROUP BY region,
product_category
),
 regional_revenue AS(
SELECT 
    region, 
    product_category,
    total_revenue,
    RANK() OVER(PARTITION BY region ORDER BY total_revenue DESC) AS revenue_rank
FROM product_category_revenue
)
SELECT 
    region, 
    product_category,
    total_revenue, 
    revenue_rank
FROM regional_revenue
WHERE revenue_rank = 1
ORDER BY region, total_revenue;














