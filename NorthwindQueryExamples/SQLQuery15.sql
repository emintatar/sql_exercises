use Northwind;

-- Sipariş tarihleri 1 haziran 1996 ile 31 kasım 1993 tarihleri arasındaki siparişlerin orderid değerlerini gösteriniz.
SELECT OrderID
FROM Orders
WHERE OrderDate BETWEEN '1993-11-30' AND '1996-06-01';

-- Kaç farklı ülkeye ihracat yapılmıştır?
select count(distinct Country) as CountryCount
from Customers

-- ALFKI customerid değerine sahip müşterinin sipariş sayısı nedir?
select COUNT(*) as OrderCount
from Customers c
inner join Orders o 
on c.CustomerID = o.CustomerID
where c.CustomerID = 'ALFKI'