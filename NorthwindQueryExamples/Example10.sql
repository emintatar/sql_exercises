use Northwind

-- En pahalı ürünün adı nedir
select top 1 ProductName, UnitPrice
from Products
order by UnitPrice desc

select ProductName, UnitPrice
from Products
where UnitPrice = (
	select MAX(UnitPrice)
	from Products
)

-- Müşterilerin ülkeler göre sayılarını veren sorgu
select Country, count(*) as [Count]
from Customers
group by Country

-- Her kategoriden kaç tane ürün var
select c.CategoryName, count(*) as ProductCount
from Products as p
inner join Categories as c
on p.CategoryID = c.CategoryID
group by c.CategoryName