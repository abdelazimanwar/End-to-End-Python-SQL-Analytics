-- Classifying Sub-Categories into High, Medium, and Low Sales tiers
WITH sales_by_category AS
(
SELECT 
	P.category
	,P.sub_category
	,SUM(F.sales) AS total_sales
	,NTILE(3) OVER(ORDER BY SUM(F.sales) DESC) AS group_num
FROM [dbo].[fact_table] F
JOIN [dbo].[dim_product] P
	ON F.product_key = P.product_key
GROUP BY 		
	P.category
	,P.sub_category
)
SELECT 
	category
	,sub_category
	,total_sales
	,CASE group_num WHEN 1 THEN 'High Sales'
					WHEN 2 THEN 'Medium Sales'
					ELSE 'Low Sales' 
	END AS sales_tier
FROM sales_by_category