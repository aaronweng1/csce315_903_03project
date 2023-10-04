WITH max_id AS (
    SELECT COALESCE(MAX(employee_id), 0) + 1 AS new_id FROM _employee
)

INSERT INTO _employee(employee_id, manager_id, name, hire_date, salary, category)
SELECT new_id, 1, 'Bruce Wayne', CURRENT_DATE, '$0.00', 'Cashier' FROM max_id;

SELECT * from _employee;
