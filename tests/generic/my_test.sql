{% test my_test(model) -%}
  {{ config(start_date=modules.datetime.date(2024, 5, 1)) }}
  select '{{ config.get("start_date") }}' as c
{% endtest %}
