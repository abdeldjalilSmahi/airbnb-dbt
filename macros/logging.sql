{% macro learn_logging() %}
  {{ log("call your brother", info=True) }}
{% endmacro %}