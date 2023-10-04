WITH max_id AS (
    SELECT COALESCE(MAX(customer_order_id), 0) + 1 AS new_id FROM _customer_order
)

INSERT INTO _customer_order(customer_order_id, employee_id, cost, order_date, order_time)
SELECT new_id, 1, '$0.00', CURRENT_DATE, CURRENT_TIMESTAMP::timestamp(0) FROM max_id;

SELECT * from _customer_order
ORDER BY customer_order_id DESC
LIMIT 10;