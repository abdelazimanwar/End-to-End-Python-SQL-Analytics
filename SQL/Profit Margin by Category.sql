-- Profit Margin by Category
SELECT
    P.category
    ,D.year
    ,SUM(F.sales) AS total_sales
    ,SUM(F.profit) AS total_profit
    ,FORMAT(SUM(F.profit) / SUM(F.sales), 'P2') AS profit_margin
FROM dbo.fact_table F
JOIN dbo.dim_product P
    ON F.product_key = P.product_key
JOIN [dbo].[dim_date] D
    ON F.order_date_key = D.date_key
GROUP BY P.category
        ,D.year
ORDER BY D.year,P.category