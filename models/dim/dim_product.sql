with cte_product as (

    select *
    from {{ ref('stg_product') }}

)

select id
    , name
    , category
    , price
from cte_product