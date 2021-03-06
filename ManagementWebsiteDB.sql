USE [master]
GO
/****** Object:  Database [TSQLFundamentals2008]    Script Date: 07/09/2017 14:19:53 ******/
CREATE DATABASE [TSQLFundamentals2008] ON  PRIMARY 
( NAME = N'TSQLFundamentals2008', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\TSQLFundamentals2008.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TSQLFundamentals2008_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\TSQLFundamentals2008_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TSQLFundamentals2008] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TSQLFundamentals2008].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TSQLFundamentals2008] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [TSQLFundamentals2008] SET ANSI_NULLS OFF
GO
ALTER DATABASE [TSQLFundamentals2008] SET ANSI_PADDING OFF
GO
ALTER DATABASE [TSQLFundamentals2008] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [TSQLFundamentals2008] SET ARITHABORT OFF
GO
ALTER DATABASE [TSQLFundamentals2008] SET AUTO_CLOSE ON
GO
ALTER DATABASE [TSQLFundamentals2008] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [TSQLFundamentals2008] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [TSQLFundamentals2008] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [TSQLFundamentals2008] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [TSQLFundamentals2008] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [TSQLFundamentals2008] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [TSQLFundamentals2008] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [TSQLFundamentals2008] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [TSQLFundamentals2008] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [TSQLFundamentals2008] SET  DISABLE_BROKER
GO
ALTER DATABASE [TSQLFundamentals2008] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [TSQLFundamentals2008] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [TSQLFundamentals2008] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [TSQLFundamentals2008] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [TSQLFundamentals2008] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [TSQLFundamentals2008] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [TSQLFundamentals2008] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [TSQLFundamentals2008] SET  READ_WRITE
GO
ALTER DATABASE [TSQLFundamentals2008] SET RECOVERY SIMPLE
GO
ALTER DATABASE [TSQLFundamentals2008] SET  MULTI_USER
GO
ALTER DATABASE [TSQLFundamentals2008] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [TSQLFundamentals2008] SET DB_CHAINING OFF
GO
USE [TSQLFundamentals2008]
GO
/****** Object:  Schema [Sales]    Script Date: 07/09/2017 14:19:53 ******/
CREATE SCHEMA [Sales] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [Production]    Script Date: 07/09/2017 14:19:53 ******/
CREATE SCHEMA [Production] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [HR]    Script Date: 07/09/2017 14:19:53 ******/
CREATE SCHEMA [HR] AUTHORIZATION [dbo]
GO
/****** Object:  Table [Sales].[Customers]    Script Date: 07/09/2017 14:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[Customers](
	[custid] [int] IDENTITY(1,1) NOT NULL,
	[companyname] [nvarchar](40) NOT NULL,
	[contactname] [nvarchar](30) NOT NULL,
	[contacttitle] [nvarchar](30) NOT NULL,
	[address] [nvarchar](60) NOT NULL,
	[city] [nvarchar](15) NOT NULL,
	[region] [nvarchar](15) NULL,
	[postalcode] [nvarchar](10) NULL,
	[country] [nvarchar](15) NOT NULL,
	[phone] [nvarchar](24) NOT NULL,
	[fax] [nvarchar](24) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[custid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_city] ON [Sales].[Customers] 
(
	[city] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_companyname] ON [Sales].[Customers] 
(
	[companyname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_postalcode] ON [Sales].[Customers] 
(
	[postalcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_region] ON [Sales].[Customers] 
(
	[region] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Sales].[Customers] ON
INSERT [Sales].[Customers] ([custid], [companyname], [contactname], [contacttitle], [address], [city], [region], [postalcode], [country], [phone], [fax]) VALUES (1, N'haha', N'haha', N'haha', N'haha', N'Sidney', N'Middle East', N'3214-234', N'Barbados', N'312423423424', N'313223342342')
INSERT [Sales].[Customers] ([custid], [companyname], [contactname], [contacttitle], [address], [city], [region], [postalcode], [country], [phone], [fax]) VALUES (3, N'haha', N'haha', N'haha', N'haha', N'New York', NULL, N'    -', N'Barbados', N'312423423424', N'         ')
INSERT [Sales].[Customers] ([custid], [companyname], [contactname], [contacttitle], [address], [city], [region], [postalcode], [country], [phone], [fax]) VALUES (4, N'dasa', N'adasda', N'ada', N'fsdsf', N'Paris', NULL, N'    -', N'Bhutan', N'424242342423', N'555555555555')
INSERT [Sales].[Customers] ([custid], [companyname], [contactname], [contacttitle], [address], [city], [region], [postalcode], [country], [phone], [fax]) VALUES (6, N'test', N'fds', N'gfdg', N'321', N'Sidney', N'North Africa', N'1111111', N'Belgium', N'123456789543', N'123456789543')
SET IDENTITY_INSERT [Sales].[Customers] OFF
/****** Object:  Table [Production].[Categories]    Script Date: 07/09/2017 14:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Production].[Categories](
	[categoryid] [int] IDENTITY(1,1) NOT NULL,
	[categoryname] [nvarchar](15) NOT NULL,
	[description] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[categoryid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [categoryname] ON [Production].[Categories] 
(
	[categoryname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Production].[Categories] ON
INSERT [Production].[Categories] ([categoryid], [categoryname], [description]) VALUES (1, N'Weed', N'Your life will better')
INSERT [Production].[Categories] ([categoryid], [categoryname], [description]) VALUES (3, N'Vegatable', N'Good for your health')
INSERT [Production].[Categories] ([categoryid], [categoryname], [description]) VALUES (17, N'Laugh', N'hahahaha')
INSERT [Production].[Categories] ([categoryid], [categoryname], [description]) VALUES (36, N'Test', N'this is a test')
SET IDENTITY_INSERT [Production].[Categories] OFF
/****** Object:  Table [HR].[Employees]    Script Date: 07/09/2017 14:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HR].[Employees](
	[empid] [int] IDENTITY(1,1) NOT NULL,
	[lastname] [nvarchar](20) NOT NULL,
	[firstname] [nvarchar](10) NOT NULL,
	[title] [nvarchar](30) NOT NULL,
	[titleofcourtesy] [nvarchar](25) NOT NULL,
	[birthdate] [datetime] NOT NULL,
	[hiredate] [datetime] NOT NULL,
	[address] [nvarchar](60) NOT NULL,
	[city] [nvarchar](15) NOT NULL,
	[region] [nvarchar](15) NULL,
	[postalcode] [nvarchar](10) NULL,
	[country] [nvarchar](15) NOT NULL,
	[phone] [nvarchar](24) NOT NULL,
	[mgrid] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[empid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_lastname] ON [HR].[Employees] 
(
	[lastname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_postalcode] ON [HR].[Employees] 
(
	[postalcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [HR].[Employees] ON
INSERT [HR].[Employees] ([empid], [lastname], [firstname], [title], [titleofcourtesy], [birthdate], [hiredate], [address], [city], [region], [postalcode], [country], [phone], [mgrid]) VALUES (15, N'hahaha', N'hahahah', N'dfss', N'fds', CAST(0x000086B500000000 AS DateTime), CAST(0x0000A61900000000 AS DateTime), N'fds', N'Paris', N'East Asia', N'4343434', N'Bermuda', N'3455354535434', NULL)
INSERT [HR].[Employees] ([empid], [lastname], [firstname], [title], [titleofcourtesy], [birthdate], [hiredate], [address], [city], [region], [postalcode], [country], [phone], [mgrid]) VALUES (16, N'Long', N'pham', N'vvvv', N'vcbvc', CAST(0x000086B500000000 AS DateTime), CAST(0x0000A61900000000 AS DateTime), N'dasd', N'Berlin', N'East Asia', N'3456765', N'Bangladesh', N'312312312312', 38)
INSERT [HR].[Employees] ([empid], [lastname], [firstname], [title], [titleofcourtesy], [birthdate], [hiredate], [address], [city], [region], [postalcode], [country], [phone], [mgrid]) VALUES (38, N'test emp', N'test', N'aaa', N'bbb', CAST(0x0000A61800000000 AS DateTime), CAST(0x0000A61F00000000 AS DateTime), N'bvc', N'Sydney', N'East Asia', N'5555555', N'Afganistan', N'222222222222', NULL)
INSERT [HR].[Employees] ([empid], [lastname], [firstname], [title], [titleofcourtesy], [birthdate], [hiredate], [address], [city], [region], [postalcode], [country], [phone], [mgrid]) VALUES (59, N'demo', N'asda', N'fd', N'sdfs', CAST(0x0000810E00000000 AS DateTime), CAST(0x00009D9700000000 AS DateTime), N'd', N'Sydney', N'East Asia', N'5766-756', N'Anguilla', N'(867) 465-4554-345', 16)
SET IDENTITY_INSERT [HR].[Employees] OFF
/****** Object:  Table [Production].[Suppliers]    Script Date: 07/09/2017 14:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Production].[Suppliers](
	[supplierid] [int] IDENTITY(1,1) NOT NULL,
	[companyname] [nvarchar](40) NOT NULL,
	[contactname] [nvarchar](30) NOT NULL,
	[contacttitle] [nvarchar](30) NOT NULL,
	[address] [nvarchar](60) NOT NULL,
	[city] [nvarchar](15) NOT NULL,
	[region] [nvarchar](15) NULL,
	[postalcode] [nvarchar](10) NULL,
	[country] [nvarchar](15) NOT NULL,
	[phone] [nvarchar](24) NOT NULL,
	[fax] [nvarchar](24) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[supplierid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_companyname] ON [Production].[Suppliers] 
(
	[companyname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_postalcode] ON [Production].[Suppliers] 
(
	[postalcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Production].[Suppliers] ON
INSERT [Production].[Suppliers] ([supplierid], [companyname], [contactname], [contacttitle], [address], [city], [region], [postalcode], [country], [phone], [fax]) VALUES (1, N'a', N'dasa', N'dasd', N'asd', N'Ha Noi', N'South Asia', N'3124234', N'Bermuda', N'312321312321', N'232131312313')
INSERT [Production].[Suppliers] ([supplierid], [companyname], [contactname], [contacttitle], [address], [city], [region], [postalcode], [country], [phone], [fax]) VALUES (2, N'lala', N'lala', N'lala', N'laalalalalalla', N'London', NULL, N'    ', N'Belize', N'322131231231', N'         ')
INSERT [Production].[Suppliers] ([supplierid], [companyname], [contactname], [contacttitle], [address], [city], [region], [postalcode], [country], [phone], [fax]) VALUES (5, N'gfd', N'gfd', N'gfd', N'gfd', N'fdsf', N'fdsf', N'432', N'gfdg', N'654', N'645')
INSERT [Production].[Suppliers] ([supplierid], [companyname], [contactname], [contacttitle], [address], [city], [region], [postalcode], [country], [phone], [fax]) VALUES (8, N'csharp', N'a', N'a', N'hasdj', N'Berlin', N'Africa', N'5678888', N'Algeria', N'435577655676', N'344566778999')
SET IDENTITY_INSERT [Production].[Suppliers] OFF
/****** Object:  Table [Sales].[Shippers]    Script Date: 07/09/2017 14:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[Shippers](
	[shipperid] [int] IDENTITY(1,1) NOT NULL,
	[companyname] [nvarchar](40) NOT NULL,
	[phone] [nvarchar](24) NOT NULL,
 CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED 
(
	[shipperid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Sales].[Shippers] ON
INSERT [Sales].[Shippers] ([shipperid], [companyname], [phone]) VALUES (1, N'hoho', N'1231432424234')
INSERT [Sales].[Shippers] ([shipperid], [companyname], [phone]) VALUES (2, N'test plz', N'3312312313123')
SET IDENTITY_INSERT [Sales].[Shippers] OFF
/****** Object:  Table [Production].[Products]    Script Date: 07/09/2017 14:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Production].[Products](
	[productid] [int] IDENTITY(1,1) NOT NULL,
	[productname] [nvarchar](40) NOT NULL,
	[supplierid] [int] NOT NULL,
	[categoryid] [int] NOT NULL,
	[unitprice] [money] NOT NULL,
	[discontinued] [bit] NOT NULL,
	[img] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[productid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_categoryid] ON [Production].[Products] 
(
	[categoryid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_productname] ON [Production].[Products] 
(
	[productname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_supplierid] ON [Production].[Products] 
(
	[supplierid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Production].[Products] ON
INSERT [Production].[Products] ([productid], [productname], [supplierid], [categoryid], [unitprice], [discontinued], [img]) VALUES (1, N'haha', 1, 1, 2331.0000, 1, NULL)
INSERT [Production].[Products] ([productid], [productname], [supplierid], [categoryid], [unitprice], [discontinued], [img]) VALUES (3, N'dfs', 2, 3, 3132.0000, 0, N'')
INSERT [Production].[Products] ([productid], [productname], [supplierid], [categoryid], [unitprice], [discontinued], [img]) VALUES (12, N'long', 5, 36, 32.4000, 0, N're')
INSERT [Production].[Products] ([productid], [productname], [supplierid], [categoryid], [unitprice], [discontinued], [img]) VALUES (14, N'hard', 1, 1, 54.0000, 0, NULL)
INSERT [Production].[Products] ([productid], [productname], [supplierid], [categoryid], [unitprice], [discontinued], [img]) VALUES (17, N'fdsf', 1, 1, 111111111111.0000, 0, NULL)
INSERT [Production].[Products] ([productid], [productname], [supplierid], [categoryid], [unitprice], [discontinued], [img]) VALUES (18, N'dsfsd', 2, 1, 5435.0000, 1, N'')
SET IDENTITY_INSERT [Production].[Products] OFF
/****** Object:  Table [Sales].[Orders]    Script Date: 07/09/2017 14:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[Orders](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[custid] [int] NULL,
	[empid] [int] NOT NULL,
	[orderdate] [datetime] NOT NULL,
	[requireddate] [datetime] NOT NULL,
	[shippeddate] [datetime] NULL,
	[shipperid] [int] NOT NULL,
	[freight] [money] NOT NULL,
	[shipname] [nvarchar](40) NOT NULL,
	[shipaddress] [nvarchar](60) NOT NULL,
	[shipcity] [nvarchar](15) NOT NULL,
	[shipregion] [nvarchar](15) NULL,
	[shippostalcode] [nvarchar](10) NULL,
	[shipcountry] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_custid] ON [Sales].[Orders] 
(
	[custid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_empid] ON [Sales].[Orders] 
(
	[empid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_orderdate] ON [Sales].[Orders] 
(
	[orderdate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_shippeddate] ON [Sales].[Orders] 
(
	[shippeddate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_shipperid] ON [Sales].[Orders] 
(
	[shipperid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_shippostalcode] ON [Sales].[Orders] 
(
	[shippostalcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Sales].[Orders] ON
INSERT [Sales].[Orders] ([orderid], [custid], [empid], [orderdate], [requireddate], [shippeddate], [shipperid], [freight], [shipname], [shipaddress], [shipcity], [shipregion], [shippostalcode], [shipcountry]) VALUES (9, 3, 15, CAST(0x0000A61800000000 AS DateTime), CAST(0x0000A62100000000 AS DateTime), CAST(0x0000A62100000000 AS DateTime), 1, 21.0000, N'erwe', N'rer', N'Paris', N'South Asia', N'5555434', N'Botswana')
INSERT [Sales].[Orders] ([orderid], [custid], [empid], [orderdate], [requireddate], [shippeddate], [shipperid], [freight], [shipname], [shipaddress], [shipcity], [shipregion], [shippostalcode], [shipcountry]) VALUES (12, 1, 15, CAST(0x0000A62100000000 AS DateTime), CAST(0x0000A62100000000 AS DateTime), CAST(0x0000A62100000000 AS DateTime), 1, 21.0000, N'zzz', N'rer', N'Paris', N'South Asia', N'5555434', N'Botswana')
INSERT [Sales].[Orders] ([orderid], [custid], [empid], [orderdate], [requireddate], [shippeddate], [shipperid], [freight], [shipname], [shipaddress], [shipcity], [shipregion], [shippostalcode], [shipcountry]) VALUES (13, 4, 16, CAST(0x0000A61E00000000 AS DateTime), CAST(0x0000A61E00000000 AS DateTime), CAST(0x0000A61F00000000 AS DateTime), 2, 543.0000, N'bbb', N'rer', N'Paris', N'South Asia', N'5555434', N'Botswana')
SET IDENTITY_INSERT [Sales].[Orders] OFF
/****** Object:  Table [Sales].[OrderDetails]    Script Date: 07/09/2017 14:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[OrderDetails](
	[orderid] [int] NOT NULL,
	[productid] [int] NOT NULL,
	[unitprice] [money] NOT NULL,
	[qty] [smallint] NOT NULL,
	[discount] [numeric](4, 3) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC,
	[productid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_orderid] ON [Sales].[OrderDetails] 
(
	[orderid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_productid] ON [Sales].[OrderDetails] 
(
	[productid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [Sales].[OrderDetails] ([orderid], [productid], [unitprice], [qty], [discount]) VALUES (9, 1, 6.0000, 43, CAST(0.500 AS Numeric(4, 3)))
INSERT [Sales].[OrderDetails] ([orderid], [productid], [unitprice], [qty], [discount]) VALUES (9, 3, 9.0000, 43, CAST(0.900 AS Numeric(4, 3)))
INSERT [Sales].[OrderDetails] ([orderid], [productid], [unitprice], [qty], [discount]) VALUES (13, 12, 43.0000, 4230, CAST(0.200 AS Numeric(4, 3)))
/****** Object:  View [Sales].[CustOrders]    Script Date: 07/09/2017 14:19:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Sales].[CustOrders]
  WITH SCHEMABINDING
AS

SELECT
  O.custid, 
  DATEADD(month, DATEDIFF(month, 0, O.orderdate), 0) AS ordermonth,
  SUM(OD.qty) AS qty
FROM Sales.Orders AS O
  JOIN Sales.OrderDetails AS OD
    ON OD.orderid = O.orderid
GROUP BY custid, DATEADD(month, DATEDIFF(month, 0, O.orderdate), 0);
GO
/****** Object:  View [Sales].[OrderValues]    Script Date: 07/09/2017 14:19:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------
-- Create Views
---------------------------------------------------------------------

CREATE VIEW [Sales].[OrderValues]
  WITH SCHEMABINDING
AS

SELECT O.orderid, O.custid, O.empid, O.shipperid, O.orderdate,
  CAST(SUM(OD.qty * OD.unitprice * (1 - discount))
       AS NUMERIC(12, 2)) AS val
FROM Sales.Orders AS O
  JOIN Sales.OrderDetails AS OD
    ON O.orderid = OD.orderid
GROUP BY O.orderid, O.custid, O.empid, O.shipperid, O.orderdate;
GO
/****** Object:  View [Sales].[OrderTotalsByYear]    Script Date: 07/09/2017 14:19:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Sales].[OrderTotalsByYear]
  WITH SCHEMABINDING
AS

SELECT
  YEAR(O.orderdate) AS orderyear,
  SUM(OD.qty) AS qty
FROM Sales.Orders AS O
  JOIN Sales.OrderDetails AS OD
    ON OD.orderid = O.orderid
GROUP BY YEAR(orderdate);
GO
/****** Object:  Default [DFT_Products_unitprice]    Script Date: 07/09/2017 14:19:54 ******/
ALTER TABLE [Production].[Products] ADD  CONSTRAINT [DFT_Products_unitprice]  DEFAULT ((0)) FOR [unitprice]
GO
/****** Object:  Default [DFT_Products_discontinued]    Script Date: 07/09/2017 14:19:54 ******/
ALTER TABLE [Production].[Products] ADD  CONSTRAINT [DFT_Products_discontinued]  DEFAULT ((0)) FOR [discontinued]
GO
/****** Object:  Default [DFT_Orders_freight]    Script Date: 07/09/2017 14:19:54 ******/
ALTER TABLE [Sales].[Orders] ADD  CONSTRAINT [DFT_Orders_freight]  DEFAULT ((0)) FOR [freight]
GO
/****** Object:  Default [DFT_OrderDetails_unitprice]    Script Date: 07/09/2017 14:19:54 ******/
ALTER TABLE [Sales].[OrderDetails] ADD  CONSTRAINT [DFT_OrderDetails_unitprice]  DEFAULT ((0)) FOR [unitprice]
GO
/****** Object:  Default [DFT_OrderDetails_qty]    Script Date: 07/09/2017 14:19:54 ******/
ALTER TABLE [Sales].[OrderDetails] ADD  CONSTRAINT [DFT_OrderDetails_qty]  DEFAULT ((1)) FOR [qty]
GO
/****** Object:  Default [DFT_OrderDetails_discount]    Script Date: 07/09/2017 14:19:54 ******/
ALTER TABLE [Sales].[OrderDetails] ADD  CONSTRAINT [DFT_OrderDetails_discount]  DEFAULT ((0)) FOR [discount]
GO
/****** Object:  Check [CHK_birthdate]    Script Date: 07/09/2017 14:19:54 ******/
ALTER TABLE [HR].[Employees]  WITH CHECK ADD  CONSTRAINT [CHK_birthdate] CHECK  (([birthdate]<=getdate()))
GO
ALTER TABLE [HR].[Employees] CHECK CONSTRAINT [CHK_birthdate]
GO
/****** Object:  Check [CHK_discount]    Script Date: 07/09/2017 14:19:54 ******/
ALTER TABLE [Sales].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [CHK_discount] CHECK  (([discount]>=(0) AND [discount]<=(1)))
GO
ALTER TABLE [Sales].[OrderDetails] CHECK CONSTRAINT [CHK_discount]
GO
/****** Object:  Check [CHK_qty]    Script Date: 07/09/2017 14:19:54 ******/
ALTER TABLE [Sales].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [CHK_qty] CHECK  (([qty]>(0)))
GO
ALTER TABLE [Sales].[OrderDetails] CHECK CONSTRAINT [CHK_qty]
GO
/****** Object:  Check [CHK_unitprice]    Script Date: 07/09/2017 14:19:54 ******/
ALTER TABLE [Sales].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [CHK_unitprice] CHECK  (([unitprice]>=(0)))
GO
ALTER TABLE [Sales].[OrderDetails] CHECK CONSTRAINT [CHK_unitprice]
GO
/****** Object:  ForeignKey [FK_Employees_Employees]    Script Date: 07/09/2017 14:19:54 ******/
ALTER TABLE [HR].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([mgrid])
REFERENCES [HR].[Employees] ([empid])
GO
ALTER TABLE [HR].[Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
/****** Object:  ForeignKey [FK_Products_Categories]    Script Date: 07/09/2017 14:19:54 ******/
ALTER TABLE [Production].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([categoryid])
REFERENCES [Production].[Categories] ([categoryid])
GO
ALTER TABLE [Production].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
/****** Object:  ForeignKey [FK_Products_Suppliers]    Script Date: 07/09/2017 14:19:54 ******/
ALTER TABLE [Production].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([supplierid])
REFERENCES [Production].[Suppliers] ([supplierid])
GO
ALTER TABLE [Production].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
/****** Object:  ForeignKey [FK_Orders_Customers]    Script Date: 07/09/2017 14:19:54 ******/
ALTER TABLE [Sales].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([custid])
REFERENCES [Sales].[Customers] ([custid])
GO
ALTER TABLE [Sales].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
/****** Object:  ForeignKey [FK_Orders_Employees]    Script Date: 07/09/2017 14:19:54 ******/
ALTER TABLE [Sales].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([empid])
REFERENCES [HR].[Employees] ([empid])
GO
ALTER TABLE [Sales].[Orders] CHECK CONSTRAINT [FK_Orders_Employees]
GO
/****** Object:  ForeignKey [FK_Orders_Shippers]    Script Date: 07/09/2017 14:19:54 ******/
ALTER TABLE [Sales].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shippers] FOREIGN KEY([shipperid])
REFERENCES [Sales].[Shippers] ([shipperid])
GO
ALTER TABLE [Sales].[Orders] CHECK CONSTRAINT [FK_Orders_Shippers]
GO
/****** Object:  ForeignKey [FK_OrderDetails_Orders]    Script Date: 07/09/2017 14:19:54 ******/
ALTER TABLE [Sales].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([orderid])
REFERENCES [Sales].[Orders] ([orderid])
GO
ALTER TABLE [Sales].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
/****** Object:  ForeignKey [FK_OrderDetails_Products]    Script Date: 07/09/2017 14:19:54 ******/
ALTER TABLE [Sales].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([productid])
REFERENCES [Production].[Products] ([productid])
GO
ALTER TABLE [Sales].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
