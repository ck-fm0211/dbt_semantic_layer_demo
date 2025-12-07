with order_items as (
    select * from {{ ref('stg_order_items') }}
)

select
    order_item_id,
    order_id,
    user_id,
    revenue,
    status,
    ordered_at
from order_items