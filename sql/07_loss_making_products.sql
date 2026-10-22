USE sales_performance;
SELECT
    category,
    sub_category,
    product_name,
    COUNT(*) AS total_rows,
    ROUND(AVG(discount) * 100, 2) AS avg_discount_pct,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM orders
WHERE sub_category IN ('Tables', 'Binders', 'Machines')
GROUP BY
    category,
    sub_category,
    product_name
HAVING SUM(profit) < 0
ORDER BY total_profit ASC
LIMIT 20;
