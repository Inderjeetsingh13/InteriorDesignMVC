USE [master]
GO
/****** Object:  Database [Interior]    Script Date: 16-12-2019 14:42:07 ******/
CREATE DATABASE [Interior]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Interior_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Interior.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Interior_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Interior.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Interior] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Interior].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Interior] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Interior] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Interior] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Interior] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Interior] SET ARITHABORT OFF 
GO
ALTER DATABASE [Interior] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Interior] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Interior] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Interior] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Interior] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Interior] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Interior] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Interior] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Interior] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Interior] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Interior] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Interior] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Interior] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Interior] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Interior] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Interior] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Interior] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Interior] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Interior] SET  MULTI_USER 
GO
ALTER DATABASE [Interior] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Interior] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Interior] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Interior] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Interior] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Interior] SET QUERY_STORE = OFF
GO
USE [Interior]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Interior]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 16-12-2019 14:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 16-12-2019 14:42:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Subject] [varchar](50) NULL,
	[Msg] [varchar](50) NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 16-12-2019 14:42:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Charges] [varchar](50) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Interior] SET  READ_WRITE 
GO
