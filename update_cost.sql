WITH max_id AS (
    SELECT COALESCE(MAX(customer_order_id), 0) AS new_id FROM _customer_order
)

UPDATE _customer_order
SET cost = '$1.00'
FROM max_id
WHERE customer_order_id = new_id;

SELECT * from _customer_order
ORDER BY customer_order_id DESC
LIMIT 10;