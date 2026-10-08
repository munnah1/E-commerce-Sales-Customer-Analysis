 WITH customer_revenue AS(
	SELECT
        customer_id,
        SUM(quantity*unit_price) AS total_revenue
        FROM ecommerce_sales_analytics_5000 
        GROUP BY customer_id
        )
	SELECT
        customer_id,
        total_revenue,
        SUM(total_revenue) OVER () AS 
        company_total_revenue,
        ROUND(
			   total_revenue / SUM(total_revenue) OVER () * 100, 2 ) AS revenue_contribution_percentage
	FROM customer_revenue
    ORDER BY revenue_contribution_percentage DESC;








