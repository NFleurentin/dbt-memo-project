{{config (static_analysis = "baseline")}}
WITH
    source AS (
        SELECT
            *
        FROM
            read_csv({{source ('raw', 'customers')}})
    ),
    renamed AS (
        SELECT
            id AS customer_id,
            prenom AS first_name,
            nom AS last_name,
            courriel AS email,
            date_creation AS created_at
        FROM
            source
    )
SELECT
    *
FROM
    renamed