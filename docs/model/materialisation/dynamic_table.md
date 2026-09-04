identique à incremental mais c'est Snowflake qui gère automatiquement les mises à jour incrémentales

modele.yml:
{{ config(
    materialized='dynamic_table',
    snowflake_warehouse='dbt_wh',
    target_lag='1 hour'
) }}

SELECT ...

target_lag => fraicheur maximale qu'on accepte. '1 hour' veut dire 'ne jamais avoir plus de 1 heure de retard sur la source'. Snowflake gère automatiquement les mises à jour incrémentales pour respecter cette contrainte.
snowflake_warehouse => le warehouse Snowflake à utiliser poour executer le refresh