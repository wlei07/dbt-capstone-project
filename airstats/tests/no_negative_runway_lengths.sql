select * from {{ ref('silver_runways') }} where runway_length_ft < 0
