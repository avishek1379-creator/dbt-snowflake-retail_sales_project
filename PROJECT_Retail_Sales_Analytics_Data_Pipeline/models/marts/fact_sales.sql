SELECT
    oi.order_item_id,
    o.order_id,
    o.customer_id,
    oi.product_id,
    oi.quantity,
    oi.unit_price,
    oi.quantity * oi.unit_price AS total_amount,
    o.order_date
FROM {{ ref('stg_order_items') }} oi
JOIN {{ ref('stg_orders') }} o
  ON oi.order_id = o.order_id
