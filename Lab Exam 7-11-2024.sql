--Lab Exam 7/11/2024

--Question 1

--Query given with eorrs:

select e.LastName Employee, e.City stad, s.CompanyName shipper, count(*) 'Number of Shippings' from Employees e inner join Orders o on e.EmployeeID = s.EmployeeID inner join shippers s on o.ShipVia = s.ShipperID
where e.City like 'L_' or e.City like 'S_' and count(*) > 35 group by e.LastName, e.City order by 1 asc, 5 asc;

--Corrected Query:

select e.LastName Employee, e.City stad, s.CompanyName shipper, count(*) 'Number of Shippings' from Employees e inner join Orders o on e.EmployeeID = o.EmployeeID inner join shippers s on o.ShipVia = s.ShipperID
where e.City in (select e.City from Employees where e.City like 'L_' and e.City like 'S_') and count (*) > 35 group by e.LastName, e.City, s.CompanyName order by 1 asc, 4 asc;

--Question 2

select LastName, FirstName, City, count(*) as "OrdersMade" from Employees where EmployeeID in (select EmployeeID from Orders where Country = 'US') group by LastName order by LastName

--Question 3

select LastName, count(*) as "Number of Orders" from Employees where EmployeeID in (select EmployeeID from Orders) group by LastName order by LastName desc

--Question 4

--1st SQL Query

select * into ProductsCopy from Products

--2nd SQL Query

update ProductsCopy set Discontinued = 1 where SupplierID in (select SupplierID from Suppliers where CompanyName like 'Speciality')

--3rd SQL Query

update ProductsCopy set CurrentUnitPrice = CurrentUnitPrice + CurrentUnitPrice * 0.05 where SupplierID in (select SupplierID from Suppliers where Country = 'UK')

--4th SQL Query

update ProductsCopy set CurrentUnitCost = CurrentUnitCost - CurrentUnitCost * 0.02 where SupplierID not in (select SupplierID from Products where Discontinued = 1) 
 
--5ht SQL Query

drop table ProductsCopy

--Question 5

select UnitPrice * Quantity * (1 - Discount) as "Total Value", (UnitPrice * Quantity * (1 - Discount)) / count(OrderID) as "% Contribution" from [Order Details] 