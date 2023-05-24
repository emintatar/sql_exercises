use Northwind

-- Ürünlerin KDV dahil ve KDV hariç fiyatlarını yazdır
select ProductName, UnitPrice as WithoutKdv, (UnitPrice + UnitPrice*0.18) as WithKdv
from Products

-- KDV'si 10 TL'den düşük ürünleri yazdır
select ProductName, (UnitPrice*0.18) as KdvPrice
from Products
where (UnitPrice*0.18) < 10

-- En pahalı 5 ürün nelerdir
select top 5 *
from Products
order by UnitPrice desc