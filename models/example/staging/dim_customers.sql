{{ config(materialized='view') }}

select * from {{ ref('stg_customers') }}

dbt run --select stg_customers+


{{ config(materialized='table') }}

select * from {{ ref('stg_customers') }}

dbt run --select stg_customers+