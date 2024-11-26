--Exercise E020

--Exercise 0

select CurrentUnitPrice from Products where ProductName = 'Chai'

select unitprice from [Order Details] where ProductID = 1 group by UnitPrice

--Exercise 1

select LastName, FirstName from Employees where TitleOfCourtesy like 'Mr.'

--Exercise 2

select * from Orders where OrderDate>'7/10/2016'

--Exercise 3

select * from Orders where OrderDate>'7/10/2016' order by CustomerID

--Exercsise 4

select companyname from Customers where City='Paris'

--Exercise 5

select lastname, Title, HireDate from Employees where HireDate>'1/1/2014'

--Exercise 6

select orderid from Orders where OrderDate='10/4/2016'

select * from [Order Details] where OrderID='11285'

--Exercsise 7

select lastname, firstname, region from Employees where Region is null

--Exercise 8

select CompanyName, Address, PostalCode, Country from Customers where PostalCode like 'w%'

--Exercise 9

select CompanyName, Address, PostalCode, Country from Customers where PostalCode like '_x%' or PostalCode like '_a%' order by Country, PostalCode

--Exercise 10

select companyname from Suppliers where Fax is null order by CompanyName desc

--Exercise 11

select companyname from Suppliers where Fax is not null order by CompanyName desc
 