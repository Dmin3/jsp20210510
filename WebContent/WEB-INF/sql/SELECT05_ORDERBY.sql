-- ORDER BY 정렬
SELECT * FROM Customers
ORDER BY Country DESC; -- 기본값 ASC(생략가능) , 역순 DESC

SELECT * FROM Customers
ORDER BY Country DESC, City ASC;