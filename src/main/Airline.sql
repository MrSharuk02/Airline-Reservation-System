-- Create the airline_reservation database
CREATE DATABASE airline_reservation;

-- Switch to using the created database
USE airline_reservation;

-- Create the table for domestic flights
CREATE TABLE domestic_flights (
    flight_id INT AUTO_INCREMENT PRIMARY KEY,
    source_city VARCHAR(50) NOT NULL,
    destination_city VARCHAR(50) NOT NULL,
    departure_time DATETIME NOT NULL,
    arrival_time DATETIME NOT NULL,
    economy_fare DECIMAL(10, 2) NOT NULL,
    business_fare DECIMAL(10, 2) NOT NULL,
    seats_available INT NOT NULL
);

-- Create the table for international flights
CREATE TABLE international_flights (
    flight_id INT AUTO_INCREMENT PRIMARY KEY,
    source_city VARCHAR(50) NOT NULL,
    destination_city VARCHAR(50) NOT NULL,
    departure_time DATETIME NOT NULL,
    arrival_time DATETIME NOT NULL,
    economy_fare DECIMAL(10, 2) NOT NULL,
    business_fare DECIMAL(10, 2) NOT NULL,
    seats_available INT NOT NULL
);

-- Create the bookings table
CREATE TABLE bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    flight_id INT NOT NULL,
    passenger_name VARCHAR(100) NOT NULL,
    seat_class VARCHAR(10) NOT NULL,
    num_passengers INT NOT NULL,
    booking_date DATETIME NOT NULL,
    is_international BOOLEAN NOT NULL DEFAULT FALSE,
    users VARCHAR(255) NOT NULL,
    arrival_time VARCHAR(255),
    departure_time VARCHAR(255)
);

-- Insert sample data for domestic flights
INSERT INTO domestic_flights (source_city, destination_city, departure_time, arrival_time, economy_fare, business_fare, seats_available)
VALUES
    ('Mumbai', 'Delhi', '2024-09-10 06:00:00', '2024-09-10 08:30:00', 5000.00, 12000.00, 20),
    ('Delhi', 'Mumbai', '2024-09-10 09:00:00', '2024-09-10 11:30:00', 5000.00, 12000.00, 25),
    ('Bengaluru', 'Chennai', '2024-09-10 07:15:00', '2024-09-10 08:45:00', 4000.00, 9000.00, 30),
    ('Chennai', 'Bengaluru', '2024-09-10 10:00:00', '2024-09-10 11:30:00', 4000.00, 9000.00, 35),
    ('Delhi', 'Kolkata', '2024-09-10 12:00:00', '2024-09-10 14:30:00', 6000.00, 14000.00, 15),
    ('Kolkata', 'Delhi', '2024-09-10 15:00:00', '2024-09-10 17:30:00', 6000.00, 14000.00, 20),
    ('Hyderabad', 'Mumbai', '2024-09-10 08:00:00', '2024-09-10 09:30:00', 4500.00, 10500.00, 40),
    ('Mumbai', 'Hyderabad', '2024-09-10 13:00:00', '2024-09-10 14:30:00', 4500.00, 10500.00, 30),
    ('Chennai', 'Delhi', '2024-09-10 11:00:00', '2024-09-10 13:30:00', 5500.00, 13000.00, 25),
    ('Delhi', 'Chennai', '2024-09-10 14:00:00', '2024-09-10 16:30:00', 5500.00, 13000.00, 30);

-- Insert sample data for international flights
INSERT INTO international_flights (source_city, destination_city, departure_time, arrival_time, economy_fare, business_fare, seats_available)
VALUES
    ('New York', 'Los Angeles', '2024-09-01 08:00:00', '2024-09-01 11:00:00', 150.00, 300.00, 120),
    ('Chicago', 'Miami', '2024-09-02 09:30:00', '2024-09-02 12:00:00', 180.00, 350.00, 110),
    ('Houston', 'San Francisco', '2024-09-03 06:00:00', '2024-09-03 09:30:00', 200.00, 400.00, 100),
    ('Boston', 'Seattle', '2024-09-04 07:15:00', '2024-09-04 10:45:00', 170.00, 340.00, 90),
    ('Atlanta', 'Denver', '2024-09-05 10:00:00', '2024-09-05 13:00:00', 190.00, 370.00, 130),
    ('Dallas', 'Washington', '2024-09-06 11:30:00', '2024-09-06 14:00:00', 160.00, 320.00, 140),
    ('Philadelphia', 'Phoenix', '2024-09-07 12:45:00', '2024-09-07 15:30:00', 210.00, 420.00, 80),
    ('Orlando', 'Las Vegas', '2024-09-08 14:00:00', '2024-09-08 16:45:00', 220.00, 440.00, 70),
    ('San Diego', 'New York', '2024-09-09 05:00:00', '2024-09-09 12:00:00', 240.00, 480.00, 150),
    ('Charlotte', 'Chicago', '2024-09-10 15:00:00', '2024-09-10 17:00:00', 180.00, 360.00, 95);

