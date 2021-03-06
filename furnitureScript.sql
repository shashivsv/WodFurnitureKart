USE [master]
GO
/****** Object:  Database [WooFurnitureKartDb]    Script Date: 27-09-2020 15:50:05 ******/
CREATE DATABASE [WooFurnitureKartDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WooFurnitureKartDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.DEV\MSSQL\DATA\WooFurnitureKartDb.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WooFurnitureKartDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.DEV\MSSQL\DATA\WooFurnitureKartDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WooFurnitureKartDb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WooFurnitureKartDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WooFurnitureKartDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WooFurnitureKartDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WooFurnitureKartDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WooFurnitureKartDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WooFurnitureKartDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET RECOVERY FULL 
GO
ALTER DATABASE [WooFurnitureKartDb] SET  MULTI_USER 
GO
ALTER DATABASE [WooFurnitureKartDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WooFurnitureKartDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WooFurnitureKartDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WooFurnitureKartDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WooFurnitureKartDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WooFurnitureKartDb', N'ON'
GO
USE [WooFurnitureKartDb]
GO
/****** Object:  Table [dbo].[tblPages]    Script Date: 27-09-2020 15:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPages](
	[PageId] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Slug] [nvarchar](50) NULL,
	[Body] [varchar](max) NULL,
	[Sorting] [int] NULL,
	[HasSideBar] [bit] NULL,
 CONSTRAINT [PK_tblPages] PRIMARY KEY CLUSTERED 
(
	[PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRole]    Script Date: 27-09-2020 15:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRole](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_tblRole] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 27-09-2020 15:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[UserName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[SurName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[EmailId] [nvarchar](50) NULL,
	[Address1] [nvarchar](50) NULL,
	[Address2] [nvarchar](50) NULL,
	[Contact] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tblUser] ON 

INSERT [dbo].[tblUser] ([UserId], [RoleId], [UserName], [FirstName], [LastName], [SurName], [Password], [EmailId], [Address1], [Address2], [Contact], [CreateDate], [CreatedBy]) VALUES (1, 1, N'admin', N'admin', N'admin', N'admin', N'admin', N'admin@gmail.com', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblUser] OFF
USE [master]
GO
ALTER DATABASE [WooFurnitureKartDb] SET  READ_WRITE 
GO
