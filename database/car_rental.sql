CREATE DATABASE IF NOT EXISTS car_rental;
USE car_rental;

CREATE TABLE Customers (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),
    Address VARCHAR(255)
);

CREATE TABLE Cars (
    Car_ID INT AUTO_INCREMENT PRIMARY KEY,
    Make VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Year INT NOT NULL,
    Rental_Price DECIMAL(10,2) NOT NULL,
    Availability ENUM('Available', 'Rented') DEFAULT 'Available'
);

CREATE TABLE Bookings (
    Booking_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT,
    Car_ID INT,
    Rental_Start DATE NOT NULL,
    Rental_End DATE NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Car_ID) REFERENCES Cars(Car_ID)
);

CREATE TABLE Transactions (
    Transaction_ID INT AUTO_INCREMENT PRIMARY KEY,
    Booking_ID INT,
    Payment_Amt DECIMAL(10,2) NOT NULL,
    Payment_Date DATE NOT NULL,
    FOREIGN KEY (Booking_ID) REFERENCES Bookings(Booking_ID)
);

CREATE TABLE Administrators (
    Admin_ID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Permissions VARCHAR(100)
);

INSERT INTO Cars (Make, Model, Year, Rental_Price, Availability) VALUES
('Toyota', 'Camry', 2020, 50.00, 'Available'),
('Honda', 'Civic', 2019, 40.00, 'Rented');
