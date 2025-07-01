with stg_order as (

    select *
    from {{ ref('stg_order') }}

),

stg_order_item as (


    select *
    from {{ ref('stg_order_item') }}

),

amount_per_customer_order as (

    select o.customer_id
        , sum(oi.amount) as amount
    from stg_order as o
    inner join stg_order_item as oi 
        on o.id = oi.order_id
    where o.status = 'completed'
    group by o.customer_id

)

select *
from amount_per_customer_order