with stg_order_item as (

    select *
    from {{ ref('stg_order_item') }}

)

select id
    , order_id
    , product_id
    , quantity
    , unit_price
    , amount
from stg_order_item