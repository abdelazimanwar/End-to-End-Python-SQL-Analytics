-- Categorizing products by profit status: Profitable, Break-even, or Unprofitable
WITH profitability_by_category AS
(
SELECT 
	P.category
	,P.sub_category
	,P.product_name
	,SUM(F.profit) AS total_profit
FROM [dbo].[fact_table] F
JOIN [dbo].[dim_product] P
	ON F.product_key = P.product_key
GROUP BY 		
	P.category
	,P.sub_category
	,p.product_name
)
SELECT 
	*
	,CASE WHEN total_profit > 0 THEN 'Profitable'
		  WHEN total_profit = 0 THEN 'Break-even'
		  ELSE 'Unprofitable'
	END AS profit_tier
FROM profitability_by_category