{{
    config(
        materialized='incremental',
        unique_key='id',
        incremental_strategy='delete+insert'
    )
}}

with cte_customer as (

    select *
    from {{ ref('stg_customer') }}

)

select id
    , first_name
    , last_name
    , email
from cte_customer