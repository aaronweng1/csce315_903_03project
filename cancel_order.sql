WITH max_id AS (
    SELECT COALESCE(MAX(customer_order_id), 0) AS new_id FROM _customer_order
)

DELETE FROM _customer_order
WHERE customer_order_id = (SELECT new_id FROM max_id);

select * from _customer_order
ORDER BY customer_order_id DESC
LIMIT 10;