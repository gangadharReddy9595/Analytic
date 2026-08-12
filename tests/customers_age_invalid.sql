SELECT
    customer_id,
    customer_name,
    age
FROM {{ source('raw', 'customers') }}
WHERE age < 35 