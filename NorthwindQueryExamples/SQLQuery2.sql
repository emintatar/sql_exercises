use Northwind;

-- Çalışan erkekleri listeleyiniz.
select * 
from Employees
where TitleOfCourtesy = 'Mr.';

-- Çalışan erkek ve kadın sayısını listeleyiniz.
SELECT
    SUM(CASE WHEN TitleOfCourtesy = 'Mr.' THEN 1 ELSE 0 END) AS CalisanErkekSayisi,
    SUM(CASE WHEN TitleOfCourtesy IN ('Ms.', 'Mrs.') THEN 1 ELSE 0 END) AS CalisanKadinSayisi
FROM Employees;

-- Ürünlerin stok durumlarını listeleyiniz.
SELECT 
    ProductName
    ,UnitsInStock
	,CASE WHEN UnitsInStock > 0 THEN 'Stokta var' ELSE 'Stokta yok' END AS StokDurumu
FROM Products;

-- Ürünlerin stok durumlarını listeleyiniz. (2. yöntem)
select
	ProductName,
    UnitsInStock,
    case when UnitsInStock = 0 then 'Stokta yok' else 'Stokta var' end as StokDurumu
from Products

-- Çalışanlar kaç farklı şehirde çalışmaktadır?
select count(distinct City)
from Employees
