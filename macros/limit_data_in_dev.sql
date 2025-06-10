{%macro limit_data_in_dev(column_name, date_add=3)%}
{% if target.name == 'dev'%}
where {{column_name}} >= dateadd('day', {{date_add}}, current_timestamp)
{%endif%}
{%endmacro%}