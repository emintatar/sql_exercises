use Northwind;

-- Ortalamanın altında bir fiyata sahip ürünlerin adı ve fiyatı nedir?
select ProductName, UnitPrice
from Products
where UnitPrice < (
	select avg(UnitPrice)
	from Products
)

-- Hangi müşteriler hiç sipariş vermemişlerdir?
select *
from Customers
where CustomerID not in (
	select CustomerID
	from Orders
)

-- Hangi ürün hangi kategoriye aittir?
select p.ProductName, c.CategoryName
from Products p 
inner join Categories c
on p.CategoryID = c.CategoryID
group by p.ProductName, c.CategoryName