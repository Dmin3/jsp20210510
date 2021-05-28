-- WHERE : row를 조건으로 필터
SELECT * 
FROM Customers 
WHERE Country="Mexico";

SELECT*
FROM Customers
WHERE CustomerID = 1;

SELECT * FROM Products
WHERE Price = 18;

SELECT * FROM Products
WHERE Price > 30;

SELECT * FROM Products
WHERE Price < 30;

SELECT * FROM Products
WHERE Price != 30;

SELECT * FROM Products
WHERE Price BETWEEN 50 AND 60;

-- LIKE
SELECT * FROM Customers
WHERE City LIKE 's%'; -- city 안에 s 로 시작하는데 시티들 찾아줌, 대소문자 구분안함

SELECT * FROM Customers
WHERE City LIKE '%g'; -- 맨뒤가 g이면 다 꺼내옴alter

SELECT * FROM Customers
WHERE City LIKE '%z%';

SELECT * FROM Customers
WHERE Country LIKE '%us%';

-- IN
SELECT * FROM Customers
WHERE City IN('Paris','London','Berlin');

SELECT * FROM Customers
WHERE City ='paris' OR City ='London';

-- AND
SELECT * FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin';

-- OR
SELECT * FROM Customers
WHERE City = 'Berlin' OR City ='München';

-- 혼합해서 사용해보기
SELECT * FROM Customers
WHERE Country ='Germany' OR 
(CustomerName LIKE '%s' AND City LIKE '%ch%'); 

SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');

-- NOT
SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';
