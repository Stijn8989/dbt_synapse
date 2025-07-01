{{
    config(
        materialized='incremental',
        unique_key='id',
        incremental_strategy='delete+insert'
    )
}}

with cte_order_item as (

    select *
    from {{ ref('stg_order_item') }}

)

select id
    , order_id
    , product_id
    , quantity
    , unit_price
    , amount
from cte_order_item