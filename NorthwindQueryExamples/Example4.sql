use Northwind

-- Çalışanların yaşlarını bul
select FirstName + ' ' + LastName as FullName, DATEDIFF(YEAR, BirthDate, GETDATE()) as Age
from Employees

-- En genç çalışanı bul
select top 1 FirstName + ' ' + LastName as FullName, DATEDIFF(YEAR, BirthDate, GETDATE()) as Age
from Employees
order by Age asc

-- Çalışanların işe kaç yaşında başladıklarını bul
select FirstName + ' ' + LastName as FullName, DATEDIFF(YEAR, BirthDate, HireDate) as HireAge
from Employees

-- Region kolonu null olanları listele
select *
from Employees
where Region is null