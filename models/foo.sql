{{ 
    dbt_utils.date_spine(
        datepart="day",
        start_date="'1970-01-01'::date",
        end_date="'1971-01-01'::date"
   )
}}
