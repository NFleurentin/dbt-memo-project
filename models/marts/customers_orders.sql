WITH
    customers AS (
        SELECT
            *
        FROM
            {{ref ('stg_customers')}}
    ),
    orders AS (
        SELECT
            *
        FROM
            {{ref ('stg_orders')}}
    ),
    joined AS (
        SELECT
            c.customer_id,
            c.first_name,
            c.last_name,
            COUNT(o.order_id) AS order_count,
            SUM(o.amount) AS total_amount
        FROM
            customers c
            LEFT JOIN orders o ON c.customer_id = o.customer_id
        GROUP BY
            c.customer_id,
            c.first_name,
            c.last_name
    )
SELECT
    *
FROM
    joined