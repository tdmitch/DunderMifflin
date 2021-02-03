USE [master]
GO

/*
	Script name: Create DunderMifflin database
	Author: Tim Mitchell (tmitchell@tyleris.com)
	Date: 8/5/2020

	Purpose: Create the empty DunderMifflin database

	Change log: 
		-- 2021-02-03 Removed file location to make the script more generic (so that
			the default location will be used instead). Also removed some of the
			ALTER DATABASE statements for supportability by older versions of SQL Server.
*/

IF (SELECT 1 FROM sys.databases WHERE name = 'DunderMifflin') IS NOT NULL 
BEGIN 	
	EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'DunderMifflin'
	
	ALTER DATABASE [DunderMifflin] SET  SINGLE_USER WITH ROLLBACK IMMEDIATE
	
	DROP DATABASE [DunderMifflin]
END 

GO


-- Create the empty database
CREATE DATABASE [DunderMifflin]
GO


-- Set database options
ALTER DATABASE [DunderMifflin] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [DunderMifflin] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [DunderMifflin] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [DunderMifflin] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [DunderMifflin] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [DunderMifflin] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [DunderMifflin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [DunderMifflin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [DunderMifflin] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [DunderMifflin] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [DunderMifflin] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [DunderMifflin] SET  MULTI_USER 
GO

ALTER DATABASE [DunderMifflin] SET  READ_WRITE 
GO

