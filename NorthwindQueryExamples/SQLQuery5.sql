use Northwind;

-- Çalışanların adlarını a'dan z'ye ve z'den a'ya sıralayınız.
select *
from Employees
order by FirstName asc

select *
from Employees
order by FirstName desc

-- Çalışanların adlarını a'dan z'ye soyadlarını z'den a'ya sıralayınız.
select *
from Employees
order by FirstName asc, LastName desc

-- Çalışanların ortalama yaşını bulunuz.
select AVG(DATEDIFF(YEAR, BirthDate, GETDATE())) as AvgAge
from Employees