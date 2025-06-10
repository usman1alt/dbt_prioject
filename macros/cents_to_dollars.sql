{%-macro cents_to_dollars(column_name, decimal_place=1)-%}
round( 1 * {{column_name}} / 100, {{decimal_place}})
{%-endmacro-%}