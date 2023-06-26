use Northwind;

-- Beverages kategorisine ait ürünlerin listele.
select * 
from Products p
inner join Categories c 
on p.CategoryID = c.CategoryID
where c.CategoryName = 'Beverages';

-- Michael veya Laura isimli çalışanların hemşerilerini listele.
select *
from Employees
where City in (
	select City
	from Employees
	where FirstName = 'Michael' or FirstName = 'Laura'
) and (FirstName != 'Michael' and FirstName != 'Laura');

-- Ürünlerin karşılarına kategorilerini getir.
select p.ProductName, c.CategoryName
from Products p
inner join Categories c
on p.CategoryID = c.CategoryID
group by p.ProductName, c.CategoryName;