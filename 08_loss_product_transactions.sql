USE sales_performance;
SELECT
    order_id,
    order_date,
    customer_name,
    product_name,
    quantity,
    sales,
    discount,
    profit
FROM orders
WHERE product_name IN (
    'Cubify CubeX 3D Printer Double Head Print',
    'Lexmark MX611dhe Monochrome Laser Printer',
    'Cubify CubeX 3D Printer Triple Head Print',
    'Chromcraft Bull-Nose Wood Oval Conference Tables & Bases'
)
ORDER BY profit ASC;