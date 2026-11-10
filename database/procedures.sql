use movie;

DELIMITER //

CREATE PROCEDURE GetMoviesByLanguage(
    IN p_language VARCHAR(50)
)
BEGIN
    SELECT
        movie_id,
          title,
        genre,
        language,
        rating
    FROM movie
    WHERE language = p_language;
END //

DELIMITER ;

CALL GetMoviesByLanguage('Telugu');
CALL GetMoviesByLanguage('English');


USE movie;

DELIMITER //

CREATE PROCEDURE GetCustomerBookings(
    IN p_customer_id INT
)
BEGIN
    SELECT
        b.booking_id,
        c.name,
        m.title,
        ms.show_date,
        ms.start_time,
        b.total_amount,
        b.booking_status
    FROM booking AS b
    JOIN customer AS c
        ON b.customer_id = c.customer_id
    JOIN movie_show AS ms
        ON b.show_id = ms.show_id
    JOIN movie AS m
        ON ms.movie_id = m.movie_id
    WHERE b.customer_id = p_customer_id;
END //

DELIMITER ;

DROP PROCEDURE IF EXISTS GetCustomerBookings;
CALL GetCustomerBookings(1);


DELIMITER //

CREATE PROCEDURE GetMoviesAboveRating(
    IN p_rating DECIMAL(3,1)
)
BEGIN

    SELECT
        title,
        genre,
        rating
    FROM movie
    WHERE rating > p_rating
    ORDER BY rating DESC;

END //

DELIMITER ;
CALL GetMoviesAboveRating(4.5);
