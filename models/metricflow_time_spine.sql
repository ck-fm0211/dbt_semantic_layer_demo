{{ config(materialized='table') }}

with days as (
    -- 2019年から2030年までの日付を生成
    SELECT
        day as date_day
    FROM
        UNNEST(GENERATE_DATE_ARRAY(DATE('2019-01-01'), DATE('2030-01-01'), INTERVAL 1 DAY)) as day
)

select
    date_day
from days