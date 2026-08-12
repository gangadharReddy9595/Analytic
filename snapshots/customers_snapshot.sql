{% snapshot customers_snapshot %}
{{
    config(
        target_schema='SNAPSHOTS',
        unique_key='customer_id',
        strategy='timestamp',
        updated_at='updated_date'
    )
}}
SELECT 
    customer_id,
    customer_name,
    city,
    age,
    updated_date
FROM {{ source('raw', 'customers') }}
{% endsnapshot %}

