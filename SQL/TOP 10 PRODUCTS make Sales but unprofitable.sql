-- TOP 10 PRODUCTS make Sales but unprofitable
-- Maybe high discount is the cause!
SELECT TOP 10
	P.product_name
	,FORMAT(AVG(F.discount),'P2') AS average_discount_pct
	,SUM(F.sales) AS total_sales
	,SUM(F.profit) AS total_profit
FROM [dbo].[fact_table] F
JOIN [dbo].[dim_product] P
	ON F.product_key = P.product_key
GROUP BY p.product_name
HAVING SUM(F.profit) < 0
ORDER BY total_profit