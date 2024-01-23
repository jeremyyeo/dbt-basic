
{{ config(materialized = 'table') }}

{% set results = run_query("select * from development.dbt_jyeo.my_test_table limit 5000000;") %}

{% if execute %}
    {% set results_list = results.columns[0].values() | length %}
    {% do log('>>>> Num rows is: ' ~ results_list, True) %}
{% endif %}

select 1 id
