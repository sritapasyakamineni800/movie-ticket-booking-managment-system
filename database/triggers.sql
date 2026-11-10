use movie;
DELIMITER //

CREATE TRIGGER before_movie_show_insert

BEFORE INSERT ON movie_show

FOR EACH ROW

BEGIN

    IF NEW.ticket_price <= 0 THEN

        SIGNAL SQLSTATE '45000'

        SET MESSAGE_TEXT =
        'Ticket price must be greater than zero';

    END IF;

END //

DELIMITER ;


DELIMITER //

CREATE TRIGGER before_booking_insert

BEFORE INSERT ON booking

FOR EACH ROW

BEGIN

    IF NEW.total_amount < 0 THEN

        SIGNAL SQLSTATE '45000'

        SET MESSAGE_TEXT =
        'Booking amount cannot be negative';

    END IF;

END //

DELIMITER ;
