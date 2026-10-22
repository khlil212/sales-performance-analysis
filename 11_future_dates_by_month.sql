USE sales_performance;
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS order_month,
    COUNT(*) AS total_rows,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM orders
WHERE order_date > CURRENT_DATE()
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY order_month;