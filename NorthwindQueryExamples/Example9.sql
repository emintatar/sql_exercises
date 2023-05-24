use Northwind

-- Stok adedi 20 ile 50 arasındaki ürünleri getir
select *
from Products
where UnitsInStock between 20 and 50 

-- En pahalı ürünü getir
select MAX(UnitPrice) as MaxPrice
from Products

-- Kaç çeşit ürün var
select count(*)
from Products