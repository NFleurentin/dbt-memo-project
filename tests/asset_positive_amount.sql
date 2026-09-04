{{
    config (severity = 'error', store_failures = TRUE)
}}
SELEcT
    order_id,
    amount
FROM
    {{ref ('stg_orders')}}
WHERE
    amount <= 0