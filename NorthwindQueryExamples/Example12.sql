use Northwind

-- Çalışanlar ne kadarlık satış yapmışlar
select e.FirstName + ' ' + e.LastName as FullName, SUM(od.UnitPrice*od.Quantity) as TotalSales
from Employees e
inner join Orders o
on e.EmployeeID = o.EmployeeID
inner join [Order Details] od
on o.OrderID = od.OrderID
group by e.FirstName + ' ' + e.LastName

select FullName, SUM(Sales)
from (
	select e.FirstName + ' ' + e.LastName as FullName, (od.Quantity*od.UnitPrice) as Sales
	from Employees e
	inner join Orders o
	on e.EmployeeID = o.EmployeeID
	inner join [Order Details] od
	on o.OrderID = od.OrderID
)
as SubQuery
group by FullName

-- Hangi sipariş ne kadar kazandırdı
select o.OrderID as [Order], SUM(od.Quantity*od.UnitPrice*(1-od.Discount)) as Sales
from Orders as o
inner join [Order Details] as od
on o.OrderID = od.OrderID
group by o.OrderID

-- 50'den fazla satışı olan çalışanları bul
select e.FirstName + ' ' + e.LastName as FullName , count(o.OrderID) as OrderCount
from Employees e
inner join Orders o
on e.EmployeeID = o.EmployeeID
group by e.FirstName + ' ' + e.LastName
having count(o.OrderID) > 50