-- KPIS performance summary (Sales, Profit, Quantity, and Orders) across all years
CREATE PROCEDURE dbo.spGet_KPIS_ALL_years 
AS
BEGIN
SELECT 
	D.year
	,SUM(sales) AS total_sales
	,SUM(profit) AS total_profit
	,SUM(quantity) AS total_quantity
	,COUNT(sales_id) AS total_orders
FROM [dbo].[fact_table] F
JOIN [dbo].[dim_date] D
	ON F.order_date_key = D.date_key
GROUP BY D.year
ORDER BY D.year
END;

--EXECUTE [dbo].[spGet_KPIS_ALL_years]