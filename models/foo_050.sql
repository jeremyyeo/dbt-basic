
{{ config(materialized = 'table') }}

{% set results = run_query("select explode(sequence(DATE'1970-01-01', DATE'2020-01-01', INTERVAL 1 DAY)) as dates") %}

{% if execute %}
    {% set results_list = results.columns[0].values() %}
{% else %}
    {% set results_list = [] %}
{% endif %}

select 
{% for r in results_list -%}
    1 as col_{{ r.strftime('%Y%m%d') }} {%- if not loop.last -%} , {%- endif -%}
{%- endfor %}
