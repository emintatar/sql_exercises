use Northwind;

-- Müşterilerin(companyname) içinde en uzun isimli müşterinin isminin harf sayısını bulunuz.
select max(len(CompanyName)) as 'LongestName'
from Customers

-- Hangi üründen toplam kaç adet sipariş verilmiştir?
select p.ProductName, sum(od.Quantity) as 'TotalOrder'
from Products p
inner join [Order Details] od
on p.ProductID = od.ProductID
group by p.ProductName
order by 'TotalOrder' desc

-- 1000 adetten fazla satılan ürünler nelerdir?
select p.ProductID, p.ProductName, sum(od.Quantity) as 'TotalOrder'
from Products p
inner join [Order Details] od
on p.ProductID = od.ProductID
group by p.ProductID, p.ProductName
having sum(od.Quantity) > 1000
order by 'TotalOrder' desc