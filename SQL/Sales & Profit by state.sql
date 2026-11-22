-- Total sales and profit comparison across states
SELECT 
	L.state
	,SUM(F.sales) AS total_sales
	,SUM(F.profit) AS total_profit
FROM [dbo].[fact_table] F
JOIN [dbo].[dim_location] L
	ON F.location_key = L.location_key
GROUP BY	L.state
ORDER BY total_sales DESC