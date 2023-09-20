use Northwind;

-- Bütün nakliyecileri listeleyin.
select *
from Shippers;

-- Hangi çalışan hangi bölgelerde çalışmaktadır?
select e.FirstName, e.LastName, t.TerritoryDescription
from Employees e
inner join EmployeeTerritories et 
on e.EmployeeID = et.EmployeeID
inner join Territories t
on et.TerritoryID = t.TerritoryID;

-- Hangi tedarikçiler hangi ürünleri tedarik etmektedir?
select s.CompanyName, p.ProductName
from Products p
inner join Suppliers s
on p.SupplierID = s.SupplierID;