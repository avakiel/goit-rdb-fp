SELECT
    year,
    STR_TO_DATE(CONCAT(year, '-01-01'), '%Y-%m-%d') AS year_start_date,
    CURDATE() AS current_date_value,
    get_year_difference(year) AS year_difference
FROM infectious_cases_normalized
LIMIT 20;