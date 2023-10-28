CREATE DATABASE Designs;

USE Designs;

CREATE TABLE Products (
	Product_ID INT NOT NULL PRIMARY KEY,
	Product_Name VARCHAR(50) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Quantity INT NULL
  );
     
INSERT INTO Products 
(Product_ID, Product_Name, Price, Category, Quantity)
VALUES
(1, 'Spring_Flower', 69.99 , 'Wall_Decoration', 2),
(2, 'Tree_of_Life', 42.99, 'Wall_Decoration', 2),
(3, 'Ginkgo_Leaf', 90.75, 'Wall_Decoration', 4),
(4, 'Botanical_Leaf', 14.99, 'Wall_Decoration', 6),
(5, 'Lotus_Leaf', 62.99, 'Wall_Decoration', 1),
(6, 'Monstera_Leaves', 84.93, 'Wall_Decoration', 3),
(7, 'Flower_Girl_Keepsake', 7.95, 'Wedding', 10),
(8, 'Bridesmaid_Initial', 9.00, 'Wedding', 15),
(9, 'Mother_Of_The_Bride', 4.75, 'Wedding', 2),
(10, 'Will_You_Be_My', 10.00, 'Wedding', 5),
(11, 'Place_Cards', 2.50, 'Wedding', 20),
(12, 'Name_Hoop', 10.99, 'Birthday', 1),
(13, 'Cake_Topper', 9.50, 'Birthday', 1),
(14, 'Name_Puzzle', 11.20, 'Birthday', 1),
(15, 'Table_Confetti', 5.95, 'Birthday', 2),
(16, 'Gift_Plaque', 12.50, 'Birthday', 2);

SELECT * FROM Products;

CREATE TABLE Manufacture (
    Manufacture_Code INT NOT NULL PRIMARY KEY,
    Product_Name VARCHAR(50) NOT NULL,
    Materials VARCHAR(50) NOT NULL,
    Length_MM FLOAT NULL,
    Width_MM FLOAT NULL,
    Cost DECIMAL(10,2) NOT NULL,
    Supplier VARCHAR(50) NOT NULL
    );
 
CREATE INDEX idx_Product_Name ON Manufacture (Product_Name);
CREATE INDEX idx_Product_Name ON Products (Product_Name);
 
ALTER TABLE Manufacture
ADD CONSTRAINT
fk_Product_Name
FOREIGN KEY
(Product_Name)
REFERENCES
Products
(Product_Name);

INSERT INTO Manufacture
(Manufacture_Code, Product_Name, Materials, Length_MM, Width_MM, Cost, Supplier)
VALUES
(1, 'Spring_Flower', 'MDF', 850, 570, 17.00, 'Latham'),
(2, 'Tree_of_Life', 'MDF', 670, 1150, 18.00, 'Latham'),
(3, 'Tree_of_Life', 'Veneered_Plywood', 670, 1150, 12.00, 'Kitronik'),
(4, 'Ginkgo_Leaf', 'Steel', 730, 760, 9.00, 'The_Metal_Store'),
(5, 'Ginkgo_Leaf', 'Powder_Coating', NULL, NULL, 0.90, 'Frost'), 
(6, 'Botanical_Leaf', 'Veneered_Plywood', 190, 190, 26.00, 'Latham'),
(7, 'Lotus_Leaf', 'MDF', 700, 600, 15.00, 'Latham'),
(8, 'Monstera_Leaves', 'Veneered_Plywood', 700, 1200, 12.00, 'Kitronik'),   
(9, 'Flower_Girl_Keepsake', 'Laser_Ply', 55, 30, 0.20, 'Hobarts'),
(10, 'Bridesmaid_Initial', 'Laser_Ply', 75, 75, 0.45, 'Hobarts'),
(11, 'Bridesmaid_Initial', 'White_Perspex', 75, 75, 1.20, 'Hindleys'),
(12, 'Mother_Of_The_Bride', 'Laser_Ply', 50, 30, 0.18, 'Hobarts'),
(13, 'Will_You_Be_My', 'Laser_Ply', 100, 100, 0.55, 'Hobarts'),
(14, 'Place_Cards', 'Veneered_Plywood', 55, 55, 0.25, 'Kitronik'),
(15, 'Name_Hoop', 'MDF', 200, 250, 3.00, 'Latham'),
(16, 'Cake_Topper', 'Veneered_Plywood', 200, 100, 1.25, 'Kitronik'),
(17, 'Cake_Topper', 'Mirrored_Perspex', 30, 30, 0.2, 'Hindleys'),
(18, 'Name_Puzzle', 'Birch_Plywood', 330, 100, 1.26, 'Latham'),
(19, 'Table_Confetti', 'Laser_Ply', 30, 30, 0.10, 'Hobarts'),
(20, 'Gift_Plaque', 'Clear_Perspex', 100, 100, 1.80, 'Hindleys'); 

SELECT * FROM Manufacture;

CREATE TABLE Customers (
	Customer_ID INT NOT NULL PRIMARY KEY,
    First_Name VARCHAR(100) NOT NULL,
    Surname VARCHAR(100) NOT NULL,
    Building_Number INT NOT NULL,
    Street VARCHAR(100) NOT NULL,
    City VARCHAR(60) NOT NULL,
    Postcode CHAR(8) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

INSERT INTO Customers
(Customer_ID, First_Name, Surname, Building_Number, Street, City, Postcode, Email)
VALUES
(1, 'Alice', 'Smith', 23, 'Main Street', 'Birmingham', 'B1 1DE', 'alice.smith@gmail.com'),
(2, 'Bob', 'Johnson', 45, 'Elm Street', 'Nottingham', 'NG5 0AB', 'bobster.j@hotmail.co.uk'),
(3, 'Charlie', 'Lee', 78, 'Oak Avenue', 'Bristol', 'BS14 9UE', 'charles.lee.junior@gmail.com'),
(4, 'David', 'Brown', 260, 'Maple Drive', 'Nottingham', 'NG1 7XE', 'd-brown@gmail.com'),
(5, 'Emma', 'Davis', 135, 'Pine Street', 'Liverpool', 'L11 8NH', 'emmadavis@hotmail.co.uk'),
(6, 'Emma', 'Wilson', 9, 'Cedar Road', 'Liverpool', 'L4 ORB', 'EMMAWILSON@GMAIL.CO.UK'),
(7, 'Grace', 'Martin', 82, 'Willow Lane', 'Norwich', 'NR7 5ES', 'gracemartin2003@gmail.com'),
(8, 'Henry', 'Jackson', 35, 'Cherry Street', 'Newcastle', 'NE2 2LE', 'henryCmartin@hotmail.com'),
(9, 'Isabel', 'Taylor', 68, 'Birch Avenue', 'Norwich', 'NR10 3RR', 'isabeltaylor93@outlook.com'),
(10, 'Jayne', 'Anderson', 3, 'Juniper Avenue', 'St Albans', 'AL6 7EE', '75janderson@gmail.com');

SELECT * FROM Customers;

CREATE TABLE Orders (
	Order_ID INT NOT NULL PRIMARY KEY,
    Product_ID INT NOT NUll,
    Customer_ID INT NOT NULL,
    Purchased TIMESTAMP NOT NULL,
    Shipped DATE NULL
);

ALTER TABLE Orders
ADD CONSTRAINT
fk_Product_ID
FOREIGN KEY
(Product_ID)
REFERENCES
Products
(Product_ID);

ALTER TABLE Orders
ADD CONSTRAINT
fk_Customer_ID
FOREIGN KEY
(Customer_ID)
REFERENCES
Customers
(Customer_ID);

INSERT INTO Orders
(Order_ID, Product_ID, Customer_ID, Purchased, Shipped)
VALUES
(1, 7, 8, '2022-11-05 13:06:27', '2022-11-10'), 
(2, 16, 8, '2022-11-05 13:32:22', '2022-11-10'),
(3, 3, 5, '2022-11-05 18:18:06', '2022-11-07'), 
(4, 3, 6, '2022-11-14 09:07:46', '2022-11-15'), 
(5, 12, 5, '2022-11-28 22:34:57', '2022-12-02'),
(6, 8, 10, '2022-11-28 23:13:44', '2022-11-29'), 
(7, 2, 9, '2022-12-02 12:13:44', '2022-12-03'), 
(8, 4, 8, '2022-12-07 13:33:25', '2022-12-08'),
(9, 8, 8, '2022-12-07 13:14:27', '2022-12-08'), 
(10, 6, 2, '2022-12-13 20:05:33', Null), 
(11, 4, 1, '2022-12-13 20:07:44', '2022-12-15'), 
(12, 2, 7, '2022-12-14 06:07:44', '2022-12-15'), 
(13, 9, 4, '2022-12-14 10:33:42', '2022-12-18'),
(14, 15, 3, '2022-12-14 11:02:44', '2022-12-18'),
(15, 16, 8, '2022-12-14 13:06:27', '2022-12-18'),
(16, 4, 10, '2022-12-16 23:08:45', '2022-12-18'), 
(17, 2, 7, '2022-12-18 15:44:23', '2022-12-19'), 
(18, 1, 4, '2022-12-19 00:04:34', '2022-12-20'), 
(19, 11, 6, '2022-12-24 04:55:34', '2023-01-04'),
(20, 3, 7, '2022-12-25 19:22:45', '2023-12-29'); 

SELECT * FROM Orders;

CREATE TABLE Transactions (
	Transaction_ID INT NOT NULL PRIMARY KEY,
    Payment_ID INT NOT NULL,
    Order_ID INT NOT NULL,
    Date_and_Time TIMESTAMP NOT NULL,
    Refund BOOLEAN NOT NULL
);

ALTER TABLE Transactions
ADD CONSTRAINT
fk_Payment_ID
FOREIGN KEY
(Payment_ID)
REFERENCES
Payments
(Payment_ID);

ALTER TABLE Transactions
ADD CONSTRAINT
fk_Order_ID
FOREIGN KEY
(Order_ID)
REFERENCES
Orders
(Order_ID);

INSERT INTO Transactions
(Transaction_ID, Payment_ID, Order_ID, Date_and_Time, Refund)
VALUES
(1, 1, 1, '2022-11-05 13:06:27', 0),
(2, 2, 2, '2022-11-05 13:32:22', 0),
(3, 3, 3, '2022-11-05 18:18:06', 0),
(4, 4, 4, '2022-11-14 09:07:46', 0),
(5, 5, 5, '2022-11-28 22:34:57', 0),
(6, 6, 6, '2022-11-28 23:13:44', 0),
(7, 7, 7, '2022-12-02 12:13:44', 1),
(8, 8, 8, '2022-12-07 13:33:25', 0),
(9, 9, 9, '2022-12-07 13:14:27', 0),
(10, 10, 10, '2022-12-13 20:05:33', 0),
(11, 11, 11, '2022-12-13 20:07:44', 0),
(12, 12, 12, '2022-12-14 06:07:44', 1),
(13, 13, 13, '2022-12-14 10:33:42', 0),
(14, 14, 14, '2022-12-14 11:02:44', 0),
(15, 15, 15, '2022-12-14 13:06:27', 0),
(16, 16, 16, '2022-12-16 23:08:45', 0),
(17, 17, 17, '2022-12-18 15:44:23', 0),
(18, 18, 18, '2022-12-19 00:04:34', 0),
(19, 19, 19, '2022-12-24 04:55:34', 0),
(20, 20, 20, '2022-12-25 19:22:45', 0);

SELECT * FROM Transactions;

CREATE TABLE Payments (
	Payment_ID INT NOT NULL PRIMARY KEY,
    Amount DECIMAL(10,2) NOT NULL,
    Date DATE NOT NULL,
    Method VARCHAR(12),
    Status CHAR(9)
);

INSERT INTO Payments
(Payment_ID, Amount, Date, Method, Status)
VALUES
(1, 7.95, '2022-11-05', 'Credit_Card', 'Approved'),
(2, 12.50, '2022-11-05', 'Credit_Card', 'Approved'),
(3, 90.75, '2022-11-05', 'Debit_Card', 'Approved'),
(4, 90.75, '2022-11-14', 'Debit_Card', 'Approved'),
(5, 10.99, '2022-11-28', 'Debit_Card', 'Approved'),
(6, 9.00, '2022-11-28', 'PayPal', 'Approved'),
(7, 42.99, '2022-12-02', 'PayPal', 'Refunded'),
(8, 14.99, '2022-12-07', 'Credit_Card', 'Approved'),
(9, 9.00, '2022-12-07', 'Credit_Card', 'Approved'),
(10, 84.93, '2022-12-13', 'PayPal', 'Cancelled'),
(11, 14.99, '2022-12-13', 'Debit_Card', 'Approved'),
(12, 42.99, '2022-12-14', 'PayPal', 'Refunded'),
(13, 4.75, '2022-12-14', 'PayPal', 'Approved'),
(14, 5.95, '2022-12-14', 'PayPal', 'Approved'),
(15, 12.50, '2022-12-14', 'Credit_Card', 'Approved'),
(16, 14.99, '2022-12-16', 'Credit_Card', 'Approved'),
(17, 42.99, '2022-12-18', 'Debit_Card', 'Approved'),
(18, 69.99, '2022-12-19', 'PayPal', 'Approved'),
(19, 2.50, '2022-12-24', 'PayPal', 'Approved'),
(20, 90.75, '2022-12-25', 'PayPal', 'Pending');

SELECT * FROM Payments;

CREATE TABLE Reviews (
	Review_ID INT NOT NULL PRIMARY KEY,
    Product_ID INT NOT NULL,
    Customer_ID INT NOT NULL,
    First_Name VARCHAR(100) NOT NULL,
    Rating INT NOT NULL,
    Date DATE NOT NULL
);

ALTER TABLE Reviews
ADD CONSTRAINT
fk_Product_Review
FOREIGN KEY
(Product_ID)
REFERENCES
Products
(Product_ID);

ALTER TABLE Reviews
ADD CONSTRAINT
fk_Customer_Review
FOREIGN KEY
(Customer_ID)
REFERENCES
Customers
(Customer_ID);

INSERT INTO Reviews
(Review_ID, Product_ID, Customer_ID, First_Name, Rating, Date)
VALUES
(1, 7, 8, 'Henry', 5, '2022-11-12'),
(2, 16, 8, 'Henry', 5, '2022-11-12'),
(3, 12, 5, 'Emma', 5, '2023-01-02'),
(4, 2, 9, 'Isabel', 5, '2022-12-10'),
(5, 2, 7, 'Grace', 4, '2023-01-26'),
(6, 4, 10, 'Jayne', 5, '2023-01-12'),
(7, 16, 8, 'Henry', 5, '2022-12-29');

SELECT * FROM Reviews;
