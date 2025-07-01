with stg_customer as (

    select *
    from {{ ref('stg_customer') }}

),

int_lifetime_value_per_customer as (

    select *
    from {{ ref('int_lifetime_value_per_customer') }}

)

select c.id
    , c.first_name
    , c.last_name
    , c.email
    , lv.amount as lifetime_amount
from stg_customer as c 
inner join int_lifetime_value_per_customer as lv 
    on c.id = lv.customer_id