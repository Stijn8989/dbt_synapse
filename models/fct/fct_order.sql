with cte_order as (

    select *
    from {{ ref('his_order') }}
)

select id
    , customer_id
    , order_date
    , status
from cte_order