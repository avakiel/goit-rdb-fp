UPDATE infectious_cases_normalized
SET
    year_start_date = STR_TO_DATE(CONCAT(year, '-01-01'), '%Y-%m-%d'),
    current_date_value = CURDATE(),
    year_difference = TIMESTAMPDIFF(
        YEAR,
        STR_TO_DATE(CONCAT(year, '-01-01'), '%Y-%m-%d'),
        CURDATE()
    )
WHERE case_id > 0;