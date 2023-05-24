use Northwind

-- Çalışan erkekleri listele
select *
from Employees
where TitleOfCourtesy = 'Mr.'

-- Çalışan erkek sayılarını bul
select count(*) as MaleEmployeeCount
from Employees
where TitleOfCourtesy in('Mr.')

-- Çalışan kadın sayılarını bul
select count(*) as FemaleEmployeeCount
from Employees
where TitleOfCourtesy in('Ms.','Mrs.')

-- Çalışanlar kaç farklı şehirde çalışıyor listele
select distinct City
from Employees