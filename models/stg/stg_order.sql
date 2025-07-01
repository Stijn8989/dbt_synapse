select order_id as id
    , customer_id
    , order_date
    , status
from {{ source('src', 'src_order') }}