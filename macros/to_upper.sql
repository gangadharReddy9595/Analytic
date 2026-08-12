    SELECT
        c.customer_id,
        {{ to_upper('c.customer_name') }} AS customer_name_upper,
        o.order_id,
        o.order_amount,
        {{ calculate_tax('o.order_amount') }} AS tax_amount
    FROM {{ source('raw', 'customers') }} c
    LEFT JOIN {{ source('raw', 'orders') }} o
        ON c.customer_id = o.customer_id