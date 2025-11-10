Use AdventureWorks2022;

SELECT TOP(10)*FROM sales.SalesOrderHeader;
SELECT Distinct (Color) FROM Production.Product;


SELECT 
        p.FirstName,p.LastName, e.BusinessEntityID,e.JobTitle,e.HireDate From HumanResources.Employee as e
    Join Person.Person as p
    on p.BusinessEntityID = e.BusinessEntityID
    where Jobtitle like '%Manager%';

        
SELECT CustomerID,StoreID,PersonID FROM Sales.Customer
Where PersonID is not NUll;

    SELECt*FROM Sales.SalesOrderHeader
    Where YEAR(OrderDate) = 2022;


Select Count(ProductID) FROM Production.Product;   

Select Count(CustomerID) FROM sales.Customer
Group BY TerritoryID
ORder BY TerritoryID;

Select TotalDue FROM sales.SalesOrderHeader
Where TotalDue > 10000
Order BY TotalDue DESC;

SELECT HireDate, BusinessEntityID, LoginID, JobTitle FROM HumanResources.Employee
Where Year(HireDate)>2015;

SELECT 
    MIN(HireDate) AS EarliestHire,
    MAX(HireDate) AS LatestHire
FROM HumanResources.Employee;

SELECT 
    YEAR(OrderDate) AS OrderYear,
    SUM(TotalDue) AS TotalSales
    FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY OrderYear;


Select TerritoryID,Avg(SubTotal) as Subtotal from Sales.SalesOrderHeader
Group BY TerritoryID
Order BY TerritoryID;

--total quantity sold per product--
Select ProductID, Sum(OrderQty)as OrderQuantity FROM Sales.SalesOrderDetail
Group BY ProductID
Order BY ProductID ASC;

SELECT pc.Name as ProductCategory, pp.Name as ProductName
FROM Production.ProductCategory as pc
Join Production.Product as pp
on
ProductID =ProductCategoryID;




SELECT * FROM Production.Product;

SELECT ProductNumber,ProductLine, ListPrice FROM Production.Product
Where ListPrice = (Select MAX(ListPrice) FROM  Production.Product);


SELECT ProductNumber, ProductLine, ListPrice
FROM Production.Product
WHERE ListPrice = (
    SELECT MAX(ListPrice)
    FROM Production.Product) ;

    Select Max(ListPrice) as ListPrice From Production.Product;

    Select MIN (ListPrice) as MinPrice From Production.Product 
    where ListPrice>0;
