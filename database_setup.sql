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
-- Ensure you're using the correct database
USE nancy;

-- Insert dummy data into Categories
INSERT INTO Categories (Category_name, Category_type)
VALUES 
('Electronics', 'Goods'),
('Furniture', 'Goods'),
('Clothing', 'Apparel'),
('Books', 'Media'),
('Groceries', 'Goods'),
('Toys', 'Goods'),
('Beauty', 'Personal Care'),
('Automotive', 'Goods'),
('Sports', 'Goods'),
('Office Supplies', 'Goods'),
('Jewelry', 'Accessories'),
('Shoes', 'Apparel'),
('Garden', 'Goods'),
('Pets', 'Goods'),
('Music', 'Media'),
('Movies', 'Media'),
('Home Decor', 'Goods'),
('Tools', 'Goods'),
('Baby Products', 'Goods'),
('Health', 'Personal Care'),
('Outdoor', 'Goods'),
('Kitchen', 'Goods'),
('Video Games', 'Media'),
('Stationery', 'Goods'),
('Bags', 'Accessories'),
('Watches', 'Accessories'),
('Mobiles', 'Goods'),
('Tablets', 'Goods'),
('Laptops', 'Goods'),
('Cameras', 'Goods'),
('Audio', 'Media'),
('Fitness', 'Goods'),
('Cleaning', 'Goods'),
('Lighting', 'Goods'),
('Hardware', 'Goods'),
('Beverages', 'Goods'),
('Snacks', 'Goods'),
('Crafts', 'Goods'),
('Travel', 'Goods');

-- Insert dummy data into Customers
INSERT INTO Customers (Name, Contact_Add, Address)
VALUES
('John Doe', 'john@example.com', '123 Main St, Anytown'),
('Jane Smith', 'jane@example.com', '456 Oak St, Othertown'),
('Alice Johnson', 'alice@example.com', '789 Pine St, Sometown'),
('Bob Brown', 'bob@example.com', '101 Maple St, Anycity'),
('Charlie Davis', 'charlie@example.com', '202 Birch St, Othercity'),
('Diana Evans', 'diana@example.com', '303 Cedar St, Somecity'),
('Ethan Foster', 'ethan@example.com', '404 Elm St, Anyvillage'),
('Fiona Green', 'fiona@example.com', '505 Spruce St, Othervillage'),
('George Harris', 'george@example.com', '606 Walnut St, Somevillage'),
('Hannah Adams', 'hannah@example.com', '707 Ash St, Anytown'),
('Ivan Baker', 'ivan@example.com', '808 Willow St, Othertown'),
('Judy Clark', 'judy@example.com', '909 Fir St, Sometown'),
('Kevin Young', 'kevin@example.com', '111 Hickory St, Anycity'),
('Linda King', 'linda@example.com', '222 Poplar St, Othercity'),
('Mike Lewis', 'mike@example.com', '333 Chestnut St, Somecity'),
('Nina Martinez', 'nina@example.com', '444 Redwood St, Anyvillage'),
('Oscar Nelson', 'oscar@example.com', '555 Magnolia St, Othervillage'),
('Paula Parker', 'paula@example.com', '666 Sycamore St, Somevillage'),
('Quincy Scott', 'quincy@example.com', '777 Cypress St, Anytown'),
('Rachel Lee', 'rachel@example.com', '888 Sequoia St, Othertown'),
('Steve Turner', 'steve@example.com', '999 Larch St, Sometown'),
('Tina Roberts', 'tina@example.com', '121 Maple St, Anycity'),
('Ursula Collins', 'ursula@example.com', '232 Oak St, Othercity'),
('Victor Bell', 'victor@example.com', '343 Pine St, Somecity'),
('Wendy Howard', 'wendy@example.com', '454 Birch St, Anyvillage'),
('Xavier Ramirez', 'xavier@example.com', '565 Cedar St, Othervillage'),
('Yvonne Campbell', 'yvonne@example.com', '676 Elm St, Somevillage'),
('Zachary Allen', 'zachary@example.com', '787 Spruce St, Anytown'),
('Amy Mitchell', 'amy@example.com', '898 Walnut St, Othertown'),
('Brian Gonzalez', 'brian@example.com', '909 Ash St, Sometown'),
('Cathy Hernandez', 'cathy@example.com', '101 Willow St, Anycity'),
('David Carter', 'david@example.com', '202 Fir St, Othercity'),
('Eva Cooper', 'eva@example.com', '303 Hickory St, Somecity'),
('Frank Rogers', 'frank@example.com', '404 Poplar St, Anyvillage'),
('Grace Edwards', 'grace@example.com', '505 Chestnut St, Othervillage'),
('Henry Morris', 'henry@example.com', '606 Redwood St, Somevillage'),
('Irene Murphy', 'irene@example.com', '707 Magnolia St, Anytown'),
('Jack Hughes', 'jack@example.com', '808 Sycamore St, Othertown'),
('Kathy Diaz', 'kathy@example.com', '909 Cypress St, Sometown');

-- Insert dummy data into Products
INSERT INTO Products (Category_ID, Product_name)
VALUES
(1, 'Smartphone'),
(2, 'Sofa'),
(3, 'T-shirt'),
(4, 'Novel'),
(5, 'Apple'),
(6, 'Action Figure'),
(7, 'Shampoo'),
(8, 'Car Battery'),
(9, 'Basketball'),
(10, 'Notebook'),
(11, 'Necklace'),
(12, 'Sneakers'),
(13, 'Flower Pot'),
(14, 'Dog Food'),
(15, 'Guitar'),
(16, 'DVD'),
(17, 'Wall Art'),
(18, 'Hammer'),
(19, 'Baby Stroller'),
(20, 'Vitamin C'),
(21, 'Tent'),
(22, 'Blender'),
(23, 'Video Game'),
(24, 'Pen'),
(25, 'Backpack'),
(26, 'Watch'),
(27, 'Tablet'),
(28, 'Laptop'),
(29, 'Camera'),
(30, 'Headphones'),
(31, 'Dumbbell'),
(32, 'Vacuum Cleaner'),
(33, 'LED Bulb'),
(34, 'Nail'),
(35, 'Juice'),
(36, 'Chips'),
(37, 'Scissors'),
(38, 'Suitcase'),
(39, 'Diary'),
(40, 'Passport Cover');

-- Insert dummy data into Seller
INSERT INTO Seller (Product_ID, Name)
VALUES
(1, 'John Electronics'),
(2, 'Comfort Furniture'),
(3, 'Fashion Store'),
(4, 'Book World'),
(5, 'Grocery Mart'),
(6, 'Toy Town'),
(7, 'Beauty Shop'),
(8, 'Auto Parts'),
(9, 'Sports Gear'),
(10, 'Office Supplies Co'),
(11, 'Jewelry Hub'),
(12, 'Shoe Store'),
(13, 'Garden Goods'),
(14, 'Pet Supplies'),
(15, 'Music Store'),
(16, 'Movie Shop'),
(17, 'Home Decor Central'),
(18, 'Tool Box'),
(19, 'Baby Needs'),
(20, 'Health Store'),
(21, 'Outdoor Equipment'),
(22, 'Kitchenware'),
(23, 'Game Shop'),
(24, 'Stationery Corner'),
(25, 'Bag Boutique'),
(26, 'Watch Place'),
(27, 'Mobile World'),
(28, 'Laptop Land'),
(29, 'Camera House'),
(30, 'Audio Central'),
(31, 'Fitness Store'),
(32, 'Cleaning Supplies'),
(33, 'Lighting Store'),
(34, 'Hardware Hub'),
(35, 'Beverage Center'),
(36, 'Snack Shop'),
(37, 'Craft Corner'),
(38, 'Travel Gear'),
(39, 'Notebook Nook'),
(40, 'Travel Essentials');

-- Insert dummy data into ShoppingOrder
INSERT INTO ShoppingOrder (Customer_ID, Date)
VALUES
(1, '2024-01-01'),
(2, '2024-01-02'),
(3, '2024-01-03'),
(4, '2024-01-04'),
(5, '2024-01-05'),
(6, '2024-01-06'),
(7, '2024-01-07'),
(8, '2024-01-08'),
(9, '2024-01-09'),
(10, '2024-01-10'),
(11, '2024-01-11'),
(12, '2024-01-12'),
(13, '2024-01-13'),
(14, '2024-01-14'),
(15, '2024-01-15'),
(16, '2024-01-16'),
(17, '2024-01-17'),
(18, '2024-01-18'),
(19, '2024-01-19'),
(20, '2024-01-20'),
(21, '2024-01-21'),
(22, '2024-01-22'),
(23, '2024-01-23'),
(24, '2024-01-24'),
(25, '2024-01-25'),
(26, '2024-01-26'),
(27, '2024-01-27'),
(28, '2024-01-28'),
(29, '2024-01-29'),
(30, '2024-01-30'),
(31, '2024-01-31'),
(32, '2024-02-01'),
(33, '2024-02-02'),
(34, '2024-02-03'),
(35, '2024-02-04'),
(36, '2024-02-05'),
(37, '2024-02-06'),
(38, '2024-02-07'),
(39, '2024-02-08'),
(40, '2024-02-09');

-- Insert dummy data into Payment
INSERT INTO Payment (Category_ID, Date)
VALUES
(1, '2024-01-01'),
(2, '2024-01-02'),
(3, '2024-01-03'),
(4, '2024-01-04'),
(5, '2024-01-05'),
(6, '2024-01-06'),
(7, '2024-01-07'),
(8, '2024-01-08'),
(9, '2024-01-09'),
(10, '2024-01-10'),
(11, '2024-01-11'),
(12, '2024-01-12'),
(13, '2024-01-13'),
(14, '2024-01-14'),
(15, '2024-01-15'),
(16, '2024-01-16'),
(17, '2024-01-17'),
(18, '2024-01-18'),
(19, '2024-01-19'),
(20, '2024-01-20'),
(21, '2024-01-21'),
(22, '2024-01-22'),
(23, '2024-01-23'),
(24, '2024-01-24'),
(25, '2024-01-25'),
(26, '2024-01-26'),
(27, '2024-01-27'),
(28, '2024-01-28'),
(29, '2024-01-29'),
(30, '2024-01-30'),
(31, '2024-01-31'),
(32, '2024-02-01'),
(33, '2024-02-02'),
(34, '2024-02-03'),
(35, '2024-02-04'),
(36, '2024-02-05'),
(37, '2024-02-06'),
(38, '2024-02-07'),
(39, '2024-02-08'),
(40, '2024-02-09');

-- Insert dummy data into Deliveries
INSERT INTO Deliveries (Customer_ID, Date)
VALUES
(1, '2024-01-01'),
(2, '2024-01-02'),
(3, '2024-01-03'),
(4, '2024-01-04'),
(5, '2024-01-05'),
(6, '2024-01-06'),
(7, '2024-01-07'),
(8, '2024-01-08'),
(9, '2024-01-09'),
(10, '2024-01-10'),
(11, '2024-01-11'),
(12, '2024-01-12'),
(13, '2024-01-13'),
(14, '2024-01-14'),
(15, '2024-01-15'),
(16, '2024-01-16'),
(17, '2024-01-17'),
(18, '2024-01-18'),
(19, '2024-01-19'),
(20, '2024-01-20'),
(21, '2024-01-21'),
(22, '2024-01-22'),
(23, '2024-01-23'),
(24, '2024-01-24'),
(25, '2024-01-25'),
(26, '2024-01-26'),
(27, '2024-01-27'),
(28, '2024-01-28'),
(29, '2024-01-29'),
(30, '2024-01-30'),
(31, '2024-01-31'),
(32, '2024-02-01'),
(33, '2024-02-02'),
(34, '2024-02-03'),
(35, '2024-02-04'),
(36, '2024-02-05'),
(37, '2024-02-06'),
(38, '2024-02-07'),
(39, '2024-02-08'),
(40, '2024-02-09');

-- Insert dummy data into TransactionReports
INSERT INTO TransactionReports (Customer_ID, Order_ID, Product_ID, Payment_ID)
VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 7, 7, 7),
(8, 8, 8, 8),
(9, 9, 9, 9),
(10, 10, 10, 10),
(11, 11, 11, 11),
(12, 12, 12, 12),
(13, 13, 13, 13),
(14, 14, 14, 14),
(15, 15, 15, 15),
(16, 16, 16, 16),
(17, 17, 17, 17),
(18, 18, 18, 18),
(19, 19, 19, 19),
(20, 20, 20, 20),
(21, 21, 21, 21),
(22, 22, 22, 22),
(23, 23, 23, 23),
(24, 24, 24, 24),
(25, 25, 25, 25),
(26, 26, 26, 26),
(27, 27, 27, 27),
(28, 28, 28, 28),
(29, 29, 29, 29),
(30, 30, 30, 30),
(31, 31, 31, 31),
(32, 32, 32, 32),
(33, 33, 33, 33),
(34, 34, 34, 34),
(35, 35, 35, 35),
(36, 36, 36, 36),
(37, 37, 37, 37),
(38, 38, 38, 38),
(39, 39, 39, 39),
(40, 40, 40, 40);

