SELECT * FROM Customers
ORDER BY CustomerID DESC;

INSERT INTO Customers
(CustomerID, CustomerName,
 ContactName, Address, 
 City, PostalCode, Country)
VALUES
(93, 'Kim', 'Lee', 'Gangnam', 'Seoul', '00000', 'Korea');

INSERT INTO Customers -- 모든 컬럼에 생략하고 한번에 넣을 수 있다.
VALUES
(93, 'Kim', 'Lee', 'Gangnam', 'Seoul', '00000', 'Korea');

INSERT INTO Customers -- 특정 컬럼에만 값을 넣어줄수도있음
(CustomerID, CustomerName, ContactName)
VALUES
(95,'Back','Seoul');

INSERT INTO Customers
(CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Trump','Donald','NY','NY','000','US');

-- 테이블 설명 보기
DESC Customers;

DESC Employees;

SELECT * FROM Employees
ORDER BY EmployeeID DESC;
