
use EcommerceDB
-- Total stock available for all products
SELECT SUM(Stock) AS Total_Stock FROM Products;

-- Average product price
SELECT AVG(Price) AS Average_Price FROM Products;

-- Most expensive product price
SELECT MAX(Price) AS Max_Price FROM Products;

-- Cheapest product price
SELECT MIN(Price) AS Min_Price FROM Products;

-- Count total number of customers
SELECT COUNT(*) AS Total_Customers FROM Customers;


-- Total stock per category
SELECT CategoryID, SUM(Stock) AS Total_Stock
FROM Products
GROUP BY CategoryID;

-- Total amount spent per customer
SELECT O.CustomerID, SUM(P.Amount) AS Total_Spent
FROM Orders O
JOIN Payment P ON O.OrderID = P.OrderID
GROUP BY O.CustomerID;

-- Show categories where total stock is more than 100
SELECT CategoryID, SUM(Stock) AS Total_Stock
FROM Products
GROUP BY CategoryID
HAVING SUM(Stock) > 100;

-- Show customers who spent more than 30000 in total
SELECT O.CustomerID, SUM(P.Amount) AS Total_Spent
FROM Orders O
JOIN Payment P ON O.OrderID = P.OrderID
GROUP BY O.CustomerID
HAVING SUM(P.Amount) > 30000;
