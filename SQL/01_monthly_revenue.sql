SELECT MONTH (STR_TO_DATE (order_date, '%m/%d/%Y')) AS MONTH, 
SUM(quantity * unit_price) AS total_revenue
FROM ecommerce_sales_analytics_5000
GROUP BY MONTH
ORDER BY MONTH ASC;




