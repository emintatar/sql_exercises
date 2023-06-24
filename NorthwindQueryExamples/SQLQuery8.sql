use Northwind

-- En ucuz 5 ürünün ortalama fiyatı nedir?
select AVG(enUcuz5Urun.KdvDahilFiyat) as OrtalamaFiyat
from (
	select top 5 UnitPrice + UnitPrice * 0.18 as KdvDahilFiyat
	from Products
	order by UnitPrice + UnitPrice * 0.18 asc
)
as enUcuz5Urun

-- Ürün adlarını büyük harfe çevirip getiriniz.
select UPPER(ProductName) as UpperProductName
from Products

-- Stoğu olmayan ürün adedini bulunuz.
select count(*) as StoguOlmayanUrunAdedi
from Products
where UnitsInStock = 0