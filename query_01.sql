use Northwind

-- Çalışanların sayısını bulunuz.
select count(*) as 'CalisanSayisi'
from Employees

-- Çalışanların ad ve soyad bilgilerini gösteriniz.
select FirstName, LastName
from Employees

-- Patronu gösteriniz.
select *
from Employees
where TitleOfCourtesy = 'Dr.'

-- Çalışan kadınları bulunuz.
select *
from Employees
where TitleOfCourtesy in ('Ms.', 'Mrs.')