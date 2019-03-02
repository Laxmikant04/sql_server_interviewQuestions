create procedure dummy_sp
 @name varchar(50)
As
Begin
	declare @id int;
	select @id=stud_id from student where SName=@name
	PRINT @id
	if(@id is null)
	begin
		insert into student (SName,[marks]) values(@name,50)
		select @id=SCOPE_IDENTITY()
	end
	SELECT @id
End

exec dummy_sp 'laxmikant_1'

/*
ALTER TABLE student DROP COLUMN stud_id
ALTER TABLE student ADD stud_id INT IDENTITY(1,1)

alter table student
Alter column stud_id  int NOT NULL 

alter table student 
add constraint primary_stident
Primary key clustered (stud_id)

alter table student 
DROP CONSTRAINT primary_stident
*/

