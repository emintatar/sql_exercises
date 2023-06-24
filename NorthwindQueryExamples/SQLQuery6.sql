use Northwind;

-- Şirket adı 'A' ile başlayan müşteriler hangileridir?
select *
from Customers
where CompanyName like 'A%';

-- Fax ve Regino kısımları null olan müşteriler hangileridir?
select *
from Customers
where Fax is null and Region is null;

-- CustomerID'si 'AA' ile biten müşteriler hangileridir?
select *
from Customers
where CustomerID like '%AA';