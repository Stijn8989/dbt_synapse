select order_item_id as id
    , order_id
    , product_id
    , quantity
    , unit_price
    , quantity * unit_price as amount
from {{ source('src', 'src_order_item') }}