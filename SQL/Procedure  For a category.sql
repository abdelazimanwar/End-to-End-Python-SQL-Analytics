-- Procedure: For a category, how many customers purchased from it,
-- and what is the total sales & profit generated?
CREATE PROCEDURE dbo.spGet_Category_Performance
@category VARCHAR(50)
AS
BEGIN
SELECT
    P.category,
    COUNT(DISTINCT F.customer_key) AS total_customers,
    SUM(F.sales) AS total_sales,
    SUM(F.profit) AS total_profit
FROM dbo.fact_table F
JOIN dbo.dim_product P
    ON F.product_key = P.product_key
WHERE P.category = @category
GROUP BY
    P.category
END;

--EXECUTE dbo.spGet_Category_Performance 'Technology'