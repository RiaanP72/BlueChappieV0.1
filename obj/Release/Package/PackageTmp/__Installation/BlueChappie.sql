USE [master]
GO

/****** Object:  Database [BlueChappie]    Script Date: 2016/06/23 4:36:03 PM ******/
CREATE DATABASE [BlueChappie]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BlueChappie', FILENAME = N'BlueChappie.mdf' , SIZE = 59072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BlueChappie_log', FILENAME = N'BlueChappie_log.ldf' , SIZE = 32448KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [BlueChappie] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BlueChappie].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [BlueChappie] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [BlueChappie] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [BlueChappie] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [BlueChappie] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [BlueChappie] SET ARITHABORT OFF 
GO

ALTER DATABASE [BlueChappie] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [BlueChappie] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [BlueChappie] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [BlueChappie] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [BlueChappie] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [BlueChappie] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [BlueChappie] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [BlueChappie] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [BlueChappie] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [BlueChappie] SET  DISABLE_BROKER 
GO

ALTER DATABASE [BlueChappie] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [BlueChappie] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [BlueChappie] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [BlueChappie] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [BlueChappie] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [BlueChappie] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [BlueChappie] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [BlueChappie] SET RECOVERY FULL 
GO

ALTER DATABASE [BlueChappie] SET  MULTI_USER 
GO

ALTER DATABASE [BlueChappie] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [BlueChappie] SET DB_CHAINING OFF 
GO

ALTER DATABASE [BlueChappie] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [BlueChappie] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [BlueChappie] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [BlueChappie] SET  READ_WRITE 
GO


USE [BlueChappie]
GO

/****** Object:  Table [dbo].[imagelib]    Script Date: 2016/06/24 4:48:14 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[imagelib](
	[imgGUID] [char](36) NOT NULL,
	[keyword] [varchar](500) NULL,
	[localURL] [varchar](500) NULL,
	[source] [varchar](500) NULL,
	[sourceURL] [varchar](500) NULL,
	[tag] [varchar](500) NULL,
	[title] [varchar](500) NULL,
	[dateHit] [varchar](500) NULL,
	[description] [varchar](2000) NULL,
	[tags] [varchar](2000) NULL,
	[owner] [varchar](1000) NULL,
	[origin] [varchar](500) NULL,
	[dateTaken] [varchar](500) NULL,
	[webImageBase64Encoded] [varchar](max) NULL,
	[tagKey] [varchar](500) NULL,
	[sourceServer] [varchar](50) NULL,
	[sourceID] [varchar](50) NULL,
	[sourceSecret] [varchar](50) NULL,
	[sourceFarm] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [BlueChappie]
GO

/****** Object:  Table [dbo].[locationlib]    Script Date: 2016/06/24 6:29:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[locationlib](
	[location] [varchar](100) NOT NULL,
	[created] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [BlueChappie]
GO

/****** Object:  Table [dbo].[locationlib]    Script Date: 2016/06/24 6:29:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[locationlib](
	[location] [varchar](100) NOT NULL,
	[created] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [BlueChappie]
GO

/****** Object:  Table [dbo].[userfavlocationslib]    Script Date: 2016/06/24 6:29:32 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[userfavlocationslib](
	[userlocationid] [char](36) NULL,
	[userid] [char](36) NULL,
	[tagKey] [varchar](500) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [BlueChappie]
GO

/****** Object:  Table [dbo].[userlib]    Script Date: 2016/06/24 6:29:42 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[userlib](
	[userid] [char](36) NULL,
	[emailaddress] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [BlueChappie]
GO

/****** Object:  Table [dbo].[userlib]    Script Date: 2016/06/24 6:29:42 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[userlib](
	[userid] [char](36) NULL,
	[emailaddress] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [BlueChappie]
GO

/****** Object:  StoredProcedure [dbo].[UpdateStatus]    Script Date: 2016/06/24 6:30:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Adriaan Potgieter
-- Create date: 23/06/2016
-- Description:	This SP maintains the client online scan status
-- =============================================
CREATE PROCEDURE [dbo].[UpdateStatus]
	@ClientRequestID varchar(50),
	@Status varchar(50)
AS
BEGIN
	
	SET NOCOUNT ON;
	IF (SELECT COUNT(*) FROM userrequests WITH (nolock) WHERE ClientRequestID=@ClientRequestID)=0
		INSERT INTO userrequests (ClientRequestID,[Status]) VALUES (@ClientRequestID,@Status)
		ELSE
		UPDATE userrequests SET [Status] = @Status WHERE ClientRequestID=@ClientRequestID
    
END

GO

