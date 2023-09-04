{% set query %}
select distinct c from development.dbt_jyeo.this_is_fake
{% endset %}

{% set results = run_query(query) %}

{% if execute %}
{% set results_list = results.columns[0].values() %}
{% else %}
{% set results_list = [] %}
{% endif %}

select '{{ results_list[0] }}' as v
