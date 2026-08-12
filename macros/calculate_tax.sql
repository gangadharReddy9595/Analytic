
{% macro calculate_tax(amount) %}
    {{ amount }} * 0.18
{% endmacro %}


{% macro to_upper(column_name) %}
    UPPER({{ column_name }})
{% endmacro %}


