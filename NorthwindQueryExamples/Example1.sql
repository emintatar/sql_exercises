use Northwind

-- Çalışanların sayısını listele
select count(*) as EmployeeCount
from Employees

-- Çalışanların ad ve soyadlarını getir
select FirstName + ' ' + LastName as FullName
from Employees

-- Patronları listele
select *
from Employees
where TitleOfCourtesy = 'Dr.'

-- Çalışan kadınları listele
select *
from Employees
where TitleOfCourtesy in('Ms.', 'Mrs.')