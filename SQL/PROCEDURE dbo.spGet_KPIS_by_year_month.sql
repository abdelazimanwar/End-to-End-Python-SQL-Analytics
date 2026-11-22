-- Retrieve business KPIs (Sales, Profit, Units Sold, Orders) for any specific month and year?
CREATE PROCEDURE dbo.spGet_KPIS_by_year_month 
	@year INT
	,@month INT
AS
BEGIN
SELECT 
	SUM(sales) AS total_sales
	,SUM(profit) AS total_profit
	,SUM(quantity) AS total_quantity
	,COUNT(sales_id) AS total_orders
FROM [dbo].[fact_table] F
JOIN [dbo].[dim_date] D
	ON F.order_date_key = D.date_key
WHERE D.year = @year and D.month = @month
END;

-- EXECUTE dbo.spGet_KPIS_by_year_month 2015,12