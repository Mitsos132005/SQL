--Exercise E040

--Exercise 1

select count(*) as "Customers" from Customers 

--Exercise 2

select count(Country) as "Customers from DE" from Customers where Country = 'Germany'

--Exercise 3

select sum(UnitsOnOrder) as "Units On Order" from Products

--Exercise 4

select avg(CurrentUnitCost) as "Average Unit Cost" from Products where UnitsOnOrder = 0

--Exercise 5

select max(Discount) as "Maximum Discount" from [Order Details]

--Exercise 6

select round(sum(UnitPrice * (1 - Discount) * Quantity), 2) as Turnover from [Order Details] 

--Exercise 7

select OrderID, UnitPrice, Quantity, (UnitPrice * Quantity) as Turnover from [Order Details]

--Exercise 8

select LastName, FirstName, ceiling(datediff(y, BirthDate, HireDate) / 365) as "Age Hired" from Employees 

--Exercise 9

select ProductName, CurrentUnitPrice, CurrentUnitPrice + CurrentUnitPrice * 0.02 as "New Increased Unit Price" from Products

--Exercise 10

select ProductName, CurrentUnitPrice, cast(round(CurrentUnitPrice * 1.02, 0) as decimal (10, 0)) as "New Increased Unit Price" from Products 

--Exercise 11

select ProductName, CurrentUnitPrice, cast(round(CurrentUnitPrice + CurrentUnitPrice * 0.02, 0) as decimal (10, 0)) as "New Increased Unit Price" from Products where round(CurrentUnitPrice + CurrentUnitPrice * 0.02, 0) > 50

--Exercise 12

select count(Region) as "Number of Regions" from Employees

--Exercise 13

select upper(concat(substring(LastName, 1, 2), substring(FirstName, 1, 1))) as "New ID Code" from Employees;
