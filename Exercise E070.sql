--Exercise E070

--Exercise 1

select ProductName from Products where SupplierID like (select SupplierID from Suppliers where CompanyName like '%Pavlova%') 

--Exercise 2

select sum(Quantity) as "Total Tofu Sold" from [Order Details] where ProductID = (select ProductID from Products where ProductName = 'Tofu') 

--Exercise 3

select count(*) as "Orders Made by Robert King" from Orders where EmployeeID = (select EmployeeID from Employees where FirstName = 'Robert' and LastName = 'King') and OrderDate between '2017-05-01' and '2017-05-31'

--Exercise 4

select ProductName, UnitsOnOrder from Products where CategoryID = (select CategoryID from Categories where CategoryName = 'Confections' and UnitsOnOrder > 0)

--Exercise 5

select ProductName from Products where CurrentUnitPrice = (select CurrentUnitPrice from Products where ProductName = 'Chang')

--Exercise 6

select ProductName from Products where CurrentUnitPrice > (select CurrentUnitPrice from Products where ProductName = 'Tofu')

--Exercise 7

select CustomerID, ContactName, CompanyName from Customers where CustomerID in (select CustomerID from Orders group by CustomerID having count(*) > 15)

--Exrcise 8

select LastName from Employees where HireDate = (select max(Hiredate) from Employees)

--Exercise 9

select * from Products where ProductID not in (select ProductID from [Order Details] group by ProductID) --Should be Correct (Database is broken?)

--Exercise 10

select OrderID, ProductID, Quantity, UnitPrice, discount, round(unitprice * (1 - discount) * quantity, 2) as totalvalue from [Order Details] where round(unitprice * (1 - discount) * quantity, 2) = (select max(round(unitprice * (1 - discount) * quantity, 2)) from [Order Details]);

--Exercise 11

select City, CompanyName from Customers where City = (select top 1 City from Customers group by City order by count(*) desc)

--Exercise 12

select ProductName from Products where CurrentUnitPrice = (select max(CurrentUnitPrice) from Products)

--Exercise 13

select ProductName from Products where ProductID in (select ProductID from [Order Details] group by ProductID having count(OrderID) > 50) 

--Exercise 14

select CompanyName from Customers where CustomerID not in (select CustomerID from Orders)
