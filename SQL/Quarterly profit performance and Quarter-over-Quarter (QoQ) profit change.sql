-- Quarterly profit performance and Quarter-over-Quarter (QoQ) profit change
WITH profitability_over_time AS
(
SELECT 
	D.year
	,D.quarter
	,SUM(F.profit) AS quarter_profit
	,LAG(SUM(F.profit)) OVER(ORDER BY D.year,D.quarter) AS previous_quarter_profit
FROM [dbo].[fact_table] F
JOIN [dbo].[dim_date] D
	ON F.order_date_key = D.date_key
GROUP BY	D.year
			,D.quarter
)
SELECT *
	  ,quarter_profit -previous_quarter_profit AS changeIN_profitability 
	  ,FORMAT( (quarter_profit - previous_quarter_profit) / previous_quarter_profit,'P2') AS qoq_profit_growth_pct
FROM profitability_over_time