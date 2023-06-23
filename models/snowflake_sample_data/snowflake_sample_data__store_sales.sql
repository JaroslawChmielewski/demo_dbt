with source_store_sales as (
    select * from {{ source('snowflake_trial111', 'STORE_SALES') }}
),

final as (
    select * from source_store_sales limit 1500
)

select * from final