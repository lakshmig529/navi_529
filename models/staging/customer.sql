{{ config(materialized='table')}}
    WITH tb1 as(
    SELECT
    id ,
    first_name,
    last_name
    from {{source('datafeed_shared_schema','customer')}})
    select * from tb1

