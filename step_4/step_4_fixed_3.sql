SELECT
    case_id,
    year,
    year_start_date,
    current_date_value,
    year_difference
FROM infectious_cases_normalized
LIMIT 20;