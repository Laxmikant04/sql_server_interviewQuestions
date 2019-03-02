

--with out count
select top 1 d.departmentName
from Employee E
inner join Department D
on E.departmentId=D.departmentId
GROUP by d.departmentName
order by count(*) desc

--with count
select top 1 d.departmentName ,count(*) As employeeCount
from Employee E
inner join Department D
on E.departmentId=D.departmentId
order by count(*) desc
GROUP by d.departmentName