{% macro learn_variable() %}
  {% set my_name = "Jalil" %}
  {{ log("hello jinja user " ~my_name , info=True) }}
  {{ log("hello dbt user " ~var('user_name'), info=True) }}

{% endmacro %}