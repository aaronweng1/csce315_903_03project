SELECT order_date, SUM(cost) as total_cost
FROM _customer_order
GROUP BY order_date
ORDER BY total_cost DESC
LIMIT 10;