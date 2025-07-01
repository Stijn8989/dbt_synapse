with cte_customer as (

    select *
    from {{ ref('his_customer') }}

),

cte_lifetime_value_per_customer as (

    select *
    from {{ ref('int_lifetime_value_per_customer') }}

)

select c.id
    , c.first_name
    , c.last_name
    , c.email
    , lv.amount as lifetime_amount
from cte_customer as c 
inner join cte_lifetime_value_per_customer as lv 
    on c.id = lv.customer_id