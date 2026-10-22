USE sales_performance;

SELECT
    category,
    COUNT(*) AS total_rows,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_pct
FROM orders
GROUP BY category
ORDER BY total_sales DESC;
