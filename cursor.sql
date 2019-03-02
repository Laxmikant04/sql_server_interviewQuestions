Cursor -
	cursors are database object generally used to iterate through result set row by row.
	they are simile to for and foreach loop .
	
Life cycle -
	1.declare cursor
	2.open cursor
	3.fetch cursor
	4.close cursor
	5.deallocate cursor

Example -
	
	declare @id varchar(20)
	declare @name varchar(50)
	
	declare test_cursor cursor for
		select id , name from table employee.
	
	open test_cursor
		
	fetch next from test_cursor
		into @id ,@name
	
		while @@FETCH_STATUS =0
			print @id +' ' +@name
			
			fetch next from test_cursor
			into @id ,@name
			
	close test_cursor

	DEALLOCATE test_cursor	

Limitation-
	1. cursor used system memory so it use up the memoryof other processes.
	2. cursor are slow s it processes result set row by row.


Alternative -
	1. some time joins can be used as the alternative for cursor , for example fetching rows from two table based on some common colunm.


close Vs deallocate-
	1.close releases the current result set and any lock held by cursor 
		while deallocation deletes/removes the cursor definition from system memory itself 	.
	2. a cursor can be open again after closing it , while it's not possible after deallocation.
	3.  deallocation closes the cursor by default, white vise versa it not true.	