    with 

source as (

    select * from {{ source('raw', 'customers') }}

),

renamed as (

    select
        customer_id,
        customer_name,
        city

    from source

)

select * from renamed