--Exercise E030

--Exercise 1

select * from Customers where ContactTitle like 'Sales%' and country in ('Germany', 'France')

--Exercise 2

select * from Customers where not ContactTitle like 'Sales%' and country in ('Germany', 'France')

--Exercise 3

select * from Employees where (Title like 'Sales Representative' and TitleOfCourtesy in ('Ms.', 'Mrs.')) or (Title like 'Sales Manager' and TitleOfCourtesy like 'Mr');

--Exercise 4

select companyname, contactname from Customers where ContactName like 'a%' or ContactName like '%a'

--Exercise 5

select ContactName from Customers where fax is null or phone is null

--Exercise 6

select * from Products where ProductName in ('Chai', 'Konbu', 'Tofu') order by ProductName desc

--Exercise 7

select ShippedDate from Orders where ShippedDate between '9/8/2016' and '10/9/2016' 

--Exercise 8

select ProductName, QuantityPerUnit, UnitsInStock from Products where (QuantityPerUnit like '10%' or QuantityPerUnit like '32%') and UnitsInStock > 10 and QuantityPerUnit not like '%100%';

