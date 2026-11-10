use movie;
DELIMITER //

CREATE FUNCTION CalculateBookingAmount(
    p_ticket_price DECIMAL(10,2),
    p_quantity INT
)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN

    RETURN p_ticket_price * p_quantity;

END //

DELIMITER ;
SELECT CalculateBookingAmount(250, 3);

DELIMITER //

CREATE FUNCTION GetRatingCategory(
    p_rating DECIMAL(3,1)
)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN

    DECLARE result VARCHAR(20);

    IF p_rating >= 4.5 THEN
        SET result = 'Excellent';

    ELSEIF p_rating >= 4.0 THEN
        SET result = 'Good';

    ELSE
        SET result = 'Average';

    END IF;

    RETURN result;

END //

DELIMITER ;
SELECT GetRatingCategory(4.7);
