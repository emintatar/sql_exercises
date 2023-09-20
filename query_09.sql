use Northwind;

-- Stok adedi 20 ile 50 arasındaki ürünleri bulunuz.
select ProductName, UnitsInStock
from Products
where UnitsInStock between 20 and 50;

-- En pahalı ürünü bulunuz.
select top 1 * 
from Products
order by UnitPrice desc

-- En pahalı ürünü bulunuz. (2. Yöntem)
select *
from Products
where UnitPrice = (
	select max(UnitPrice)
	from Products
)

-- Kaç çeşit ürün vardır?
select distinct ProductName
from Products