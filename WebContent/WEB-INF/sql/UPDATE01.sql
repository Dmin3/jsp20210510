SELECT * FROM Customers;

UPDATE Customers
SET CustomerName = '스파이더맨';

UPDATE Customers
SET CustomerName = '아이언맨'
WHERE CustomerID = 1;

UPDATE Customers
SET CustomerName = 'thor',
	ContactName ='odinson',
    Addresss = 'Asgard'
    WHERE CustomerID = 1;
    
UPDATE Customers
SET City = 'Seoul', Country = 'Korea'
WHERE CustomerID = 32;

SELECT * FROM Employees;

