use movie;
CREATE OR REPLACE VIEW booking_details AS
SELECT
    b.booking_id,
    c. name,
    c.email,
    m. title,
    t.theater_name,
    s.screen_name,
    ms.show_date,
    ms.start_time,
    ms.ticket_price,
    b.total_amount,
    b.booking_status
FROM booking AS b
JOIN customer AS c
    ON b.customer_id = c.customer_id
JOIN movie_show AS ms
    ON b.show_id = ms.show_id
JOIN movie AS m
    ON ms.movie_id = m.movie_id
JOIN screen AS s
    ON ms.screen_id = s.screen_id
JOIN theater AS t
    ON s.theater_id = t.theater_id;
    
    SELECT
    booking_id,
     name,
     title,
    theater_name,
    screen_name,
    show_date,
    start_time,
    ticket_price,
    total_amount,
    booking_status
FROM booking_details;

CREATE OR REPLACE VIEW movie_show_details AS
SELECT
    ms.show_id,
    m.title,
    m.genre,
    m.language,
    t.theater_name,
    s.screen_name,
    ms.show_date,
    ms.start_time,
    ms.end_time,
    ms.ticket_price
FROM movie_show AS ms
JOIN movie AS m
    ON ms.movie_id = m.movie_id
JOIN screen AS s
    ON ms.screen_id = s.screen_id
JOIN theater AS t
    ON s.theater_id = t.theater_id;
    
    SELECT
    show_id,
       title,
    genre,
    language,
    theater_name,
    screen_name,
    show_date,
    start_time,
    end_time,
    ticket_price
FROM movie_show_details;

CREATE OR REPLACE VIEW customer_payment_details AS
SELECT
     name,
    m. title,
    p.payment_method,
    p.payment_amount,
    p.payment_status,
    p.payment_date
FROM payment AS p
JOIN booking AS b
    ON p.booking_id = b.booking_id
JOIN customer AS c
    ON b.customer_id = c.customer_id
JOIN movie_show AS ms
    ON b.show_id = ms.show_id
JOIN movie AS m
    ON ms.movie_id = m.movie_id;
    
    SELECT
     name,
     title,
    payment_method,
    payment_amount,
    payment_status,
    payment_date
FROM customer_payment_details;

SELECT *
FROM booking_details;