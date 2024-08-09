{% set V_BATCH_ID = 123 %}

select 1 as id,
       {{V_BATCH_ID}} as batch_id
  from dual
