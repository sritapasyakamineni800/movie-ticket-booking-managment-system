use movie;
SELECT
    movie_id,
    title,
    genre,
    language,
    rating
FROM movie;

SELECT
    title,
    genre,
    rating
FROM movie
WHERE status = 'Running';

SELECT DISTINCT language
FROM movie;

SELECT
    title,
    rating
FROM movie
ORDER BY rating DESC;

SELECT
    title,
    rating
FROM movie
ORDER BY rating DESC
LIMIT 5;

SELECT
    title,
    rating
FROM movie
ORDER BY rating DESC
LIMIT 5 OFFSET 5;


SELECT
    title,
    genre
FROM movie
WHERE title LIKE '%Push%';

SELECT
    title,
    rating
FROM movie
WHERE rating BETWEEN 4.5 AND 5.0;


SELECT
    title,
    language
FROM movie
WHERE language NOT IN ('Hindi', 'Tamil');

SELECT
    title,
    rating
FROM movie
WHERE genre = 'Action'
AND rating > 4.5;

SELECT
    title,
    language
FROM movie
WHERE language = 'Telugu'
OR language = 'English';

SELECT
    title,
    status
FROM movie
WHERE NOT status = 'Completed';

SELECT COUNT(*) AS total_movie
FROM movie;

SELECT
    AVG(rating) AS average_rating
FROM movie;

SELECT
    MAX(rating) AS highest_rating
FROM movie;

SELECT
    MIN(rating) AS lowest_rating
FROM movie;

SELECT
    language,
    COUNT(*) AS movie_count
FROM movie
GROUP BY language;

SELECT
    language,
    COUNT(*) AS movie_count
FROM movie
GROUP BY language
HAVING COUNT(*) >= 2;

SELECT
    m.title,
    ms.show_date,
    ms.start_time,
    ms.ticket_price
FROM movie AS m
INNER JOIN movie_show AS ms
    ON m.movie_id = ms.movie_id;
    
    SELECT
    t.theater_name,
    t.location,
    s.screen_name,
    s.total_seats
FROM theater t
INNER JOIN screen s
ON t.theater_id = s.theater_id;

SELECT
    c.customer_id,
    b.booking_id
FROM customer c
LEFT JOIN booking b
ON c.customer_id = b.customer_id;

SELECT
    c.customer_id,
    b.booking_id
FROM customer c
RIGHT JOIN booking b
ON c.customer_id = b.customer_id;

SELECT
    b.booking_id,
    c.customer_id,
    m.title,
    t.theater_name,
    ms.show_date,
    ms.start_time,
    b.total_amount,
    b.booking_status
FROM booking b
JOIN customer c
ON b.customer_id = c.customer_id
JOIN movie_show ms
ON b.show_id = ms.show_id
JOIN movie m
ON ms.movie_id = m.movie_id
JOIN screen s
ON ms.screen_id = s.screen_id
JOIN theater t
ON s.theater_id = t.theater_id;

SELECT
    SUM(payment_amount) AS total_revenue
FROM payment
WHERE payment_status = 'Success';

SELECT
    c.customer_id,
    COUNT(b.booking_id) AS booking_count
FROM customer c
LEFT JOIN booking b
ON c.customer_id = b.customer_id
GROUP BY c.customer_id ;

SELECT
    title,
    rating,

    CASE
        WHEN rating >= 4.5 THEN 'Excellent'
        WHEN rating >= 4.0 THEN 'Good'
        ELSE 'Average'
    END AS rating_category

FROM movie;

SELECT
    name,
    COALESCE(city, 'Unknown') AS customer_city
FROM customer;

SELECT
    title,
    rating
FROM movie
WHERE rating >
(
    SELECT AVG(rating)
    FROM movie
);


SELECT
    customer_name
FROM customers c
WHERE EXISTS
(
    SELECT 1
    FROM bookings b
    WHERE b.customer_id = c.customer_id
);



SELECT
    name
FROM customer c
WHERE NOT EXISTS
(
    SELECT 1
    FROM booking b
    WHERE b.customer_id = c.customer_id
);

SELECT name AS person_name
FROM customer
WHERE city = 'Hyderabad'

UNION

SELECT name
FROM customer
WHERE city = 'Bangalore';


SELECT name AS person_name
FROM customer
WHERE gender = 'Female'

UNION ALL

SELECT name
FROM customer
WHERE gender = 'Male';

SELECT
    MAX(rating) AS second_highest_rating
FROM movie
WHERE rating <
(
    SELECT MAX(rating)
    FROM movie
);

SELECT
    c.name,
    SUM(b.total_amount) AS total_spent
FROM customer c
JOIN booking b
ON c.customer_id = b.customer_id
WHERE b.booking_status = 'Confirmed'
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 5;

SELECT
    booking_id,
    customer_id,
    total_amount
FROM booking
WHERE booking_status = 'Pending';

SELECT
    booking_id,
    customer_id,
    total_amount
FROM booking
WHERE booking_status = 'Cancelled';

SELECT
    payment_status,
    COUNT(*) AS payment_count,
    SUM(payment_amount) AS total_amount
FROM payment
GROUP BY payment_status;


SELECT
    ms.show_id,
    m.title,
    ms.ticket_price
FROM movie_show AS ms
JOIN movie AS m
    ON ms.movie_id = m.movie_id
WHERE ms.ticket_price = (
    SELECT MAX(ticket_price)
    FROM movie_show
);

SELECT
    m.title
FROM movie AS m
LEFT JOIN review AS r
    ON m.movie_id = r.movie_id
WHERE r.review_id IS NULL;

SELECT
    c.name,
    p.payment_method,
    p.payment_amount,
    p.payment_status
FROM customer c
JOIN booking b
ON c.customer_id = b.customer_id
JOIN payment p
ON b.booking_id = p.booking_id;

SELECT
    m.title,
    COUNT(b.booking_id) AS total_bookings
FROM movie m
JOIN movie_show ms
ON m.movie_id = ms.movie_id
JOIN booking b
ON ms.show_id = b.show_id
GROUP BY m.movie_id, m.title
ORDER BY total_bookings DESC;

SELECT
    t.theater_name,
    SUM(b.total_amount) AS revenue
FROM theater t
JOIN screen s
ON t.theater_id = s.theater_id
JOIN movie_show ms
ON s.screen_id = ms.screen_id
JOIN booking b
ON ms.show_id = b.show_id
WHERE b.booking_status = 'Confirmed'
GROUP BY t.theater_id, t.theater_name
ORDER BY revenue DESC;

SELECT
    language,
    COUNT(*) AS total_movies
FROM movie
GROUP BY language
ORDER BY total_movies DESC;

SELECT
    m.title,
    ms.show_date,
    ms.start_time,
    ms.ticket_price
FROM movie_show ms
JOIN movie m
ON ms.movie_id = m.movie_id
WHERE ms.show_date = '2026-10-01';

SELECT
    booking_id,
    customer_id,
    total_amount
FROM booking
WHERE total_amount > 500;

SELECT
    payment_id,
    booking_id,
    payment_amount
FROM payment
WHERE payment_method = 'UPI';

SELECT
    title,
    duration_minutes
FROM movie
WHERE duration_minutes BETWEEN 150 AND 200;








