select * from {{ ref('silver_airports') }} where airport_ident is null
