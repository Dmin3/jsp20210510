SELECT * FROM Customers;

SELECT * FROM Customers
LIMIT 10;

SELECT * FROM Customers
LIMIT 5;

SELECT * FROM Customers
ORDER BY Country
LIMIT 10;

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 10; -- 인덱스가 하나이면 맨 위에부터


SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 0,10; -- 1번째 페이지

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 10,10; -- 2번째 페이지

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 30,10; -- 3번째 페이지

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 40,10; -- 4번째 페이지
