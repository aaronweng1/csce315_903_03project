SELECT TO_CHAR(DATE_TRUNC('week', order_date), 'YYYY-MM-DD') AS week_start,

       COUNT(*) AS order_count
FROM _customer_order
GROUP BY week_start
ORDER BY week_start ASC;
