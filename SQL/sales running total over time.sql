-- What is the monthly sales trend, how does each month compare to the previous one (MoM),
--and what is the cumulative sales running total over time?
SELECT 
	D.year
	,D.quarter
	,D.month
	,D.month_name
	,SUM(F.sales) AS month_sales
	,LAG(SUM(F.sales)) OVER(ORDER BY D.year,D.month) AS previous_month_sales
	,SUM(SUM(F.sales)) OVER( 
						ORDER BY D.year,D.month
						ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
						) AS runing_total
FROM [dbo].[fact_table] F
JOIN [dbo].[dim_date] D
	ON F.order_date_key = D.date_key
GROUP BY	D.year
			,D.quarter
			,D.month
			,D.month_name
ORDER BY D.year,D.quarter,D.month