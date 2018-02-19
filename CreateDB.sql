/****

	Script Created by: Yoel Sharf
	This SQL script creates the DB

	Texts from http://insider.foxnews.com/2018/02/18/behar-mike-pence-comment-christianity-trump-advisor-says-abc-should-apologize 

****/

USE [master]
GO

CREATE DATABASE [PerfDemo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PerfDemo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PerfDemo.mdf' , SIZE = 2105344KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PerfDemo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PerfDemo_log.ldf' , SIZE = 1646592KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [PerfDemo] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PerfDemo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [PerfDemo] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [PerfDemo] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [PerfDemo] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [PerfDemo] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [PerfDemo] SET ARITHABORT OFF 
GO

ALTER DATABASE [PerfDemo] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [PerfDemo] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [PerfDemo] SET AUTO_UPDATE_STATISTICS ON 
GO


USE [PerfDemo]
GO

/****** Object:  Table [dbo].[Table_1]     ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Table_1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

