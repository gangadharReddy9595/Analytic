SELECT
    order_id,
    customer_id,
    order_amount,
    {{ calculate_tax('order_amount') }} AS tax_amount
FROM {{ source('raw', 'orders') }}