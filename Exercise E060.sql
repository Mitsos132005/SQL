--Exercise E060

--Exercise 1

select * into tmpProducts from Products
select * from tmpProducts

-- Exercise 2

select * into Orders2 from Orders
select * from Orders2

--Exercise 3

delete from Orders2 where ShipCountry = 'Belgium'
select * from Orders2 where ShipCountry = 'Belgium'

--Exercise 4

select ProductName, CurrentUnitPrice into Foodstuffs from Products where CategoryID in (1, 8)
select * from Foodstuffs

--Exercise 5

insert into Foodstuffs(ProductName, CurrentUnitPrice) select ProductName, CurrentUnitPrice from Products where CategoryID = 2
select * from Foodstuffs

--Exercise 6

select OrderDate from Orders2 where OrderDate like '%2017%'
update Orders2 set ShippedDate = dateadd( d, -10, OrderDate) where OrderDate between '2017-08-01' and '2017-08-31' --Incomplete
select OrderDate from Orders2 where OrderDate like '%2017%'

--Exercise 7

select * into tmpEmployees from Employees
select * from tmpEmployees
alter table tmpEmployees add Salary int 
select Salary from tmpEmployees

--Exercise 8

update tmpEmployees set Salary = 60000 
select Salary from tmpEmployees

--Exercise 9

update tmpEmployees set Salary = Salary + Salary * 0.2 where Title = 'Sales Manager' 
select Salary from tmpEmployees where Title = 'Sales Manager'

--Exercise 10

update tmpEmployees set Salary = Salary * 0.1 where FirstName = 'Anne' and LastName = 'Dodsworth' 
select Salary from tmpEmployees where FirstName = 'Anne' and LastName = 'Dodsworth'

--Exercise 11

insert into Foodstuffs(ProductName, CurrentUnitPrice) values ('Meatballs', 12)
select ProductName, CurrentUnitPrice from Foodstuffs where ProductName = 'Meatballs'

--Exercise 12

insert into Orders2(CustomerID, EmployeeID, OrderDate, RequiredDate) values ('ANATR', 3, '2018-10-30', '2018-11-30') 
select CustomerID, EmployeeID, OrderDate, RequiredDate from Orders2 where CustomerID = 'ANATR'

--Exercise 13

select CurrentUnitPrice from tmpProducts
update tmpProducts set CurrentUnitPrice = CurrentUnitPrice + CurrentUnitPrice * 0.1	
select CurrentUnitPrice from tmpProducts