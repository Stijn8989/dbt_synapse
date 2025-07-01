{{
    config(
        materialized='incremental',
        unique_key='id',
        incremental_strategy='delete+insert'
    )
}}

with cte_order as (

    select *
    from {{ ref('stg_order') }}

)

select id
    , customer_id
    , order_date
    , status
from cte_order