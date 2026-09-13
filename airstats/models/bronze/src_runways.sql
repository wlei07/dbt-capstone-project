with src_runways as (select id        as runway_id,
                            airport_ident,
                            length_ft as runway_length_ft,
                            width_ft  as runway_width_ft,
                            surface   as runway_surface,
                            lighted   as runway_lighted,
                            closed    as runway_closed
                     from {{ source('airstats', 'runways') }})
select runway_id, airport_ident, runway_length_ft, runway_width_ft, runway_surface, runway_lighted, runway_closed
from src_runways
