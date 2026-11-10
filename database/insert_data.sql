use movie;
INSERT INTO Customer
(name, email, phone)
VALUES
('Sri Tapasya', 'sri@gmail.com', '9876543210'),
('Rahul Sharma', 'rahul@gmail.com', '9876543211'),
('Priya Reddy', 'priya@gmail.com', '9876543212'),
('Ananya Rao', 'ananya@gmail.com', '9876543213'),
('Arjun Kumar', 'arjun@gmail.com', '9876543214');


INSERT INTO Theater
(theater_name, location)
VALUES
('PVR Cinemas', 'Hyderabad'),
('INOX', 'Banjara Hills'),
('AMB Cinemas', 'Gachibowli');

INSERT INTO Screen
(theater_id, screen_name, total_seats)
VALUES
(1, 'Screen 1', 100),
(1, 'Screen 2', 80),
(2, 'Screen 1', 120),
(2, 'Screen 2', 100),
(3, 'Screen 1', 150);

INSERT INTO Seat
(screen_id, seat_number, seat_type)
VALUES
(1, 'A1', 'Regular'),
(1, 'A2', 'Regular'),
(1, 'A3', 'Regular'),
(1, 'A4', 'Regular'),
(1, 'A5', 'Premium'),

(2, 'A1', 'Regular'),
(2, 'A2', 'Regular'),
(2, 'A3', 'Premium'),

(3, 'A1', 'Regular'),
(3, 'A2', 'Regular'),
(3, 'A3', 'Premium');

INSERT INTO movie_shows
(movie_id, screen_id, show_date, start_time, end_time, ticket_price)
VALUES
(1, 1, '2026-10-01', '10:00:00', '13:20:00', 250),
(1, 1, '2026-10-01', '18:00:00', '21:20:00', 300),
(2, 2, '2026-10-01', '14:00:00', '17:00:00', 280),
(2, 3, '2026-10-02', '19:00:00', '22:00:00', 350),
(3, 4, '2026-10-02', '10:00:00', '13:07:00', 220),
(3, 5, '2026-10-02', '18:00:00', '21:07:00', 300),
(4, 6, '2026-10-03', '20:00:00', '22:28:00', 350),
(5, 7, '2026-10-03', '17:00:00', '19:49:00', 400),
(8, 8, '2026-10-04', '19:00:00', '21:48:00', 300),
(9, 9, '2026-10-04', '18:30:00', '21:14:00', 280);

INSERT INTO Booking
(customer_id, show_id, total_amount, booking_status)
VALUES
(1, 1, 500.00, 'Confirmed'),

(2, 2, 300.00, 'Confirmed'),

(3, 3, 560.00, 'Confirmed');

INSERT INTO Booking_Seat
(booking_id, seat_id)
VALUES
(1, 1),
(1, 2),

(2, 6),

(3, 9),
(3, 10);

INSERT INTO Payment
(booking_id, payment_method, payment_amount, payment_status)
VALUES
(1, 'UPI', 500.00, 'Success'),

(2, 'Credit Card', 300.00, 'Success'),

(3, 'UPI', 560.00, 'Success');