use Northwind

-- Ürünlerin kdv dahil ve kdv hariç fiyatlarını bulunuz.
select ProductName, UnitPrice as KdvHaric, UnitPrice * 0.18 + UnitPrice as KdvDahil
from Products

-- Kdv'si 10 TL'den düşük olan ürünleri bulunuz.
select ProductName, UnitPrice * 0.18 as Kdv
from Products
where UnitPrice * 0.18 < 10

-- En pahalı 5 ürünü bulunuz.
select top 5 ProductName , UnitPrice * 0.18 + UnitPrice as KdvDahil
from Products
order by UnitPrice * 0.18 + UnitPrice desc