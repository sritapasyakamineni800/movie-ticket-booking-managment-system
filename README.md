
# 🎬 Movie Ticket Booking Management System

## Project Description

The Movie Ticket Booking Management System is a MySQL database project designed to manage cinema operations.

It manages customers, movies, theaters, screens, seats, movie shows, bookings, payments and reviews.

## Features

- Customer management
- Movie management
- Theater management
- Screen management
- Seat management
- Movie show scheduling
- Ticket booking
- Payment management
- Movie reviews
- Revenue reports
- Customer booking reports

## Technologies

- MySQL 8+
- SQL
- MySQL Workbench
- VS Code
- Git
- GitHub

## Database Tables

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

## SQL Concepts Used

- CREATE DATABASE
- CREATE TABLE
- Primary Keys
- Foreign Keys
- UNIQUE
- NOT NULL
- DEFAULT
- CHECK
- INSERT
- SELECT
- WHERE
- DISTINCT
- ORDER BY
- LIMIT
- OFFSET
- LIKE
- BETWEEN
- IN
- NOT IN
- GROUP BY
- HAVING
- Aggregate Functions
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- Subqueries
- EXISTS
- NOT EXISTS
- CASE
- COALESCE
- UNION
- UNION ALL
- Views
- Stored Procedures
- Stored Functions
- Triggers
- Cursors
- Transactions
- COMMIT
- ROLLBACK
- SAVEPOINT
- Indexes
- EXPLAIN

## Installation

### Step 1

Install MySQL 8+.

### Step 2

Open MySQL Workbench or MySQL command line.

### Step 3

Run the SQL files in this order:

1. 01_create_database.sql
2. 02_create_tables.sql
3. 03_insert_data.sql
4. 04_queries.sql
5. 05_views.sql
6. 06_procedures.sql
7. 07_functions.sql
8. 08_triggers.sql
9. 09_indexes.sql

## Verify Database

Run:

SHOW TABLES;

## Verify Data

SELECT COUNT(*) FROM customers;

SELECT COUNT(*) FROM movies;

SELECT COUNT(*) FROM bookings;

SELECT COUNT(*) FROM payments;

## Example Query

SELECT
    c.customer_name,
    m.movie_title,
    b.total_amount
FROM bookings b
JOIN customers c
ON b.customer_id = c.customer_id
JOIN movie_shows ms
ON b.show_id = ms.show_id
JOIN movies m
ON ms.movie_id = m.movie_id;

## Future Enhancements

- Java backend
- Spring Boot
- React frontend
- Online payment gateway
- Login and authentication
- Real-time seat availability
- Email booking confirmation
- QR-code tickets
- Admin dashboard
- Online cancellation
- Movie recommendation system

