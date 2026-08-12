{{ config(materialized='incremental', unique_key='order_id') }}

select order_id, customer_id, order_amount, created_date
from {{ source('raw', 'orders') }}

{% if is_incremental() %}
where created_date > (select max(created_date) from {{ this }})
{% endif %}