USE [master]
GO
/****** Object:  Database [db_courseselect]    Script Date: 07/03/2016 11:34:02 ******/
CREATE DATABASE [db_courseselect] ON  PRIMARY 
( NAME = N'db_courseselect', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\db_courseselect.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_courseselect_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\db_courseselect_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_courseselect] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_courseselect].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_courseselect] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [db_courseselect] SET ANSI_NULLS OFF
GO
ALTER DATABASE [db_courseselect] SET ANSI_PADDING OFF
GO
ALTER DATABASE [db_courseselect] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [db_courseselect] SET ARITHABORT OFF
GO
ALTER DATABASE [db_courseselect] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [db_courseselect] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [db_courseselect] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [db_courseselect] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [db_courseselect] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [db_courseselect] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [db_courseselect] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [db_courseselect] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [db_courseselect] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [db_courseselect] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [db_courseselect] SET  DISABLE_BROKER
GO
ALTER DATABASE [db_courseselect] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [db_courseselect] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [db_courseselect] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [db_courseselect] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [db_courseselect] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [db_courseselect] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [db_courseselect] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [db_courseselect] SET  READ_WRITE
GO
ALTER DATABASE [db_courseselect] SET RECOVERY FULL
GO
ALTER DATABASE [db_courseselect] SET  MULTI_USER
GO
ALTER DATABASE [db_courseselect] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [db_courseselect] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_courseselect', N'ON'
GO
USE [db_courseselect]
GO
/****** Object:  Table [dbo].[t_slogon]    Script Date: 07/03/2016 11:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_slogon](
	[Sno] [int] NULL,
	[Spassword] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_sinfo]    Script Date: 07/03/2016 11:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_sinfo](
	[Sno] [int] NOT NULL,
	[Sname] [varchar](50) NULL,
	[Ssex] [varchar](50) NULL,
	[Smajor] [varchar](50) NULL,
	[Stele] [varchar](50) NULL,
 CONSTRAINT [PK_t_sinfo] PRIMARY KEY CLUSTERED 
(
	[Sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_selection]    Script Date: 07/03/2016 11:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_selection](
	[selectId] [int] NULL,
	[courseId] [int] NULL,
	[Sno] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_course]    Script Date: 07/03/2016 11:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_course](
	[courseId] [int] NOT NULL,
	[courseName] [varchar](50) NULL,
	[courseTime] [varchar](50) NULL,
	[courseTeacher] [varchar](50) NULL,
	[capacity] [int] NULL,
	[numSelected] [int] NULL,
 CONSTRAINT [PK_t_course] PRIMARY KEY CLUSTERED 
(
	[courseId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_adminlogon]    Script Date: 07/03/2016 11:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_adminlogon](
	[adminId] [int] NOT NULL,
	[password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_t_adminlogon] PRIMARY KEY CLUSTERED 
(
	[adminId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
