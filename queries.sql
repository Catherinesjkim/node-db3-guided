-- Using Joins - very useful at real life work

-- product data and supplier data
SELECT p.ProductID, p.ProductName, s.SupplierName, s.Phone
FROM Products as p
JOIN Suppliers as s
  ON p.SupplierID = s.SupplierID;

-- the category name in addition to the product data
SELECT c.CategoryName as CategoryName, p.*
FROM Products as p
JOIN Categories as c
  ON p.CategoryID = p.CategoryID;

-- the category name and supplier name in addition to the product data
SELECT c.CategoryName as Category, p.ProductName, p.Price, s.SupplierName as SuppliedBy
FROM Products as p
JOIN Categories as c
  ON p.CategoryID = c.CategoryID
JOIN Suppliers as s

-- all suppliers, even if they have no products associated with them
SELECT * 
FROM [Suppliers] as s 
LEFT JOIN Products as p -- the key is the LEFT join
	ON s.SupplierID = p.SupplierID;

