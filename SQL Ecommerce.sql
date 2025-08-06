Create Database EcommerceDB;

use EcommerceDB;

---Category Table
Create Table Categories (
   CategoryID Int Primary key identity(1,1),
   CategoryName varchar(100) not null
);

--Product Table
Create Table Products (
   ProductID Int Primary key Identity(1,1),
   ProductName Varchar(100) not null,
   Price Decimal(10,2) not null,
   stock int not null,
   CategoryID Int,
   Foreign key (categoryID) References Categories(CategoryID)
);

---Customer Table
Create Table Customers (
   CustomerID Int Primary key Identity(1,1),
   CustomerName Varchar(100) not null,
   Email Varchar(100) unique,
   Phone Varchar(100),
   Address TEXT
);

---Order Detail
Create Table Orders (
   OrderID Int Primary key Identity(1,1),
   CustomerID Int,
   OrderDate Date,
   Status Varchar(50),
   Foreign key (CustomerID) References Customers(CustomerID)
);

-- OrderDetails Table (Associative Entity for Orders & Products)
Create Table Orderdetails (
   OrderdetailID Int Primary key identity(1,1),
   OrderID Int,
   ProductID Int,
   Quantity Int not null,
   Unitprice Decimal(10,2),
   Foreign key (OrderID) References Orders(OrderID),
   foreign key (ProductID) References Products(ProductID)
);


-- Payment Table
CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY identity(1,1),
    OrderID INT,
    PaymentDate DATE,
    Amount DECIMAL(10, 2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Shipping Table
CREATE TABLE Shipping (
    ShippingID INT PRIMARY KEY identity(1,1),
    OrderID INT,
    ShippingAddress TEXT,
    ShippingDate DATE,
    DeliveryDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Task 2: Data Insertion and Handling Nulls

-- Insert Categories
INSERT INTO Categories (CategoryName) VALUES ('Electronics');
INSERT INTO Categories (CategoryName) VALUES ('Clothing');
INSERT INTO Categories (CategoryName) VALUES ('Books');

-- Insert Products
INSERT INTO Products (ProductName, Price, Stock, CategoryID) VALUES
('Smartphone', 15000.00, 50, 1),
('Laptop', 45000.00, 20, 1),
('T-shirt', 500.00, 100, 2),
('Novel', 300.00, 200, 3),
('Jeans', 1200.00, 80, 2);

-- Insert Customers
INSERT INTO Customers (CustomerName, Email, Phone, Address) VALUES
('Reshma Swain', 'reshma@example.com', '9999999999', 'Bhubaneswar, Odisha'),
('Amit Sharma', 'amit.sharma@example.com', '8888888888', 'Pune, Maharashtra'),
('Priya Verma', NULL, '7777777777', 'Lucknow, UP');  -- Missing email handled with NULL

-- Insert Orders
INSERT INTO Orders (CustomerID, OrderDate, Status) VALUES
(1, '2025-08-01', 'Processing'),
(2, '2025-08-03', 'Shipped'),
(3, '2025-08-05', 'Pending');

-- Insert Order Details
INSERT INTO Orderdetails (OrderID, ProductID, Quantity, Unitprice) VALUES
(1, 1, 2, 15000.00),
(1, 3, 3, 500.00),
(2, 2, 1, 45000.00),
(3, 4, 2, 300.00);

-- Insert Payment
INSERT INTO Payment (OrderID, PaymentDate, Amount, PaymentMethod) VALUES
(1, '2025-08-02', 31500.00, 'Credit Card'),
(2, '2025-08-04', 45000.00, 'UPI');

-- Insert Shipping
INSERT INTO Shipping (OrderID, ShippingAddress, ShippingDate, DeliveryDate, Status) VALUES
(1, 'Bhubaneswar, Odisha', '2025-08-02', '2025-08-05', 'In Transit'),
(2, 'Pune, Maharashtra', '2025-08-04', '2025-08-06', 'Delivered');

-- ---------------------
-- UPDATE OPERATIONS
-- ---------------------

-- Update Customer Phone Number
UPDATE Customers
SET Phone = '6666666666'
WHERE CustomerName = 'Priya Verma';

-- Update Product Stock after sale
UPDATE Products
SET Stock = Stock - 2
WHERE ProductID = 1;  -- Smartphone sold

-- Update Order Status after shipping
UPDATE Orders
SET Status = 'Delivered'
WHERE OrderID = 2;

-- ---------------------
-- DELETE OPERATIONS
-- ---------------------

-- Delete a Product (Suppose Novel is discontinued)
DELETE FROM Products
WHERE ProductName = 'Novel';

-- Delete an Order that was mistakenly added (OrderID = 3)
DELETE FROM OrderDetails
WHERE OrderID = 3; -- Delete related Orderdetails first (FK constraint)
DELETE FROM Orders
WHERE OrderID = 3;

-- Delete a Customer who requested account deletion
DELETE FROM Customers
WHERE CustomerName = 'Amit Sharma';

-- ---------------------
-- Handle Null Values Example (Update NULL Email)
-- ---------------------
UPDATE Customers
SET Email = 'priya.verma@example.com'
WHERE CustomerName = 'Priya Verma' AND Email IS NULL;

select * from Categories;