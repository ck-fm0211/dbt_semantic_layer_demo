with source as (
    select * from {{ source('thelook_ecommerce', 'order_items') }}
)

select
    id as order_item_id,
    order_id,
    user_id,
    sale_price as revenue, -- これを売上として扱います
    status,
    created_at as ordered_at
from source
where status not in ('Cancelled', 'Returned') -- キャンセル・返品を除外