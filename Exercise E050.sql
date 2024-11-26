--Exercise E050

--Exercise 1

select Title, min(HireDate) as "First Employed" from Employees group by Title order by [First Employed] asc

--Exercise 2

select ProductID, avg(UnitPrice) as "Avearge Unit Price", avg(Quantity) as "Average Quantity" from [Order Details] group by ProductID

--Exercise 3

select Country, count(SupplierID) as "Number of Suppliers" from Suppliers where Country in ('USA', 'Japan') group by Country order by [Number of Suppliers] desc  

--Exercise 4

select City, count(EmployeeID) as "Number of Employees" from Employees group by City having count(*) > 1 order by [Number of Employees] desc

--Exercise 5

select CategoryID, max(CurrentUnitPrice) as "Maximum Unit Price", min(CurrentUnitPrice) as "Minimum Unit Price" from Products group by CategoryID 

--Exercise 6

select CategoryID, avg(UnitsInStock) as "Average Units in Stock" from Products group by CategoryID having avg(UnitsInStock)>40 

--Exercise 7

select CustomerID, count(OrderID) as "Number of Orders" from Orders group by CustomerID having count(*)>10 order by [Number of Orders] desc

--Exercise 8

select top 3 CustomerID, count(OrderID) as "Number of Orders" from Orders group by CustomerID having count(*)>10 order by [Number of Orders] desc

--Exercise 9

select OrderDate, count(OrderID) as "Number of Orders" from Orders group by OrderDate having count(*)>1

--Exercise 10

select top 1 datename(month, OrderDate) as "Top Month", count(OrderID) as "Number of Orders" from Orders where year(OrderDate) = 2018 group by month(OrderDate), datename(month, OrderDate) having count(OrderID) > 1 order by [Number of Orders] desc

