with silver_runways as (select runway_id,
                               airport_ident,
                               runway_length_ft,
                               runway_width_ft,
                               case
                                   when runway_surface is null or trim(runway_surface) = '' then '__UNKNOWN__'
                                   else runway_surface
                                   end as runway_surface,
                               runway_lighted,
                               runway_closed
                        from {{ ref('src_runways') }})
select runway_id, airport_ident, runway_length_ft, runway_width_ft, runway_surface, runway_lighted, runway_closed
from silver_runways
