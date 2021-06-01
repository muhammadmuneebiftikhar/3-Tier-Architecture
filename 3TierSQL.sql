USE [master]
GO
/****** Object:  Database [Vp_Lab]    Script Date: 6/2/2021 2:02:21 AM ******/
CREATE DATABASE [Vp_Lab]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Vp_Lab', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Vp_Lab.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Vp_Lab_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Vp_Lab_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Vp_Lab] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Vp_Lab].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Vp_Lab] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Vp_Lab] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Vp_Lab] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Vp_Lab] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Vp_Lab] SET ARITHABORT OFF 
GO
ALTER DATABASE [Vp_Lab] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Vp_Lab] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Vp_Lab] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Vp_Lab] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Vp_Lab] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Vp_Lab] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Vp_Lab] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Vp_Lab] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Vp_Lab] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Vp_Lab] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Vp_Lab] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Vp_Lab] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Vp_Lab] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Vp_Lab] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Vp_Lab] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Vp_Lab] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Vp_Lab] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Vp_Lab] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Vp_Lab] SET  MULTI_USER 
GO
ALTER DATABASE [Vp_Lab] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Vp_Lab] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Vp_Lab] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Vp_Lab] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Vp_Lab] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Vp_Lab] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Vp_Lab] SET QUERY_STORE = OFF
GO
USE [Vp_Lab]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 6/2/2021 2:02:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](255) NOT NULL,
	[Email] [nchar](255) NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Login] ON 
GO
INSERT [dbo].[Login] ([ID], [Name], [Email]) VALUES (1, N'Muneeb                                                                                                                                                                                                                                                         ', N'muneebiftikhar382@gmail.com                                                                                                                                                                                                                                    ')
GO
INSERT [dbo].[Login] ([ID], [Name], [Email]) VALUES (2, N'Shujja                                                                                                                                                                                                                                                         ', N'Shujja212@gmail.com                                                                                                                                                                                                                                            ')
GO
INSERT [dbo].[Login] ([ID], [Name], [Email]) VALUES (4, N'Osama Zameer                                                                                                                                                                                                                                                   ', N'Osama@zameer.com                                                                                                                                                                                                                                               ')
GO
INSERT [dbo].[Login] ([ID], [Name], [Email]) VALUES (6, N'Taha Hassan                                                                                                                                                                                                                                                    ', N'Taha@Hassan.com                                                                                                                                                                                                                                                ')
GO
SET IDENTITY_INSERT [dbo].[Login] OFF
GO
USE [master]
GO
ALTER DATABASE [Vp_Lab] SET  READ_WRITE 
GO
