use Northwind;

-- Çalışanların yaşlarını bulunuz.
select FirstName, LastName,YEAR(GETDATE()) - YEAR(BirthDate) as Age
from Employees;

-- Çalışanların yaşlarını bulunuz. (Yöntem 2)
select FirstName, LastName, DATEDIFF(YEAR,BirthDate,GETDATE()) as Age
from Employees;

-- Çalışanların işe kaç yaşında başladıklarını bulunuz.
select FirstName, LastName, DATEDIFF(YEAR,BirthDate,HireDate)
from Employees;

-- Region kolonu null olan kayıtları bulunuz.
select *
from Employees
where Region is null;