-- Adding sample databases to installed instace
-- MS SQL Server 2014
-- AdventureWorks2014 and AdventureWorksLT
-- Database is availabe as backup from http://msftdbprodsamples.codeplex.com/releases
-- Download and restore it to our instace

-- Check backup file
RESTORE FILELISTONLY FROM DISK = 'F:\AdventureWorks2014.bak'

-- get the logical names

-- while restoring specify the new location of data files if required, that is if you want to store the files in a differnt location than default one.
RESTORE DATABASE AdventureWorks2014
FROM DISK = 'F:\AdventureWorks2014.bak'
WITH MOVE '' TO 'F:\MSSQL\Data\.mdf',
WITH MOVE '_Log' TO 'F:\MSSQL\Data\.ldf'

