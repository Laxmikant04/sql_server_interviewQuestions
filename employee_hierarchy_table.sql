Create table EmployeeHierarchy
(
 EmployeeID int primary key identity,
 EmployeeName nvarchar(50),
 ManagerID int foreign key references EmployeeHierarchy(EmployeeID)
)
GO

Insert into EmployeeHierarchy values ('John', NULL)
Insert into EmployeeHierarchy values ('Mark', NULL)
Insert into EmployeeHierarchy values ('Steve', NULL)
Insert into EmployeeHierarchy values ('Tom', NULL)
Insert into EmployeeHierarchy values ('Lara', NULL)
Insert into EmployeeHierarchy values ('Simon', NULL)
Insert into EmployeeHierarchy values ('David', NULL)
Insert into EmployeeHierarchy values ('Ben', NULL)
Insert into EmployeeHierarchy values ('Stacy', NULL)
Insert into EmployeeHierarchy values ('Sam', NULL)
GO

Update EmployeeHierarchy Set ManagerID = 8 Where EmployeeName IN ('Mark', 'Steve', 'Lara')
Update EmployeeHierarchy Set ManagerID = 2 Where EmployeeName IN ('Stacy', 'Simon')
Update EmployeeHierarchy Set ManagerID = 3 Where EmployeeName IN ('Tom')
Update EmployeeHierarchy Set ManagerID = 5 Where EmployeeName IN ('John', 'Sam')
Update EmployeeHierarchy Set ManagerID = 4 Where EmployeeName IN ('David')
GO