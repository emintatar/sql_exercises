use Northwind;

-- Çalışanlar ne kadar satış yapmışlar?
select e.FirstName + ' ' + e.LastName, sum(od.UnitPrice * od.Quantity) as TotalSales
from Employees e
inner join Orders o 
on e.EmployeeID = o.EmployeeID
inner join [Order Details] od
on o.OrderID = od.OrderID
group by e.FirstName + ' ' + e.LastName

-- Hangi sipariş ne kadar kazanç getirmiş?
select o.OrderID, sum((od.UnitPrice * od.Quantity) * (1 - Discount))  as TotalSales
from Orders o
inner join [Order Details] od
on o.OrderID = od.OrderID
group by o.OrderID

-- 50'den fazla satışı olan çalışanları bulunuz.
select e.FirstName + ' ' + e.LastName as EmployeeName, count(o.orderID) as TotalOrders
from Employees e
inner join Orders o
on e.EmployeeID = o.EmployeeID
group by e.FirstName + ' ' + e.LastName
having count(o.orderID) > 50