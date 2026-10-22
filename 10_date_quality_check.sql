USE sales_performance;
SELECT
    MIN(order_date) AS earliest_order_date,
    MAX(order_date) AS latest_order_date,
    SUM(
        CASE
            WHEN order_date > CURRENT_DATE() THEN 1
            ELSE 0
        END
    ) AS future_dated_rows,
    COUNT(*) AS total_rows
FROM orders;