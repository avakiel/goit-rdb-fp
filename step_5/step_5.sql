DELIMITER //

CREATE FUNCTION get_year_difference(input_year INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN TIMESTAMPDIFF(
        YEAR,
        STR_TO_DATE(CONCAT(input_year, '-01-01'), '%Y-%m-%d'),
        CURDATE()
    );
END //

DELIMITER ;