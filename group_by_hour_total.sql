SELECT DATE_TRUNC('hour', order_time) AS hour,

       SUM(cost) AS sales
FROM _customer_order
GROUP BY hour
ORDER BY hour ASC