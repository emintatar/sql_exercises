-- Query 1
use Northwind

-- Query 2
select * 
from Customers

-- Query 3
select CompanyName Adi, ContactName SirketAdi, City Sehir 
from Customers

-- Query 4
select *
from Customers
where City = 'Berlin'

-- Query 5
select *
from Products
where CategoryId = 1 or CategoryID = 3

  
-- Query 6
select *
from Products
where CategoryID = 1 and UnitPrice > 10

-- Query 7
select *
from Products
order by ProductName

-- Query 8
select *
from Products
order by CategoryID, ProductName

-- Query 9
select count(*)
from Products
where CategoryID = 3

-- Query 10
select CategoryID, count(*)
from Products
where UnitPrice > 20
group by CategoryID
having count(*) < 10

-- Query 11
select Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName
from Products
inner join Categories
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice > 10

-- Query 12
select *
from Products p
inner join [Order Details] od
on p.ProductID = od.ProductID

-- Query 13
select *
from Products p
inner join [Order Details] od
on p.ProductID = od.ProductID
inner join Orders o
on od.OrderID = o.OrderID

-- Query 14
select *
from Customers c
left join Orders o
on c.CustomerID = o.CustomerID
where o.CustomerID is null