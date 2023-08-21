{% set v = salesforce_formula_utils.sfdc_formula_view(source_table='contract', full_statement_version=true) %}
{% do log(v) %}

select 1 id
