SELECT
		CASE
        WHEN delivery_days >=1 AND delivery_days <=3 THEN 'Fast'
		WHEN delivery_days >=4 AND delivery_days <=7 THEN 'Normal'
		WHEN delivery_days >=8 THEN 'Slow'
        END AS delivery_category,
        AVG(customer_rating) AS average_ustmer_rating, 
        COUNT(order_id) AS number_of_order
FROM ecommerce_sales_analytics_5000
GROUP BY delivery_category
ORDER BY average_customer_rating DESC;











