with cte_order as (

    select *
    from {{ ref('stg_order') }}

),

cte_order_item as (


    select *
    from {{ ref('stg_order_item') }}

),

cte_amount_per_customer_order as (

    select o.customer_id
        , sum(oi.amount) as amount
    from cte_order as o
    inner join cte_order_item as oi 
        on o.id = oi.order_id
    where o.status = 'completed'
    group by o.customer_id

)

select *
from cte_amount_per_customer_order