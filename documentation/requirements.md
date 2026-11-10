# Movie Ticket Booking Management System
## Requirements Document

---

## 1. Project Title

**Movie Ticket Booking Management System**

---

## 2. Project Objective

The objective of this project is to develop a normalized MySQL database for managing movie ticket bookings.

The system stores and manages information about:

- Customers
- Movies
- Theaters
- Screens
- Seats
- Movie shows
- Bookings
- Booking seats
- Payments
- Reviews

The database should support movie searching, show management, customer bookings, seat booking, payment tracking, reviews, and business reports.

---

## 3. Real-World Problem

Managing movie ticket bookings manually can cause several problems, such as:

- Duplicate booking records
- Difficulty managing movie shows
- Difficulty tracking available seats
- Incorrect payment records
- Difficulty finding customer booking history
- Difficulty generating revenue reports
- Data duplication
- Difficulty maintaining relationships between movies, theaters, screens, and bookings

The proposed database system solves these problems by storing information in related and normalized tables.

---

## 4. Scope of the Project

The system will provide database support for:

1. Customer management
2. Movie management
3. Theater management
4. Screen management
5. Seat management
6. Movie show management
7. Ticket booking
8. Seat allocation
9. Payment management
10. Movie reviews
11. Business reports
12. Database views
13. Stored procedures
14. Stored functions
15. Triggers
16. Transactions
17. Indexing and query optimization

---

## 5. Users and Roles

### 5.1 Customer

A customer can:

- View movies
- View movie shows
- Select a theater and screen
- Select seats
- Make bookings
- Make payments
- View booking details
- Submit movie reviews

### 5.2 Administrator

An administrator can manage:

- Movies
- Theaters
- Screens
- Seats
- Movie shows
- Bookings
- Payments
- Customer information
- Reviews
- Reports

---

## 6. Main Modules

### 6.1 Customer Management

Stores customer information such as:

- Customer ID
- Customer name
- Email
- Phone
- Other required customer details

---

### 6.2 Movie Management

Stores movie information such as:

- Movie ID
- Movie title
- Genre
- Language
- Rating
- Movie status

---

### 6.3 Theater Management

Stores theater information and identifies the theaters where movies are shown.

---

### 6.4 Screen Management

Stores screens belonging to theaters.

Each theater can have multiple screens.

---

### 6.5 Seat Management

Stores seats available in each screen.

Seats are associated with a particular screen.

---

### 6.6 Movie Show Management

Stores information about movie shows, including:

- Show ID
- Movie
- Screen
- Show date
- Start time
- End time
- Ticket price

---

### 6.7 Booking Management

Stores customer booking information.

A booking contains information such as:

- Booking ID
- Customer
- Movie show
- Total amount
- Booking status

---

### 6.8 Booking Seat Management

The booking-seat relationship is maintained through a junction table.

This allows one booking to contain multiple seats.

---

### 6.9 Payment Management

Stores payment information such as:

- Payment ID
- Booking ID
- Payment method
- Payment amount
- Payment date
- Payment status

---

### 6.10 Review Management

Customers can submit reviews for movies.

Reviews contain information such as:

- Review ID
- Customer
- Movie
- Rating
- Review text
- Review date

---

## 7. Database Requirements

The database should:

- Use MySQL 8+
- Follow normalization principles
- Use meaningful table and column names
- Define primary keys
- Define foreign keys
- Use appropriate data types
- Use NOT NULL where required
- Use UNIQUE constraints where required
- Use DEFAULT values where appropriate
- Use CHECK constraints where appropriate
- Maintain relationships between tables
- Avoid unnecessary duplicate data

---

## 8. Database Tables

The system contains the following major tables:

1. `customer`
2. `movie`
3. `theater`
4. `screen`
5. `seat`
6. `movie_show`
7. `booking`
8. `booking_seat`
9. `payment`
10. `review`

> Note: The actual table names in the implemented database should be used consistently in all SQL scripts.

---

## 9. Relationships

### 9.1 Customer to Booking

One customer can make many bookings.

**Relationship: 1:N**

```text
Customer
   |
   | 1
   |
   | N
Booking