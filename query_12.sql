use Northwind;

-- 100$ ya da 100 TL'den pahalı ürünleri göster.
select *
from Products
where UnitPrice > 100;

-- UnitsInStock değeri 15'in altında olan ürünlerin adı, fiyatı ve UnitsInStock değerini göster.
select ProductName, UnitPrice, UnitsInStock
from Products
where UnitsInStock < 15

-- Brazil'de bulunun müşterilerin şirket adı, temsilci adı, adres, şehir ve ülke bilgilerini göster.
select CompanyName, ContactName, Address, City, Country
from Customers
where Country = 'Brazil'