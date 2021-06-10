SELECT * FROM Customers;

SELECT COUNT(*) FROM Customers; -- 91 개 레코드가 있음

SELECT Country, Count(*) cnt
FROM Customers
GROUP BY Country
ORDER BY cnt DESC;

SELECT count(CustomerID), Country FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
WHERE LastName = 'Davolio' OR LastName = 'Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;
