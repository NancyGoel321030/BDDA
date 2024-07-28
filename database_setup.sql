-- Create the database if it does not exist
CREATE DATABASE IF NOT EXISTS nancy;

-- Switch to the created database
USE nancy;

-- Create the Categories table
CREATE TABLE IF NOT EXISTS Categories (
    Category_ID INT AUTO_INCREMENT PRIMARY KEY,
    Category_name VARCHAR(100),
    Category_type VARCHAR(100)
);

-- Create the Customers table
CREATE TABLE IF NOT EXISTS Customers (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Contact_Add VARCHAR(255),
    Address VARCHAR(255)
);

-- Create the Products table
CREATE TABLE IF NOT EXISTS Products (
    Product_ID INT AUTO_INCREMENT PRIMARY KEY,
    Category_ID INT,
    Product_name VARCHAR(100),
    FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID)
);

-- Create the Seller table
CREATE TABLE IF NOT EXISTS Seller (
    Seller_ID INT AUTO_INCREMENT PRIMARY KEY,
    Product_ID INT,
    Name VARCHAR(100),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);

-- Create the ShoppingOrder table
CREATE TABLE IF NOT EXISTS ShoppingOrder (
    Order_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT,
    Date DATE,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

-- Create the Payment table
CREATE TABLE IF NOT EXISTS Payment (
    Payment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Category_ID INT,
    Date DATE,
    FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID)
);

-- Create the Deliveries table
CREATE TABLE IF NOT EXISTS Deliveries (
    Deliveries_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT,
    Date DATE,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

-- Create the TransactionReports table
CREATE TABLE IF NOT EXISTS TransactionReports (
    Report_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT,
    Order_ID INT,
    Product_ID INT,
    Payment_ID INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Order_ID) REFERENCES ShoppingOrder(Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID),
    FOREIGN KEY (Payment_ID) REFERENCES Payment(Payment_ID)
);
