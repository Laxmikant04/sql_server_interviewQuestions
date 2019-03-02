

select * from employee where name like 'M%'

select * from employee where name CharIndex('M',name) =1

select * from employee where name Left(name,1) ='M'

select * from employee where name SUBSTRING(name,1,1) ='M'