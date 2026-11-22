-- TOP 10 Valuable Customers by Total sales & Average order value
SELECT TOP 10
	 C.customer_key
	,C.customer_name
	,C.segment
	,SUM(F.sales) AS total_sales
	,DENSE_RANK() OVER(
						ORDER BY SUM(F.sales) DESC
					  ) AS top_customer_sales
	,AVG(F.sales) AS Average_order_value
	,DENSE_RANK() OVER(
						ORDER BY avg(F.sales) DESC
					  ) AS top_customer_avg_order_value
FROM [dbo].[fact_table] F
JOIN [dbo].[dim_customer] C
	ON F.customer_key = C.customer_key
GROUP BY C.customer_key
		,C.customer_name
		,C.segment
HAVING SUM(F.sales) > 5000
ORDER BY total_sales DESC