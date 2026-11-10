use movie;
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Movie (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    genre VARCHAR(50),
    language VARCHAR(50),
    duration_minutes INT,
    release_date DATE,
    rating DECIMAL(3,1),
    status VARCHAR(20) DEFAULT 'Running'
);
CREATE TABLE Theater (
    theater_id INT PRIMARY KEY AUTO_INCREMENT,
    theater_name VARCHAR(100) NOT NULL,
    location VARCHAR(150) NOT NULL
);
CREATE TABLE Screen (
    screen_id INT PRIMARY KEY AUTO_INCREMENT,
    theater_id INT NOT NULL,
    screen_name VARCHAR(50) NOT NULL,
    total_seats INT NOT NULL,

    FOREIGN KEY (theater_id)
        REFERENCES Theater(theater_id)
);
CREATE TABLE Seat (
    seat_id INT PRIMARY KEY AUTO_INCREMENT,
    screen_id INT NOT NULL,
    seat_number VARCHAR(10) NOT NULL,
    seat_type VARCHAR(20) DEFAULT 'Regular',

    FOREIGN KEY (screen_id)
        REFERENCES Screen(screen_id),

    UNIQUE(screen_id, seat_number)
);
CREATE TABLE Movie_Show (
    show_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT NOT NULL,
    screen_id INT NOT NULL,
    show_date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    ticket_price DECIMAL(10,2) NOT NULL,

  CONSTRAINT fk_show_movie
        FOREIGN KEY (movie_id)
        REFERENCES movies(movie_id),

    CONSTRAINT fk_show_screen
        FOREIGN KEY (screen_id)
        REFERENCES screens(screen_id),

    CONSTRAINT chk_ticket_price
        CHECK (ticket_price > 0),

    CONSTRAINT chk_show_time
        CHECK (end_time > start_time)
);
CREATE TABLE Booking (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    show_id INT NOT NULL,
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10,2) NOT NULL,
    booking_status VARCHAR(20) DEFAULT 'Confirmed',

    FOREIGN KEY (customer_id)
        REFERENCES Customer(customer_id),

    FOREIGN KEY (show_id)
        REFERENCES Movie_Show(show_id)
);
CREATE TABLE Booking_Seat (
    booking_seat_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT NOT NULL,
    seat_id INT NOT NULL,

    FOREIGN KEY (booking_id)
        REFERENCES Booking(booking_id),

    FOREIGN KEY (seat_id)
        REFERENCES Seat(seat_id),

    UNIQUE(booking_id, seat_id)
);
CREATE TABLE Payment (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT NOT NULL,
    payment_method VARCHAR(30) NOT NULL,
    payment_amount DECIMAL(10,2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_status VARCHAR(20) DEFAULT 'Success',

    FOREIGN KEY (booking_id)
        REFERENCES Booking(booking_id)
);
