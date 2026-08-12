select customer_id, customer_name, city, age
from {{ source('raw', 'customers') }}

dbt run --select stg_customers+