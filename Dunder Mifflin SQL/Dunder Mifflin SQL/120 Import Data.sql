USE DunderMifflin
GO

/*
	Script name: Import Data
	Author: Tim Mitchell (tmitchell@tyleris.com)
	Date: 8/5/2020

	Purpose: Import initial data from pipe-delimited files.

	Change log:
		-- 
*/

BULK INSERT dbo.Regions
FROM 'E:\Dropbox\Projects\DunderMifflin\DataFiles\Regions.txt'
WITH (
	KEEPIDENTITY
	, DATAFILETYPE = 'char'
	, FIELDQUOTE = '"'
	, FIELDTERMINATOR = '|'
	, ROWTERMINATOR = '\n'
)


BULK INSERT dbo.Suppliers
FROM 'E:\Dropbox\Projects\DunderMifflin\DataFiles\Suppliers.txt'
WITH (
	KEEPIDENTITY
	, DATAFILETYPE = 'char'
	, FIELDQUOTE = '"'
	, FIELDTERMINATOR = '|'
	, ROWTERMINATOR = '\n'
)


BULK INSERT dbo.Shippers
FROM 'E:\Dropbox\Projects\DunderMifflin\DataFiles\Shippers.txt'
WITH (
	KEEPIDENTITY
	, DATAFILETYPE = 'char'
	, FIELDQUOTE = '"'
	, FIELDTERMINATOR = '|'
	, ROWTERMINATOR = '\n'
)


BULK INSERT dbo.Categories
FROM 'E:\Dropbox\Projects\DunderMifflin\DataFiles\Categories.txt'
WITH (
	KEEPIDENTITY
	, DATAFILETYPE = 'char'
	, FIELDQUOTE = '"'
	, FIELDTERMINATOR = '|'
	, ROWTERMINATOR = '\n'
)


BULK INSERT dbo.EmployeeStatus
FROM 'E:\Dropbox\Projects\DunderMifflin\DataFiles\EmployeeStatus.txt'
WITH (
	KEEPIDENTITY
	, DATAFILETYPE = 'char'
	, FIELDQUOTE = '"'
	, FIELDTERMINATOR = '|'
	, ROWTERMINATOR = '\n'
)


BULK INSERT dbo.Employees
FROM 'E:\Dropbox\Projects\DunderMifflin\DataFiles\Employees.txt'
WITH (
	KEEPIDENTITY
	, DATAFILETYPE = 'char'
	, FIELDQUOTE = '"'
	, FIELDTERMINATOR = '|'
	, ROWTERMINATOR = '\n'
)



BULK INSERT dbo.Customers
FROM 'E:\Dropbox\Projects\DunderMifflin\DataFiles\Customers.txt'
WITH (
	KEEPIDENTITY
	, DATAFILETYPE = 'char'
	, FIELDQUOTE = '"'
	, FIELDTERMINATOR = '|'
	, ROWTERMINATOR = '\n'
)


BULK INSERT dbo.Products
FROM 'E:\Dropbox\Projects\DunderMifflin\DataFiles\Products.txt'
WITH (
	KEEPIDENTITY
	, DATAFILETYPE = 'char'
	, FIELDQUOTE = '"'
	, FIELDTERMINATOR = '|'
	, ROWTERMINATOR = '\n'
)



BULK INSERT dbo.Orders
FROM 'E:\Dropbox\Projects\DunderMifflin\DataFiles\Orders1.txt'
WITH (
	KEEPIDENTITY
	, DATAFILETYPE = 'char'
	, FIELDQUOTE = '"'
	, FIELDTERMINATOR = '|'
	, ROWTERMINATOR = '\n'
)


BULK INSERT dbo.Orders
FROM 'E:\Dropbox\Projects\DunderMifflin\DataFiles\Orders2.txt'
WITH (
	KEEPIDENTITY
	, DATAFILETYPE = 'char'
	, FIELDQUOTE = '"'
	, FIELDTERMINATOR = '|'
	, ROWTERMINATOR = '\n'
)


BULK INSERT dbo.OrderDetails
FROM 'E:\Dropbox\Projects\DunderMifflin\DataFiles\OrderDetails1.txt'
WITH (
	KEEPIDENTITY
	, DATAFILETYPE = 'char'
	, FIELDQUOTE = '"'
	, FIELDTERMINATOR = '|'
	, ROWTERMINATOR = '\n'
)


BULK INSERT dbo.OrderDetails
FROM 'E:\Dropbox\Projects\DunderMifflin\DataFiles\OrderDetails2.txt'
WITH (
	KEEPIDENTITY
	, DATAFILETYPE = 'char'
	, FIELDQUOTE = '"'
	, FIELDTERMINATOR = '|'
	, ROWTERMINATOR = '\n'
)


