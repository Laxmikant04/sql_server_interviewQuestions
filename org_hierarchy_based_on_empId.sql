
declare @ID int;
set @ID= 7;

with EmployeeCTE AS
(
	select EmployeeID,EmployeeName,ManagerID
	from EmployeeHierarchy
	where EmployeeID= @ID
	
	UNION All
	
	select EmployeeHierarchy.EmployeeID,EmployeeHierarchy.EmployeeName,EmployeeHierarchy.ManagerID
	from EmployeeHierarchy 
	inner join EmployeeCTE
	where EmployeeHierarchy.EmployeeID=EmployeeCTE.ManagerID
	
)

select E1.EmployeeName,ISNULL(E2.EmployeeName,'No Boss') AS 'ManagerName'
from EmployeeCTE E1
left join
EmployeeCTE E2
where E1.EmployeeID=E2.ManagerID