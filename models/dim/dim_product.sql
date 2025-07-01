with stg_product as (

    select *
    from {{ ref('stg_product') }}

)

select id
    , name
    , category
    , price
from stg_product