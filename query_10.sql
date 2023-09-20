use Northwind;

-- En pahalı ürünün adı nedir?
select ProductName, UnitPrice
from Products
where UnitPrice = (
	select max(UnitPrice) from Products
);

-- Müşterilerin ülkelere göre sayıları nedir?
select Country, count(CustomerID) as CustomerCount
from Customers
group by Country

-- Her kategoride kaç ürün vardır?
select c.CategoryName, count(p.ProductName) as ProductCount
from Products p
inner join Categories c
on p.CategoryID = c.CategoryID
group by c.CategoryName
