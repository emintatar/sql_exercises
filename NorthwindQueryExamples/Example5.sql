use Northwind

-- Çalışanların adlarını a'dan z'ye listele
select FirstName
from Employees
order by FirstName asc

-- Çalışanların adlarını z'den a'ya listele
select FirstName
from Employees
order by FirstName desc


-- Çalışanların adlarını a'dan z'ye soyadlarını z'den a'ya listele
select FirstName, LastName
from Employees
order by FirstName asc, LastName desc

-- Çalışanların ortalama yaşını bul
select AVG(DATEDIFF(YEAR, BirthDate, GETDATE())) as AverageAge
from Employees