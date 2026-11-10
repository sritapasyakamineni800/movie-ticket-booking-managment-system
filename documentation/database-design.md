# Database Design

## Database Name

movie_ticket_booking

## Tables

1. customers
2. movies
3. theaters
4. screens
5. seats
6. movie_shows
7. bookings
8. booking_seats
9. payments
10. reviews

## customers

Stores customer information.

Primary Key:
customer_id

Unique:
email
phone

## movies

Stores movie information.

Primary Key:
movie_id

## theaters

Stores theater information.

Primary Key:
theater_id

## screens

Stores cinema screen information.

Primary Key:
screen_id

Foreign Key:
theater_id

## seats

Stores seats belonging to screens.

Primary Key:
seat_id

Foreign Key:
screen_id

## movie_shows

Stores movie schedules.

Primary Key:
show_id

Foreign Keys:
movie_id
screen_id

## bookings

Stores customer bookings.

Primary Key:
booking_id

Foreign Keys:
customer_id
show_id

## booking_seats

Junction table connecting bookings and seats.

Primary Key:
booking_seat_id

Foreign Keys:
booking_id
seat_id

## payments

Stores payment information.

Primary Key:
payment_id

Foreign Key:
booking_id

## reviews

Stores customer movie reviews.

Primary Key:
review_id

Foreign Keys:
customer_id
movie_id