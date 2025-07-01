with cte_order_item as (

    select *
    from {{ ref('his_order_item') }}

)

select id
    , order_id
    , product_id
    , quantity
    , unit_price
    , amount
from cte_order_item