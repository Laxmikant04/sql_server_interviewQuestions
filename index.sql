Indexes-
	- Indexes are responsible for fast data retrival from the table .
	
	-In sql server , data is internally stored in the pages which is of 8kb each.
	- group of 8 pages forms an Extent 
	- when we create a table one extent is assigned to two table, and when the extent assigned to table gets fully occupied
		then new extent gets assign to table automaticlly 
		
sysindexes-
	- sysindexes is a syatem generated tale in sql server which keeps track of indexes on each table within the database.
		even if there in no index on a table, there would be an entry in sysindexes table indicating that there is no index on the table.
		

Type-

Clustered -
		Clustered index are responsible for the physical storage of data with-in the table . thats why there can be only 1 Clustered index on table.
			
	Searching-
		while searching for records with clustered index , sql server will first look into "indid" column of sysindexes table.
		for clustered index "indid" columnwill have value as 1 , then point to the exact colunm in the table from where value would be retrived.
	
	insert/update -
		insert/update in the cluster indexed table are slow as data has to be inserted/updated  in the particular order.
		

Non-clustered-
		Non-clustered index are not responsible for the physical storage of data thats why we can have at max 999 Non-clustered indexes.
	
	searching-
		while searching for records with non-clustered index , sql server will first look into "indid" column of sysindexes table.
		for non-clustered index "indid" column will have value between 2-1000 , then it would point to the pages that contain the table data and not the table data directly.
	
	insert/update -
		insert/update in the non-cluster indexed table will have no impact as it does not determine physical order.


Example-
	create index-
		create [unique][clustered /non clusted] index index_name on table_name(column_list)
		
		by default index are non-clustered.
		
	delete index -
		drop index <indexname> on <object name>
	