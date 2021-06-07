USE test;

SELECT * FROM Orders;

-- 주문의 고객명
SELECT o.OrderID, c.CustomerName FROM Orders o JOIN Customers c
ON o.CustomerID = c.CustomerID;

-- 주문의 고객명, 직원명
SELECT o.OrderID, c.CustomerName, e.LastName, e.FirstName 
FROM Orders o 
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Employees e ON o.EmployeeID = e.EmployeeID;

-- 주문의 고객명, 직원명(lastName + FirstName)

SELECT o.OrderID, c.CustomerName, concat(e.LastName,',', e.FirstName) AS EmployeeName -- 너무 길어 별칭부여
FROM Orders o 
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Employees e ON o.EmployeeID = e.EmployeeID;

