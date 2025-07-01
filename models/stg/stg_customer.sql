select customer_id as id
    , first_name
    , last_name
    , email
--    , created_at <-- Deze kolom weggelaten omdat deze in het proces niet nodig is
from {{ source('src', 'src_customer') }}