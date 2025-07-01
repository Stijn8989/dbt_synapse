select product_id as id
    , product_name as name 
    , category 
    , price 
from {{ source('src', 'src_product') }}