{{config (static_analysis = "baseline")}}
WITH
    source AS (
        SELECT
            *
        FROM
            read_csv({{source ('raw', 'orders')}})
    ),
    renamed AS (
        SELECT
            id AS order_id,
            client_id AS customer_id,
            montant AS amount,
            statut AS status,
            date AS order_date
        FROM
            source
    )
SELECT
    *
FROM
    renamed