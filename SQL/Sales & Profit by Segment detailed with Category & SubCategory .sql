-- What are the total sales, total profit, and average profit across segments, categories, and sub-categories?
SELECT 
	CD.segment
	,P.category
	,P.sub_category
	,SUM(CD.sales) AS total_sales
	,SUM(CD.profit) AS total_profit	
	,AVG(CD.profit) as average_profit
FROM [dbo].[vCustomer_Order_Details] CD
JOIN [dbo].[dim_product] P
	ON CD.product_key = P.product_key
GROUP BY 	
		CD.segment
		,P.category
		,P.sub_category
ORDER BY total_sales DESC