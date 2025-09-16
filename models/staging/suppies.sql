{{ config(materialized='table')}}

WITH tb1 as(
    select id,
    name,
    cost

from {{source('datafeed_shared_schema','suppies')}})
select * from tb1
