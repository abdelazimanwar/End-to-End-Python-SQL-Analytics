-- Which products generated sales above the average product sales?
SELECT
    P.product_name,
    SUM(F.sales) AS total_sales
FROM dbo.fact_table F
JOIN dbo.dim_product P
    ON F.product_key = P.product_key
GROUP BY   P.product_name
HAVING SUM(F.sales) > (SELECT AVG(product_sales)
                        FROM
                        (SELECT
                                SUM(F2.sales) AS product_sales
                        FROM dbo.fact_table F2
                        GROUP BY F2.product_key) AS ProductTotals)