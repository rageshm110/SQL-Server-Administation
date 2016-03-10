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
FROM DISK = 'F:\AdventureWorks2014.bak' WITH
MOVE 'AdventureWorks2014_Data' TO 'F:\MSSQL\Data\AdventureWorks2014_Data.mdf',
MOVE 'AdventureWorks2014_Log' TO 'F:\MSSQL\Data\AdventureWorks2014_Log.ldf',
STATS = 1
GO


-- AdventureWorksLT DB
RESTORE FILELISTONLY FROM DISK = 'F:\AdventureWorksLT.bak'

RESTORE DATABASE AdventureWorksLT
FROM DISK = 'F:\AdventureWorksLT.bak' WITH
MOVE 'AdventureWorksLT2008_Data' TO 'F:\MSSQL\Data\AdventureWorksLT_Data.mdf',
MOVE 'AdventureWorksLT2008_Log' TO 'F:\MSSQL\Data\AdventureWorksLT_Log.ldf' ,
STATS = 1
GO

sp_helpdb [AdventureWorks2014];
GO

sp_helpdb [AdventureWorksLT]
GO