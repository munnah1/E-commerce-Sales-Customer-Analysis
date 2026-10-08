WITH payment_method_revenue AS(
	SELECT E.customer_id,
	C.customer_name,
	payment_method,
	SUM(quantity*unit_price) AS total_revenue
	FROM ecommerce_sales_analytics_5000 AS E
	JOIN customers AS C
	ON E.customer_id=C.customer_id
	GROUP BY E.customer_id,
	C.customer_name,
	payment_method
)
SELECT payment_method,
    AVG(total_revenue) AS average_total_revenue,
    SUM(total_revenue) AS total_revenue
    FROM payment_method_revenue
    GROUP BY payment_method
    ORDER BY  AVG(total_revenue);










