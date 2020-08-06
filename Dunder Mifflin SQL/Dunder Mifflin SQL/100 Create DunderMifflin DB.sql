USE [master]
GO

/*
	Script name: Create DunderMifflin database
	Author: Tim Mitchell (tmitchell@tyleris.com)
	Date: 8/5/2020

	Purpose: Create the empty DunderMifflin database

	Change log:
		-- 
*/

IF (SELECT 1 FROM sys.databases WHERE name = 'DunderMifflin') IS NOT NULL 
BEGIN 	
	EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'DunderMifflin'
	
	ALTER DATABASE [DunderMifflin] SET  SINGLE_USER WITH ROLLBACK IMMEDIATE
	
	DROP DATABASE [DunderMifflin]
END 

GO

/****** Object:  Database [DunderMifflin]    Script Date: 8/5/2020 5:52:51 PM ******/
CREATE DATABASE [DunderMifflin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DunderMifflin', FILENAME = N'e:\sql\data\DunderMifflin.mdf' , SIZE = 335872KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DunderMifflin_log', FILENAME = N'e:\sql\data\DunderMifflin_log.ldf' , SIZE = 5960KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DunderMifflin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [DunderMifflin] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [DunderMifflin] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [DunderMifflin] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [DunderMifflin] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [DunderMifflin] SET ARITHABORT OFF 
GO

ALTER DATABASE [DunderMifflin] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [DunderMifflin] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [DunderMifflin] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [DunderMifflin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [DunderMifflin] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [DunderMifflin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [DunderMifflin] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [DunderMifflin] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [DunderMifflin] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [DunderMifflin] SET  DISABLE_BROKER 
GO

ALTER DATABASE [DunderMifflin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [DunderMifflin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [DunderMifflin] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [DunderMifflin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [DunderMifflin] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [DunderMifflin] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [DunderMifflin] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [DunderMifflin] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [DunderMifflin] SET  MULTI_USER 
GO

ALTER DATABASE [DunderMifflin] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [DunderMifflin] SET DB_CHAINING OFF 
GO

ALTER DATABASE [DunderMifflin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [DunderMifflin] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [DunderMifflin] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [DunderMifflin] SET QUERY_STORE = OFF
GO

ALTER DATABASE [DunderMifflin] SET  READ_WRITE 
GO

