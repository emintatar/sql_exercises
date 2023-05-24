use Northwind

-- En ucuz 5 ürünün ortalama fiyatı nedir
select AVG(Subquery.UnitPrice) as AverageCheapestFive
from (
	select top 5 *
	from Products
	order by UnitPrice asc
) as Subquery

-- Ürün adlarını büyüterek getir
select UPPER(ProductName) as UppercasedProductName
from Products

-- Stoğı olmayan ürünler kaç tanedir
select count(*)
from Products
where UnitsInStock = 0