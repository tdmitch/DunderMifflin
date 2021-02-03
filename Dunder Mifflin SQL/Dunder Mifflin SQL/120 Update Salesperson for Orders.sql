USE DunderMifflin
GO

/*
	Script name: Update Salesperson for Orders
	Author: Tim Mitchell (tmitchell@tyleris.com)
	Date: 8/5/2020

	Purpose: This script does some ugly weighted salesperson logic to define which salespersons made which sales.
			Note that the initial data loaded in the v1 data files already has these changes applied.

	Change log:
		-- 
*/

IF (OBJECT_ID('tempdb..#Salespeople') IS NOT NULL)
	DROP TABLE #Salespeople
GO

SELECT *
INTO #Salespeople
FROM (
	SELECT 4 EmployeeID, CAST('1996-04-04' AS date) StartDate, CAST('2013-03-16' AS date) EndDate, 5 [SalesWeight]
	UNION ALL SELECT 6 , '2001-08-11', GETDATE(), 3
	UNION ALL SELECT 10, '1998-12-04', '2013-05-16', 7
	UNION ALL SELECT 20, '1988-08-11', '2012-03-08', 7
	UNION ALL SELECT 38, '2012-09-20', GETDATE(), 3
	UNION ALL SELECT 39, '2012-01-01', GETDATE(), 11
	UNION ALL SELECT 43, '2010-10-21', GETDATE(), 9
	UNION ALL SELECT 55, '2004-05-02', GETDATE(), 6
	UNION ALL SELECT 21, '2002-03-01', 'September 1, 2011', 1
	UNION ALL SELECT 28, '2003-04-01', 'September 27, 2007', 5
	UNION ALL SELECT 7, '1994-01-02', 'May 9, 2013', 9
	UNION ALL SELECT 5, '1992-05-06', '9/10/2001', 6
) t


IF (OBJECT_ID('tempdb..#SalesPeopleWeighted') IS NOT NULL)
	DROP TABLE #SalesPeopleWeighted
GO 

CREATE TABLE #SalesPeopleWeighted (Num SMALLINT, EmployeeID INT, StartDate DATE, EndDate DATE, SalesWeight TINYINT)
GO

DECLARE @i INT = 1
WHILE @i <= (SELECT MAX(SalesWeight) FROM #Salespeople)
BEGIN
	INSERT #SalesPeopleWeighted
	SELECT @i [Num]
		, EmployeeID
		, StartDate
		, EndDate
		, SalesWeight
	FROM #Salespeople
	WHERE SalesWeight >= @i

	SET @i = @i + 1
END


;WITH cte2 AS (
	SELECT NEWID() [ID]
		, o.OrderID
		, s.EmployeeID
	FROM #SalesPeopleWeighted s
	INNER JOIN dbo.Orders o
		ON o.OrderDate BETWEEN s.StartDate AND s.EndDate
)
, cte AS (
	SELECT ROW_NUMBER() OVER (PARTITION BY cte2.OrderID ORDER BY cte2.ID) [RowNum] -- Create a semi-random, semi-weighted ranking for matching orders to salespersons
		 , cte2.OrderID
		 , cte2.EmployeeID
	FROM cte2
)


UPDATE o
SET o.EmployeeID = s.EmployeeID
FROM dbo.Orders o
INNER JOIN cte
	ON cte.OrderID = o.OrderID
INNER JOIN #SalesPeopleWeighted s
	ON s.EmployeeID = cte.EmployeeID
	AND cte.RowNum = 1


