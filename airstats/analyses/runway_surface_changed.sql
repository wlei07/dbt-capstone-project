with run_way_surface_changed as (
    select * from {{ ref('scd_silver_runways') }} where runway_id = '265047'
)
select * from run_way_surface_changed
