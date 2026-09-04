test fournit par dbt pour vérifier la validité des données dans les modèles.

4 types de tests génériques sont fournis par dbt :
- not_null : vérifie que les colonnes ne contiennent pas de valeurs nulles.
- unique : vérifie que les colonnes contiennent des valeurs uniques.
- accepted_values : vérifie que les colonnes ne contiennent que des valeurs acceptées.
- relationships : vérifie que les relations entre les tables sont respectées.

On les déclares dans le fichier yml du modèle

exemple:
version: 2

models:
  - name: stg_customers
    columns:
      - name: customer_id
        data_tests:
          - unique
          - not_null
      - name: email
        data_tests:
          - not_null

  - name: stg_orders
    columns:
      - name: order_id
        data_tests:
          - unique
          - not_null
      - name: customer_id
        data_tests:
          - not_null
          - relationships:
              arguments:
                to: ref('stg_customers')
                field: customer_id
      - name: statut
        data_tests:
          - accepted_values:
              arguments:
                values: ['completed', 'pending']