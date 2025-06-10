select
    {{dbt_utils.generate_surrogate_key(['user_id'])}} as customer_id,
    id as order_id,
    order_date,
    status

from {{source('jaffle_shop', 'orders')}}