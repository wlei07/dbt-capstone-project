with la_heliport_closed as (
    select * from {{ ref('scd_silver_airports') }} where airport_ident = '01CN'
)
select * from la_heliport_closed
