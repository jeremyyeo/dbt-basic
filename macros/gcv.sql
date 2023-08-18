{% macro get_column_values(table, column, order_by='count(*) desc', max_records=none, default=none, where=none) -%}
    {%- if not execute -%}
        {% set default = [] if not default %}
        {{ return(default) }}
    {% endif %}

    {%- set target_relation = table -%}

    {# adapter.load_relation is a convenience wrapper to avoid building a Relation when we already have one #}
    {% set relation_exists = (load_relation(target_relation)) is not none %}

    {%- call statement('get_column_values', fetch_result=true) %}

        {%- if not relation_exists and default is none -%}

          {{ exceptions.raise_compiler_error("In get_column_values(): relation " ~ target_relation ~ " does not exist and no default value was provided.") }}

        {%- elif not relation_exists and default is not none -%}

          {{ log("Relation " ~ target_relation ~ " does not exist. Returning the default value: " ~ default) }}

          {{ return(default) }}

        {%- else -%}


            select
                {{ column }} as value

            from {{ target_relation }}

            {% if where is not none %}
            where {{ where }}
            {% endif %}

            group by {{ column }}
            order by {{ order_by }}

            {% if max_records is not none %}
            limit {{ max_records }}
            {% endif %}

        {% endif %}

    {%- endcall -%}

    {%- set value_list = load_result('get_column_values') -%}

    {%- if value_list and value_list['data'] -%}
        {%- set values = value_list['data'] | map(attribute=0) | list %}
        {{ return(values) }}
    {%- else -%}
        {{ return(default) }}
    {%- endif -%}

{%- endmacro %}
