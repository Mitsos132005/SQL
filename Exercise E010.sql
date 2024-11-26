--Exercises E010

--Exercise 1

select * from Products

--Exercise 2

select * from Customers

--Exercise 3

select CompanyName, ContactName, Country from Customers

--Exercise 4

select * from Shippers order by CompanyName

--Exercise 5

select CompanyName, Country, City from Customers order by Country, City

--Exercise 6

select top 3 * from Categories 

--Because it isn't very specific

--Exercise 7

select Country from Suppliers group by Country

--Exercise 8

select Country, ContactName from Suppliers order by Country, ContactName

--Exercise 9

select OrderDate from Orders

--Exercise 10

select Country, City from Employees order by Country desc, city asc

select FirstName, LastName from Employees order by FirstName desc, LastName asc