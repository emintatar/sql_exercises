use Northwind;

-- Londra ve Pariste yaşayan müşterileri listeleyiniz.
select *
from Customers
where City in ('London', 'Paris');

-- Adı 'A' ile başlayan şirketlerin müşterilerini listeleyiniz.
select *
from Customers
where CompanyName like 'A%';

-- 50 TL ile 100 TL arasında bulunan tüm ürünlerin adları ve fiyatları nelerdir?
select ProductName, UnitPrice
from Products
where UnitPrice between 50 and 100;