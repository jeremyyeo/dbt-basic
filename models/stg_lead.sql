{% set v = salesforce_formula_utils.sfdc_formula_view(source_table='lead', full_statement_version=true) %}
{% do log(v) %}

select 1 id
