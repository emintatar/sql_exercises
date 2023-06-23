use Northwind;

-- Doğum tarihi 1960-05-29 dan büyük olan çalışanları listeleyiniz.
select *
from Employees
where BirthDate > '1960-05-29';

-- Adresinin içinde 'House' geçen çalışanları listeleyiniz.
select *
from Employees
where [Address] like '%House%';

-- Extension kolonu 3 haneli olan çalışanları listeleyiniz.
select *
from Employees
where LEN(Extension) = 3;