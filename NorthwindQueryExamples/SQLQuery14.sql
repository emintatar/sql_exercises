use Northwind;

-- Brezilya'da olmayan müşterileri listele.
select *
from Customers 
where Country != 'Brazil';

-- México D.F.'da ikamet eden hem de contact title'ı Owner olan müşterileri listele.
select *
from Customers 
where City = 'México D.F.' and ContactTitle = 'Owner';

-- Satışı yapılmamış ürün listesini getir.
select *
from Products
where Discontinued = 1;