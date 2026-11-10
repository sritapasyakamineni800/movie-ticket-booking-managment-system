# ER Diagram


CUSTOMERS
    |
    | 1:N
    |
    v
BOOKINGS
    |
    | 1:N
    |
    v
BOOKING_SEATS
    |
    | N:1
    |
    v
SEATS
    |
    | N:1
    |
    v
SCREENS
    |
    | N:1
    |
    v
THEATERS


MOVIES
    |
    | 1:N
    |
    v
MOVIE_SHOWS
    |
    | N:1
    |
    v
SCREENS


BOOKINGS
    |
    | 1:1
    |
    v
PAYMENTS


CUSTOMERS
    |
    | 1:N
    |
    v
REVIEWS
    |
    | N:1
    |
    v
MOVIES