USE test;

SELECT now();

SELECT * FROM Customers
WHERE NOT EXISTS (SELECT now());

SELECT * FROM Customers
WHERE EXISTS (SELECT now());


-- w3schools
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName 
				FROM Products 
				WHERE Products.SupplierID = Suppliers.supplierID 
                AND Price < 20);
                
DESC Suppliers;