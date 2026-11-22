-- TOP 10 Loyal Customers by number of orders
SELECT TOP 10
	 C.customer_key
	,C.customer_name
	,C.segment
	,COUNT(F.sales_id) AS total_orders
	,DENSE_RANK() OVER(
						ORDER BY COUNT(F.sales_id) DESC
					  ) as top_customer_order
FROM [dbo].[fact_table] F
JOIN [dbo].[dim_customer] C
	ON F.customer_key = C.customer_key
GROUP BY C.customer_key
		,C.customer_name
		,C.segment
HAVING COUNT(F.sales_id) > 5
ORDER BY total_orders DESC