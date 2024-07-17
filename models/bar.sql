
{%- set q -%}
select s_nationkey from raw_tpch.tpch_sf1000.supplier
{%- endset -%}

{%- set results = run_query(q) -%}

{%- if execute -%}
    {% set nations = results.columns[0].values() %}
{%- else -%}
    {% set nations = [] %}
{%- endif -%}

{%- for nation in nations -%}
select {{ nation }} as id
    {% if not loop.last -%} 
    union all 
    {% endif -%}
{%- endfor -%}
   union all 
select id from {{ ref('foo') }}
