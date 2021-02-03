USE DunderMifflin
GO

/*
	Script name: Import Data
	Author: Tim Mitchell (tmitchell@tyleris.com)
	Date: 8/5/2020

	Purpose: Import initial data from pipe-delimited files.

	Change log:
		-- 20200806: Changed from a static list of BULK INSERT statements to use a table-driven approach.
						This will make it easier to add new tables as well as to change the directory name
						for the data files.
*/


SET NOCOUNT ON
GO

DECLARE @Folder VARCHAR(500)
SET @Folder = 'E:\github\DunderMifflin\DataFiles\'


DECLARE @Files TABLE (ID SMALLINT, [FileName] NVARCHAR(100), [TableName] NVARCHAR(100))

INSERT @Files
SELECT 1, 'Regions.txt', '[dbo].[Regions]'
UNION ALL SELECT 2, 'Suppliers.txt'			, '[dbo].[Suppliers]'
UNION ALL SELECT 3, 'Shippers.txt'			, '[dbo].[Shippers]'
UNION ALL SELECT 4, 'Categories.txt'		, '[dbo].[Categories]'
UNION ALL SELECT 5, 'EmployeeStatus.txt'	, '[dbo].[EmployeeStatus]'
UNION ALL SELECT 6, 'Employees.txt'			, '[dbo].[Employees]'
UNION ALL SELECT 7, 'Customers.txt'			, '[dbo].[Customers]'
UNION ALL SELECT 8, 'Products.txt'			, '[dbo].[Products]'
UNION ALL SELECT 9, 'Orders1.txt'			, '[dbo].[Orders]'
UNION ALL SELECT 10, 'Orders2.txt'			, '[dbo].[Orders]'
UNION ALL SELECT 11, 'OrderDetails1.txt'	, '[dbo].[OrderDetails]'
UNION ALL SELECT 12, 'OrderDetails2.txt'	, '[dbo].[OrderDetails]'

DECLARE @sql NVARCHAR(1000)
DECLARE @i INT = 1
WHILE @i <= (SELECT MAX(ID) FROM @Files)
BEGIN
	DECLARE @ThisFile NVARCHAR(100), @ThisTable NVARCHAR(100)
	SELECT @ThisFile = [FileName] 
		, @ThisTable = [TableName]
	FROM @Files WHERE ID = @i

	SET @sql = N'
	BULK INSERT ' + @ThisTable + '
	FROM ''' + @folder + @ThisFile + '''
	WITH (
		KEEPIDENTITY
		, DATAFILETYPE = ''char''
		, FIELDQUOTE = ''"''
		, FIELDTERMINATOR = ''|''
		, ROWTERMINATOR = ''\n''
	)'

	EXEC sp_executesql @sql

	SET @i = @i + 1
END


/***************************************************************************************/

