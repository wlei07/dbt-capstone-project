{{
    config(
        materialized='ephemeral'
    )
}}
with src_airport_comments as (select id      as comment_id,
                                     airport_ident,
                                     "DATE"  as comment_timestamp,
                                     member_nickname,
                                     subject as comment_subject,
                                     body    as comment_body
                              from {{ source('airstats', 'comments') }})
select comment_id, airport_ident, comment_timestamp, member_nickname, comment_subject, comment_body
from src_airport_comments
