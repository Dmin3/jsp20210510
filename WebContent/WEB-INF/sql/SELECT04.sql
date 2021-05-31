SELECT * FROM Customers
WHERE CustomerID = 1;

SELECT CustomerName, City
FROM Customers
WHERE CustomerID = 1;

SELECT CustomerID, CustomerName, City
FROM Customers
WHERE CustomerID = 2;

SELECT CustomerID
FROM Customers;

SELECT * FROM Employees
WHERE EmployeeID = 1;

SELECT DISTINCT City FROM Customers -- 중복된 city 제거 하고 다 불러옴
ORDER BY City; -- 오름차순으로 결과를 보여줌

SELECT CustomerName, City FROM Customers
WHERE CustomerID;

SELECT LastName ,FirstName FROM Employees;

SELECT EmployeeID, LastName ,FirstName 
FROM Employees;

SELECT EmployeeID, LastName ,FirstName, Notes 
FROM Employees;

