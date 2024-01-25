-- models/model_transactions.sql
select 1 as id, 10 as amount, '1970-01-01'::date as transaction_date
union all
select 2 as id, 10 as amount, '1970-01-02'::date as transaction_date
