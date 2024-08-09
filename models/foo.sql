{% set V_BATCH_ID = 123 %}

select 1 as id,
       {{V_BATCH_ID}}::NUMBER(38,0) as batch_id
  from dual
