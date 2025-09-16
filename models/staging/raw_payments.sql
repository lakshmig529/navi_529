{{ config(materialized='view') }}

WITH tb1 AS (
    SELECT payment_method
    FROM {{ source('datafeed_shared_schema', 'raw_payments') }}
)

SELECT * FROM tb1;
