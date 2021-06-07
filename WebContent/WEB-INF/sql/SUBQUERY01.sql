USE test;

-- 1본 고객(알프레드)의 나라
SELECT Country FROM Customers
WHERE CustomerID = 1;
-- Germary
SELECT * FROM Customers
WHERE Country = 'Germany';
--

SELECT * FROM Suppliers;
-- subquery
SELECT * FROM Suppliers
WHERE Country = (SELECT Country FROM Customers WHERE CustomerID = 1);

-- 1번고객(알프레드)와 같은 나라에 있는 공급자(suppliers)목록
SELECT * FROM Suppliers
WHERE Country = (SELECT Country FROM Customers WHERE CustomerID = 1);

-- 직원 Fuller(2) 보다 나이가 많은 사람
SELECT * FROM Employees
WHERE BirthDate < '1952-02-19';

SELECT * FROM Employees
WHERE Country