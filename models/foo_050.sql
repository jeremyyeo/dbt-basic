
{{ config(materialized = 'table') }}

select 
{% for n in range(100_000) -%}
    1 as col_{{ n }} {%- if not loop.last -%} , {%- endif -%}
{%- endfor %}
