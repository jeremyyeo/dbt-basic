-- tests/generic/my_custom_test.sql
{%- test my_custom_test(model, column_name, description) -%}

{{ config(meta = {'whats_this_for': description}) }}

select 1 as c

{%- endtest -%}
