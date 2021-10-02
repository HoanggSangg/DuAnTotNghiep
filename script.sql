USE [DuAn]
GO
ALTER TABLE [dbo].[Specification] DROP CONSTRAINT [FK_Specification_Products]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_CuaHang]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_CateSmall1]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_CateSmall]
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Accounts]
GO
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[Image] DROP CONSTRAINT [FK_Image_Products]
GO
ALTER TABLE [dbo].[Cuahang] DROP CONSTRAINT [FK_CuaHang_Accounts]
GO
ALTER TABLE [dbo].[Catesmall] DROP CONSTRAINT [FK_CateSmall_Categories]
GO
ALTER TABLE [dbo].[Authorities] DROP CONSTRAINT [FK_Authorities_Roles]
GO
ALTER TABLE [dbo].[Authorities] DROP CONSTRAINT [FK_Authorities_Accounts]
GO
/****** Object:  Table [dbo].[Specification]    Script Date: 02/10/2021 2:02:38 CH ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Specification]') AND type in (N'U'))
DROP TABLE [dbo].[Specification]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 02/10/2021 2:02:38 CH ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 02/10/2021 2:02:38 CH ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 02/10/2021 2:02:38 CH ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
DROP TABLE [dbo].[Orders]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 02/10/2021 2:02:38 CH ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetails]') AND type in (N'U'))
DROP TABLE [dbo].[OrderDetails]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 02/10/2021 2:02:38 CH ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Image]') AND type in (N'U'))
DROP TABLE [dbo].[Image]
GO
/****** Object:  Table [dbo].[Cuahang]    Script Date: 02/10/2021 2:02:38 CH ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cuahang]') AND type in (N'U'))
DROP TABLE [dbo].[Cuahang]
GO
/****** Object:  Table [dbo].[Catesmall]    Script Date: 02/10/2021 2:02:38 CH ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Catesmall]') AND type in (N'U'))
DROP TABLE [dbo].[Catesmall]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 02/10/2021 2:02:38 CH ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 02/10/2021 2:02:38 CH ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Authorities]') AND type in (N'U'))
DROP TABLE [dbo].[Authorities]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 02/10/2021 2:02:38 CH ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Accounts]') AND type in (N'U'))
DROP TABLE [dbo].[Accounts]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 02/10/2021 2:02:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 02/10/2021 2:02:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[RoleId] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 02/10/2021 2:02:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [char](4) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catesmall]    Script Date: 02/10/2021 2:02:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catesmall](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CategoryId] [char](4) NOT NULL,
 CONSTRAINT [PK_CateSmall] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuahang]    Script Date: 02/10/2021 2:02:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuahang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenCuaHang] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_CuaHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 02/10/2021 2:02:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nameimage] [nvarchar](50) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 02/10/2021 2:02:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 02/10/2021 2:02:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[NguoiNhan] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](20) NOT NULL,
	[DiaChiNN] [nvarchar](100) NOT NULL,
	[TrangThai] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 02/10/2021 2:02:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Available] [bit] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[CuaHangId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 02/10/2021 2:02:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specification]    Script Date: 02/10/2021 2:02:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenThuocTinh] [nvarchar](50) NOT NULL,
	[GiaTri] [nvarchar](50) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Specification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [TrangThai]) VALUES (N'hsang', N'123', N'hsang', N'sangphpc00958@fpt.edu.vn', N'hsang.jpg', 1)
GO
SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (3, N'hsang', N'KH')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (4, N'hsang', N'CH')
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'dhtm', N'Dien Thoai Thong Minh')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'dt  ', N'Dien Thoai')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'mt  ', N'May Tinh')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'tb  ', N'Tablet')
GO
SET IDENTITY_INSERT [dbo].[Catesmall] ON 

INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (3, N'Iphone', N'dt  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (4, N'Samsung', N'dt  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (5, N'Realme', N'dt  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (8, N'Vivo', N'dt  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (9, N'Vsmart', N'dt  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (10, N'Xiaomi', N'dt  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (11, N'Oppo', N'dt  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (12, N'Apple', N'dhtm')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (13, N'BeU', N'dhtm')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (14, N'garmin', N'dhtm')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (15, N'kidcare', N'dhtm')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (16, N'oppo', N'dhtm')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (17, N'SamSung', N'dhtm')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (18, N'Acer', N'mt  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (19, N'ASUS', N'mt  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (20, N'Dell', N'mt  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (21, N'HP', N'mt  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (22, N'Lenovo', N'mt  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (24, N'LG', N'mt  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (25, N'MacBook', N'mt  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (26, N'MSI', N'mt  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (1005, N'Huawei', N'tb  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (1006, N'iPad', N'tb  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (1007, N'Lenovo', N'tb  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (1008, N'Masstel', N'tb  ')
INSERT [dbo].[Catesmall] ([Id], [Name], [CategoryId]) VALUES (1009, N'Samsung', N'tb  ')
SET IDENTITY_INSERT [dbo].[Catesmall] OFF
GO
SET IDENTITY_INSERT [dbo].[Cuahang] ON 

INSERT [dbo].[Cuahang] ([Id], [TenCuaHang], [Username], [TrangThai]) VALUES (1, N'young hero', N'hsang', 1)
INSERT [dbo].[Cuahang] ([Id], [TenCuaHang], [Username], [TrangThai]) VALUES (4, N'r', N'hsang', 1)
INSERT [dbo].[Cuahang] ([Id], [TenCuaHang], [Username], [TrangThai]) VALUES (5, N'g', N'hsang', 1)
SET IDENTITY_INSERT [dbo].[Cuahang] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (4, N'iphone-12-xanh-duong-600x600.jpg', 9)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (10, N'iphone-12-pro-max-xanh-duong-new.jpg', 10)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (11, N'iphone-12-pro-bac-new.jpg', 12)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (16, N'iphone-12-mini-den-15-600x600.jpg', 13)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (18, N'iphone-xr-hopmoi-den-600x600.jpg', 16)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (20, N'iphone-se-128gb-2020-do-600x600.jpg', 17)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (21, N'iphone-se-2020-trang-600x600-600x600.jpg', 19)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (22, N'iphone-xi-xanhla-600x600.jpg', 20)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (23, N'oppo-reno6-z-5g-aurora-1-600x600.jpg', 58)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (24, N'oppo-reno6-5g-aurora-600x600.jpg', 59)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (25, N'oppo-a74-blue-9-600x600.jpg', 60)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (27, N'oppo-find-x3-pro-black-001-1-600x600.jpg', 61)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (28, N'oppo-reno5-5g-thumb-600x600.jpg', 62)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (32, N'realme-c21y-black-600x600.jpg', 28)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (34, N'realme-c25s-grey-7-600x600.jpg', 31)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (36, N'realme-8-pro-vang-600x600.jpg', 34)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (37, N'realme-8-pro-balck-600x600.jpg', 35)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (38, N'realme-8-silver-600x600.jpg', 37)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (39, N'samsung-galaxy-z-fold-3-silver-600x600.jpg', 23)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (41, N'samsung-galaxy-a52-5g-thumb-black.jpg', 24)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (43, N'samsung-galaxy-z-flip-3-cream-600x600.jpg', 25)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (44, N'samsung-galaxy-z-fold-2-den-600x600.jpg', 26)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (45, N'samsung-galaxy-s21-tim-600x600.jpg', 27)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (46, N'vivo-y12s-den-new-600x600-600x600.jpg', 38)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (47, N'vivo-y53s-xanh-600x600.jpg', 39)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (48, N'vivo-v21-5g-xanh-den-600x600.jpg', 41)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (49, N'vivov202021den-600x600.jpg', 42)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (50, N'vivo-v20-600-xanh-hong-2-600x600.jpg', 44)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (51, N'vsmart-star-5-thumb-black-600x600.jpg', 45)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (52, N'vsmart-aris-pro-green-600jpg-600x600.jpg', 46)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (53, N'vsmart-aris-xam-600x600-600x600.jpg', 47)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (54, N'vsmart-live-4-xanh-la-600x600.jpg', 48)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (55, N'vsmart-joy-4-6gb-trang-600x600-600x600.jpg', 50)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (57, N'xiaomi-mi-11-lite-4g-blue-600x600.jpg', 52)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (59, N'xiaomi-redmi-note-10-5g-xanh-bong-dem.jpg', 54)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (60, N'xiaomi-mi-11-xanhduong.jpg', 55)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (61, N'xiaomi-mi-10t-pro-den-600x600.jpg', 56)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (62, N'xiaomi-redmi-note-10-pro-thumb-xam.jpg', 57)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (63, N'Apple Watch S3 GPS.jpg', 63)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (64, N'Apple Watch S5 LTE 44mm viền thép dây thép bạc.jpg', 64)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (65, N'Apple Watch S6 40mm viền nhôm dây cao su hồng.jpg', 65)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (66, N'Apple Watch S6 LTE.jpg', 66)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (67, N'Apple Watch SE LTE.jpg', 67)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (68, N'Apple Watch SE', 68)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (69, N'BeU Active 1.jpg', 69)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (70, N'BeU PT1.jpg', 70)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (71, N'BeU PT2.jpg', 72)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (72, N'BeU Sporty 1.jpg', 73)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (73, N'BeU Watch KW09.jpg', 74)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (74, N'Đồng hồ thông minh BeU B2.jpg', 75)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (75, N'Garmin Enduro.jpg', 76)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (76, N'Garmin Fenix 6 Pro Solar.jpg', 77)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (77, N'Garmin Fenix 6.jpg', 78)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (78, N'Garmin Fenix 6X Sapphire.jpg', 79)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (79, N'Garmin Forerunner 945.jpg', 80)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (80, N'Garmin Lily.jpg', 81)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (81, N'Kidcare 06S.jpg', 82)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (82, N'Kidcare 08S.jpg', 83)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (83, N'Kidcare 26.jpg', 84)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (84, N'Kidcare S6 Xanh.jpg', 85)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (85, N'Kidcare S6.jpg', 86)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (86, N'Kidcare S8.jpg', 87)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (87, N'Oppo Band.jpg', 88)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (88, N'Oppo Watch 41mm dây silicone đen.jpg', 89)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (89, N'Oppo Watch 41mm dây silicone.jpg', 90)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (90, N'Oppo Watch 41mm.jpg', 91)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (91, N'Oppo Watch 46mm dây silicone đen.jpg', 92)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (92, N'Oppo Watch 46mm.jpg', 93)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (93, N'Samsung Galaxy Watch 3 45mm titanium.jpg', 95)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (95, N'Samsung Galaxy Watch 3 LTE.jpg', 97)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (96, N'Samsung Galaxy Watch 3.jpg', 98)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (100, N'Samsung Galaxy Watch 4 LTE.jpg', 99)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (101, N'Samsung Galaxy Watch 4.jpg', 100)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (102, N'Samsung Galaxy Watch Active 2.jpg', 101)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (103, N'20.490.000.jpg', 102)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (104, N'11.690.000.jpg', 103)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (105, N'20.690.000.jpg', 104)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (106, N'18.990.000.jpg', 105)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (107, N'28.990.000.jpg', 106)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (108, N'Asus TUF Gaming FX506LH i5.jpg', 108)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (109, N'Asus VivoBook A515EA i3.jpg', 109)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (110, N'39.490.000Đ.jpg', 110)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (111, N'32.490.000Đ.jpg', 111)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (112, N'20.390.000Đ.jpg', 112)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (113, N'31.290.000.jpg', 113)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (114, N'27.290.000.jpg', 114)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (115, N'41.490.000.jpg', 115)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (116, N'30.590.000.jpg', 116)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (117, N'29.990.000.jpg', 117)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (118, N'18.590.000Đ.jpg', 118)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (119, N'17.590.000Đ.jpg', 119)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (120, N'51.740.000Đ.jpg', 120)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (121, N'49.090.000.jpg', 121)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (122, N'28.890.000.jpg', 122)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (123, N'18.090.000.jpg', 123)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (124, N'17.590.000.jpg', 124)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (125, N'20.590.000.jpg', 125)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (126, N'24.990.000.jpg', 129)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (127, N'47.990.000.jpg', 130)
GO
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (128, N'50.890.000.jpg', 133)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (129, N'48.890.000.jpg', 1007)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (130, N'48.890.000.jpg', 1008)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (131, N'28.990.000.jpg', 1009)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (132, N'MacBook Pro M1 2020.jpg', 1010)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (133, N'MacBook Air M1 2020.jpg', 1011)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (135, N'MacBook Air M1 2020 8GB512GBSilver.jpg', 1013)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (136, N'MacBook Pro M1 2020 8GB512GBSilver.jpg', 1014)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (137, N'MacBook Pro M1 2020 16GB1TB SSDSpace Grey.jpg', 1015)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (138, N'31.990.000.jpg', 1016)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (139, N'29.490.000.jpg', 1017)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (140, N'52.490.00.jpg', 1018)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (141, N'39.490.000.jpg', 1019)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (142, N'32.490.000.jpg', 1020)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (143, N'28.590.000.jpg', 1021)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (144, N'24.490.000.jpg', 1022)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (145, N'huawei-t10s-600x600-600x600.jpg', 1023)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (146, N'huawei-matepad-xanh-600x600-600x600.jpg', 1024)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (147, N'huawei-matepad-xam-128gb-600x600.jpg', 1025)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (149, N'huawei-matepad-t8-xanh-600x600.jpg', 1026)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (150, N'ipad-pro-2021-129-inch-silver-600x600.jpg', 1027)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (151, N'ipad-pro-2021-11-inch-silver-600x600.jpg', 1028)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (152, N'ipad-pro-12-9-inch-wifi-128gb-2020-xam.jpg', 1029)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (153, N'ipad-pro-11-inch-wifi-cellular-128gb-2020-xam.jpg', 1030)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (155, N'ipad-air-4-wifi-64gb-2020-xanhla.jpg', 1031)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (157, N'ipad-mini-79-inch-wifi-cellular-64gb-2019.jpg', 1032)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (160, N'ipad-gen-8-cellular-vang-new.jpg', 1034)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (161, N'tab-m10-fhd-plus-600-600x600.jpg', 1035)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (162, N'tab-m10-gen-2-600x600-600x600.jpg', 1036)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (163, N'lenovo-tab-a22-xam-600x600.jpg', 1037)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (164, N'lenovo-tab-m7-600x600-1-600x600.jpg', 1038)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (165, N'lenovo-tab-e7-tb-7104i-600x600-600x600.jpg', 1039)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (166, N'masstel-tab-10-ultra-vangdong-600x600-600x600.jpg', 1040)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (167, N'masstel-tab-10-den-600x600-600x600.jpg', 1041)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (168, N'masstel-tab10-pro-vang-new-600x600.jpg', 1042)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (169, N'samsung-galaxy-tab-s7-fe-green-600x600.jpg', 1043)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (170, N'samsung-galaxy-tab-a7-lite-sliver-600x600.jpg', 1044)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (171, N'samsung-galaxy-tab-s7-gold-new-600x600.jpg', 1045)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (173, N'samsung-galaxy-tab-a8-t295-2019-black-1.jpg', 1046)
INSERT [dbo].[Image] ([Id], [Nameimage], [ProductId]) VALUES (174, N'samsung-galaxy-tab-s6-lite-600x600-2-600x600.jpg', 1047)
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (9, N'Iphone_12_Xanh', 20490000, 1, CAST(N'2021-09-25' AS Date), N'iphone-12-xanh-duong-600x600.jpg', 1, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (10, N'Iphone_12_Pro_Mau_Xanh_Duong', 30990000, 1, CAST(N'2021-09-25' AS Date), N'iphone-12-pro-max-xanh-duong-new.jpg', 1, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (12, N'Iphone 12 pro bac', 27990000, 1, CAST(N'2021-09-25' AS Date), N'iphone-12-pro-bac-new.jpg', 1, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (13, N'Iphone 12 mimi den', 16490000, 1, CAST(N'2021-09-25' AS Date), N'iphone-12-mini-den-15-600x600.jpg', 1, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (16, N'Iphone xr hop mau den', 12490000, 1, CAST(N'2021-09-25' AS Date), N'iphone-xr-hopmoi-den-600x600.jpg', 1, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (17, N'Iphone se 128gb 2020 do', 11990000, 1, CAST(N'2021-09-26' AS Date), N'iphone-se-128gb-2020-do-600x600.jpg', 1, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (19, N'Iphone-se 2020 trang', 10490000, 1, CAST(N'2021-09-26' AS Date), N'iphone-se-2020-trang-600x600-600x600.jpg', 1, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (20, N'Iphone xi xanh la', 14990000, 1, CAST(N'2021-09-26' AS Date), N'iphone-xi-xanhla-600x600.jpg', 1, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (23, N'SamSung galaxy z fold 3 silver', 41990000, 1, CAST(N'2021-09-26' AS Date), N'oppo-reno6-z-5g-aurora-1-600x600.jpg', 1, 4, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (24, N'SamSung galaxy a52 5g thumb black', 9990000, 1, CAST(N'2021-09-26' AS Date), N'oppo-reno6-5g-aurora-600x600.jpg', 1, 4, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (25, N'SamSung galaxy z flip cream 6', 24990000, 1, CAST(N'2021-09-26' AS Date), N'oppo-a74-blue-9-600x600.jpg', 1, 4, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (26, N'SamSung galaxy z fold 2 den', 50000000, 1, CAST(N'2021-09-26' AS Date), N'oppo-find-x3-pro-black-001-1-600x600.jpg', 1, 4, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (27, N'SamSung galaxy s21 tim', 14990000, 1, CAST(N'2021-09-26' AS Date), N'oppo-reno5-5g-thumb-600x600.jpg', 1, 4, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (28, N'Realme c21y black', 3690000, 1, CAST(N'2021-09-26' AS Date), N'realme-c21y-black-600x600.jpg', 1, 5, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (31, N'Realme c25s grey', 4990000, 1, CAST(N'2021-09-26' AS Date), N'realme-c25s-grey-7-600x600.jpg', 1, 5, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (34, N'Realme 8 pro vang', 8690000, 1, CAST(N'2021-09-26' AS Date), N'realme-8-pro-vang-600x600.jpg', 1, 5, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (35, N'Realme 8 pro black', 8690000, 1, CAST(N'2021-09-26' AS Date), N'realme-8-pro-balck-600x600.jpg', 1, 5, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (37, N'Realme 8 silver ', 7290000, 1, CAST(N'2021-09-26' AS Date), N'realme-8-silver-600x600.jpg', 1, 5, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (38, N'Vivo y12s den new', 3790000, 1, CAST(N'2021-09-26' AS Date), N'samsung-galaxy-z-fold-3-silver-600x600.jpg', 1, 8, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (39, N'Vivo y53s xanh 600', 6990000, 1, CAST(N'2021-09-26' AS Date), N'samsung-galaxy-a52-5g-thumb-black.jpg', 1, 8, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (41, N'Vivo v21 5g xanh den', 9490000, 1, CAST(N'2021-09-26' AS Date), N'samsung-galaxy-z-flip-3-cream-600x600.jpg', 1, 8, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (42, N'Vivo den', 7790000, 1, CAST(N'2021-09-26' AS Date), N'samsung-galaxy-z-fold-2-den-600x600.jpg', 1, 8, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (44, N'Vivo v20 600 xanh hong', 7790000, 1, CAST(N'2021-09-26' AS Date), N'samsung-galaxy-s21-tim-600x600.jpg', 1, 8, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (45, N'Vsmart star 5 black', 279000, 1, CAST(N'2021-09-26' AS Date), N'vivo-y12s-den-new-600x600-600x600.jpg', 1, 9, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (46, N'Vsmart aris pro green', 5990000, 1, CAST(N'2021-09-26' AS Date), N'vivo-y53s-xanh-600x600.jpg', 1, 9, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (47, N'Vsmart aris xam', 5190000, 1, CAST(N'2021-09-26' AS Date), N'vivo-v21-5g-xanh-den-600x600.jpg', 1, 9, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (48, N'Vsmart live 4 xanh la', 3590000, 1, CAST(N'2021-09-26' AS Date), N'vivov202021den-600x600.jpg', 1, 9, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (50, N'Vsmart joy 4-6gb trang', 3290000, 1, CAST(N'2021-09-26' AS Date), N'vivo-v20-600-xanh-hong-2-600x600.jpg', 1, 9, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (52, N'Xiaomi 11 lite 4g blue', 7590000, 1, CAST(N'2021-09-26' AS Date), N'vsmart-star-5-thumb-black-600x600.jpg', 1, 10, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (54, N'Xiaomi redmi note xanh bong dem', 5990000, 1, CAST(N'2021-09-26' AS Date), N'vsmart-aris-pro-green-600jpg-600x600.jpg', 1, 10, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (55, N'Xiaomi 11 xanh duong', 16990000, 1, CAST(N'2021-09-26' AS Date), N'vsmart-aris-xam-600x600-600x600.jpg', 1, 10, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (56, N'Xiaomi 10t pro den', 12490000, 1, CAST(N'2021-09-26' AS Date), N'vsmart-live-4-xanh-la-600x600.jpg', 1, 10, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (57, N'Xiaomi redmi note pro xam', 7490000, 1, CAST(N'2021-09-26' AS Date), N'vsmart-joy-4-6gb-trang-600x600-600x600.jpg', 1, 10, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (58, N'Oppo reno6 aurora', 9490000, 1, CAST(N'2021-09-26' AS Date), N'xiaomi-mi-11-lite-4g-blue-600x600.jpg', 1, 11, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (59, N'Oppo reno6 5g aurora', 12990000, 1, CAST(N'2021-09-26' AS Date), N'xiaomi-redmi-note-10-5g-xanh-bong-dem.jpg', 1, 11, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (60, N'Oppo a74 blue 9', 6690000, 1, CAST(N'2021-09-26' AS Date), N'xiaomi-mi-11-xanhduong.jpg', 1, 11, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (61, N'Oppo find x3 pro black', 26990000, 1, CAST(N'2021-09-26' AS Date), N'xiaomi-mi-10t-pro-den-600x600.jpg', 1, 11, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (62, N'Oppo reno5 5g thumb', 11390000, 1, CAST(N'2021-09-26' AS Date), N'xiaomi-redmi-note-10-pro-thumb-xam.jpg', 1, 11, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (63, N'Apple Watch s3 GPS', 20000000, 1, CAST(N'2021-09-26' AS Date), N'Apple Watch S3 GPS.jpg', 1, 12, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (64, N'Apple Watch S5 LTE', 19541000, 1, CAST(N'2021-09-26' AS Date), N'Apple Watch S5 LTE 44mm viền thép dây thép bạc.jpg', 1, 12, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (65, N'Apple Watch S6 40mm', 10191000, 1, CAST(N'2021-09-26' AS Date), N'Apple Watch S6 40mm viền nhôm dây cao su hồng.jpg', 1, 12, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (66, N'Apple Watch S6 LTE', 18691000, 1, CAST(N'2021-09-26' AS Date), N'Apple Watch S6 LTE.jpg', 1, 12, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (67, N'Apple Watch SE LTE', 10191000, 1, CAST(N'2021-09-26' AS Date), N'Apple Watch SE LTE.jpg', 1, 12, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (68, N'Apple Watch SE', 7641000, 1, CAST(N'2021-09-26' AS Date), N'Apple Watch SE', 1, 12, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (69, N'BeU Active', 1390000, 1, CAST(N'2021-09-26' AS Date), N'BeU Active 1.jpg', 1, 13, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (70, N'BeU PT1', 833000, 1, CAST(N'2021-09-26' AS Date), N'BeU PT1.jpg', 1, 13, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (72, N'BeU PT2', 792000, 1, CAST(N'2021-09-26' AS Date), N'BeU PT2.jpg', 1, 13, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (73, N'BeU Sporty 1', 159000, 1, CAST(N'2021-09-26' AS Date), N'BeU Sporty 1.jpg', 1, 13, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (74, N'BeU Watch KW09', 1752000, 1, CAST(N'2021-09-26' AS Date), N'BeU Watch KW09.jpg', 1, 13, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (75, N'BeU B2', 552000, 1, CAST(N'2021-09-26' AS Date), N'Đồng hồ thông minh BeU B2.jpg', 1, 13, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (76, N'Garmin Enduro', 19990000, 1, CAST(N'2021-09-26' AS Date), N'Garmin Enduro.jpg', 1, 14, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (77, N'Garmin Fenix 6 Pro Solar', 21490000, 1, CAST(N'2021-09-26' AS Date), N'Garmin Fenix 6 Pro Solar.jpg', 1, 14, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (78, N'Garmin Fenix 6', 22490000, 1, CAST(N'2021-09-26' AS Date), N'Garmin Fenix 6.jpg', 1, 14, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (79, N'Garmin Fenix 6x Sapphire', 21490000, 1, CAST(N'2021-09-26' AS Date), N'Garmin Fenix 6X Sapphire.jpg', 1, 14, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (80, N'Garmin Forerunner 945', 14990000, 1, CAST(N'2021-09-26' AS Date), N'Garmin Forerunner 945.jpg', 1, 14, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (81, N'Garmin Lily', 4990000, 1, CAST(N'2021-09-26' AS Date), N'Garmin Lily.jpg', 1, 14, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (82, N'Kidcare', 792000, 1, CAST(N'2021-09-26' AS Date), N'Kidcare 06S.jpg', 1, 15, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (83, N'Kidcare 08S', 1112000, 1, CAST(N'2021-09-26' AS Date), N'Kidcare 08S.jpg', 1, 15, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (84, N'Kidcare 26', 1032000, 1, CAST(N'2021-09-26' AS Date), N'Kidcare 26.jpg', 1, 15, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (85, N'Kidcare S6 Xanh', 1432000, 1, CAST(N'2021-09-26' AS Date), N'Kidcare S6 Xanh.jpg', 1, 15, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (86, N'Kidcare S6', 1432000, 1, CAST(N'2021-09-26' AS Date), N'Kidcare S6.jpg', 1, 15, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (87, N'Kidcare S4', 1832000, 1, CAST(N'2021-09-26' AS Date), N'Kidcare S8.jpg', 1, 15, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (88, N'Oppo Band', 711000, 1, CAST(N'2021-09-26' AS Date), N'Oppo Band.jpg', 1, 16, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (89, N'Oppo Watch 41mm day silicone den', 4312000, 1, CAST(N'2021-09-26' AS Date), N'Oppo Watch 41mm dây silicone đen.jpg', 1, 16, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (90, N'Oppo Watch 41mm day silicone', 4752000, 1, CAST(N'2021-09-26' AS Date), N'Oppo Watch 41mm dây silicone.jpg', 1, 16, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (91, N'Oppo Watch 41mm', 4312000, 1, CAST(N'2021-09-26' AS Date), N'Oppo Watch 41mm.jpg', 1, 16, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (92, N'Oppo Watch 46mm day silicone den', 7990000, 1, CAST(N'2021-09-26' AS Date), N'Oppo Watch 46mm dây silicone đen.jpg', 1, 16, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (93, N'Oppo Watch 46mm', 5752000, 1, CAST(N'2021-09-26' AS Date), N'Oppo Watch 46mm.jpg', 1, 16, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (95, N'Samsung Galaxy Watch 3 45mm titanium', 1149000, 1, CAST(N'2021-09-26' AS Date), N'Samsung Galaxy Watch 3 45mm titanium.jpg', 1, 17, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (97, N'Samsung Galaxy', 6990000, 1, CAST(N'2021-09-26' AS Date), N'Samsung Galaxy Watch 3 LTE.jpg', 1, 17, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (98, N'Samsung Galaxy Watch 3', 4990000, 1, CAST(N'2021-09-26' AS Date), N'Samsung Galaxy Watch 3.jpg', 1, 17, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (99, N'Samsung Galaxy Watch 4 LTE', 9490000, 1, CAST(N'2021-09-26' AS Date), N'Samsung Galaxy Watch 4 LTE.jpg', 1, 17, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (100, N'Samsung Galaxy Watch 4', 8990000, 1, CAST(N'2021-09-26' AS Date), N'Samsung Galaxy Watch 4.jpg', 1, 17, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (101, N'Samsung Galaxy Watch Active 2', 5990000, 1, CAST(N'2021-09-26' AS Date), N'Samsung Galaxy Watch Active 2.jpg', 1, 17, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (102, N'Laptop Acer Aspire 7 Gaming', 20490000, 1, CAST(N'2021-09-26' AS Date), N'20.490.000.jpg', 1, 18, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (103, N'Laptop Acer Aspire A315', 11690000, 1, CAST(N'2021-09-26' AS Date), N'11.690.000.jpg', 1, 18, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (104, N'Laptop Acer Swift 3 SF314', 20690000, 1, CAST(N'2021-09-26' AS Date), N'20.690.000.jpg', 1, 18, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (105, N'Laptop Acer Aspire 7 Gaming A715', 18990000, 1, CAST(N'2021-09-26' AS Date), N'18.990.000.jpg', 1, 18, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (106, N'Laptop Acer Nitro 5 Gaming An515', 28990000, 1, CAST(N'2021-09-26' AS Date), N'28.990.000.jpg', 1, 18, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (108, N'Laptop Asus TUF Gaming FX506LH', 21490000, 1, CAST(N'2021-09-26' AS Date), N'Asus TUF Gaming FX506LH i5.jpg', 1, 19, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (109, N'Laptop Asus VivoBook A515EA i3 ', 16190000, 1, CAST(N'2021-09-26' AS Date), N'Asus VivoBook A515EA i3.jpg', 1, 19, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (110, N'Laptop Asus ZenBook UX371EA i7', 39490000, 1, CAST(N'2021-09-26' AS Date), N'39.490.000Đ.jpg', 1, 19, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (111, N'Laptop Asus TUF Gaming FX516PM i7', 32490000, 1, CAST(N'2021-09-26' AS Date), N'32.490.000Đ.jpg', 1, 19, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (112, N'Laptop Asus VivoBook A515EP i5', 20390000, 1, CAST(N'2021-09-26' AS Date), N'20.390.000Đ.jpg', 1, 19, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (113, N'Laptop Dell Gaming G3 15 i7', 31290000, 1, CAST(N'2021-09-26' AS Date), N'31.290.000.jpg', 1, 20, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (114, N'Laptop Dell Gaming G3 15 i7', 27290000, 1, CAST(N'2021-09-26' AS Date), N'27.290.000.jpg', 1, 20, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (115, N'Laptop Dell XPS 13 9310 i5', 41490000, 1, CAST(N'2021-09-26' AS Date), N'41.490.000.jpg', 1, 20, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (116, N'Laptop Dell Gaming G5 15 5500 i7', 30590000, 1, CAST(N'2021-09-26' AS Date), N'30.590.000.jpg', 1, 20, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (117, N'Laptop Dell Inspiron 7501 i5', 29990000, 1, CAST(N'2021-09-26' AS Date), N'29.990.000.jpg', 1, 20, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (118, N'Laptop HP Pavilion 15 eg0505TU i5', 18590000, 1, CAST(N'2021-09-26' AS Date), N'18.590.000Đ.jpg', 1, 21, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (119, N'Laptop HP 15s fq2559TU i5', 17590000, 1, CAST(N'2021-09-26' AS Date), N'17.590.000Đ.jpg', 1, 21, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (120, N'Laptop HP Omen 15 ek0078TX i7', 51740000, 1, CAST(N'2021-09-26' AS Date), N'51.740.000Đ.jpg', 1, 21, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (121, N'Laptop HP EliteBook X360 1040 G8 i7', 49090000, 1, CAST(N'2021-09-26' AS Date), N'49.090.000.jpg', 1, 21, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (122, N'Laptop HP Envy 13 ba1030TU i7', 28890000, 1, CAST(N'2021-09-26' AS Date), N'28.890.000.jpg', 1, 21, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (123, N'Laptop Lenovo IdeaPad Slim 5 15ITL05 i5', 18090000, 1, CAST(N'2021-09-26' AS Date), N'18.090.000.jpg', 1, 22, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (124, N'Laptop Lenovo IdeaPad 3 15ITL6 i5', 17590000, 1, CAST(N'2021-09-26' AS Date), N'17.590.000.jpg', 1, 22, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (125, N'Laptop Lenovo Ideapad 5 15ITL05 i5', 20590000, 1, CAST(N'2021-09-26' AS Date), N'20.590.000.jpg', 1, 22, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (129, N'Laptop Lenovo Ideapad Gaming 3 15IMH05 i7', 24990000, 1, CAST(N'2021-09-26' AS Date), N'24.990.000.jpg', 1, 22, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (130, N'Laptop Lenovo Yoga 9 14ITL5 i7', 47990000, 1, CAST(N'2021-09-26' AS Date), N'47.990.000.jpg', 1, 22, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (133, N'Laptop LG Gram 16 2021 i7', 50890000, 1, CAST(N'2021-09-26' AS Date), N'50.890.000.jpg', 1, 24, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1007, N'Laptop LG Gram 16 2021 i7', 48890000, 1, CAST(N'2021-09-26' AS Date), N'48.890.000.jpg', 1, 24, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1008, N'Laptop LG Gram 14 2021 i7', 48890000, 1, CAST(N'2021-09-26' AS Date), N'28.990.000.jpg', 1, 24, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1009, N'Laptop LG Gram 14 i5', 28990000, 1, CAST(N'2021-09-26' AS Date), N'MacBook Pro M1 2020.jpg', 1, 24, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1010, N'MacBook Pro M1 2020', 33190000, 1, CAST(N'2021-09-26' AS Date), N'MacBook Air M1 2020.jpg', 1, 25, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1011, N'MacBook Air M1', 7490000, 1, CAST(N'2021-09-26' AS Date), N'MacBook Air M1 2020 8GB512GBSilver.jpg', 1, 25, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1013, N'MacBook Air M1 2020 ', 33190000, 1, CAST(N'2021-09-26' AS Date), N'MacBook Pro M1 2020 8GB512GBSilver.jpg', 1, 25, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1014, N'MacBook Pro M1 2020 Silver', 37990000, 1, CAST(N'2021-09-26' AS Date), N'MacBook Pro M1 2020 16GB1TB SSDSpace Grey.jpg', 1, 25, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1015, N'MacBook Pro M1 2020 16GB1TB SSDSpace Grey', 50290000, 1, CAST(N'2021-09-26' AS Date), N'31.990.000.jpg', 1, 25, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1016, N'Laptop MSI Gaming GF65 10UE i7', 31990000, 1, CAST(N'2021-09-26' AS Date), N'29.490.000.jpg', 1, 26, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1017, N'Laptop MSI Katana Gaming GF66 11UC i7', 29490000, 1, CAST(N'2021-09-26' AS Date), N'52.490.00.jpg', 1, 26, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1018, N'Laptop MSI Gaming GP76 11UG i7', 52490000, 1, CAST(N'2021-09-27' AS Date), N'39.490.000.jpg', 1, 26, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1019, N'Laptop MSI Summit E13 Flip i7', 39490000, 1, CAST(N'2021-09-27' AS Date), N'32.490.000.jpg', 1, 26, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1020, N'Laptop MSI Gaming Leopard 10SDK GL65 i7', 32490000, 1, CAST(N'2021-09-27' AS Date), N'28.590.000.jpg', 1, 26, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1021, N'Laptop MSI Gaming GF65 Thin 10UE i5', 28590000, 1, CAST(N'2021-09-27' AS Date), N'24.490.000.jpg', 1, 26, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1022, N'Laptop MSI Gaming GL65 Leopard 10SCXK i7', 24490000, 1, CAST(N'2021-09-27' AS Date), N'huawei-t10s-600x600-600x600.jpg', 1, 26, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1023, N'Máy tính bảng Huawei MatePad T10s ', 50140000, 1, CAST(N'2021-09-27' AS Date), N'huawei-matepad-xanh-600x600-600x600.jpg', 1, 1005, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1024, N'Máy tính bảng Huawei MatePad 64GB ', 6590000, 1, CAST(N'2021-09-27' AS Date), N'huawei-matepad-xam-128gb-600x600.jpg', 1, 1005, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1025, N'Máy tính bảng Huawei MatePad 128GB ', 7490000, 1, CAST(N'2021-09-27' AS Date), N'huawei-matepad-t8-xanh-600x600.jpg', 1, 1005, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1026, N'Máy tính bảng Huawei MatePad T8 ', 3090000, 1, CAST(N'2021-09-27' AS Date), N'ipad-pro-2021-129-inch-silver-600x600.jpg', 1, 1005, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1027, N'Máy tính bảng iPad Pro M1 ', 38490000, 1, CAST(N'2021-09-27' AS Date), N'ipad-pro-2021-11-inch-silver-600x600.jpg', 1, 1006, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1028, N'Máy tính bảng iPad Pro M1 11 inch ', 28990000, 1, CAST(N'2021-09-27' AS Date), N'ipad-pro-12-9-inch-wifi-128gb-2020-xam.jpg', 1, 1006, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1029, N'Máy tính bảng iPad Pro 12.9 inch ', 26790000, 1, CAST(N'2021-09-27' AS Date), N'ipad-pro-11-inch-wifi-cellular-128gb-2020-xam.jpg', 1, 1006, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1030, N'Máy tính bảng iPad Pro 11 inch ', 26290000, 1, CAST(N'2021-09-27' AS Date), N'ipad-air-4-wifi-64gb-2020-xanhla.jpg', 1, 1006, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1031, N'Máy tính bảng iPad Air 4 ', 21290000, 1, CAST(N'2021-09-27' AS Date), N'ipad-mini-79-inch-wifi-cellular-64gb-2019.jpg', 1, 1006, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1032, N'Máy tính bảng iPad mini 7.9 inch ', 15790000, 1, CAST(N'2021-09-27' AS Date), N'ipad-gen-8-cellular-vang-new.jpg', 1, 1006, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1034, N'Máy tính bảng iPad 8 Wifi Cellular 128GB ', 15790000, 1, CAST(N'2021-09-27' AS Date), N'tab-m10-fhd-plus-600-600x600.jpg', 1, 1006, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1035, N'Máy tính bảng Lenovo Tab M10 ', 5990000, 1, CAST(N'2021-09-27' AS Date), N'tab-m10-gen-2-600x600-600x600.jpg', 1, 1007, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1036, N'Máy tính bảng Lenovo Tab M10 - Gen 2', 4690000, 1, CAST(N'2021-09-27' AS Date), N'lenovo-tab-a22-xam-600x600.jpg', 1, 1007, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1037, N'Máy tính bảng Lenovo Tab M8 ', 3790000, 1, CAST(N'2021-09-27' AS Date), N'lenovo-tab-m7-600x600-1-600x600.jpg', 1, 1007, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1038, N'Máy tính bảng Lenovo Tab M7', 2240000, 1, CAST(N'2021-09-27' AS Date), N'lenovo-tab-e7-tb-7104i-600x600-600x600.jpg', 1, 1007, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1039, N'Máy tính bảng Lenovo Tab E7 ', 1990000, 1, CAST(N'2021-09-27' AS Date), N'masstel-tab-10-ultra-vangdong-600x600-600x600.jpg', 1, 1007, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1040, N'Máy tính bảng Masstel Tab 10 Ultra', 3590000, 1, CAST(N'2021-09-27' AS Date), N'masstel-tab-10-den-600x600-600x600.jpg', 1, 1008, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1041, N'Máy tính bảng Masstel Tab10 4G', 3290000, 1, CAST(N'2021-09-27' AS Date), N'masstel-tab10-pro-vang-new-600x600.jpg', 1, 1008, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1042, N'Máy tính bảng Masstel Tab 10 Pro', 2240000, 1, CAST(N'2021-09-27' AS Date), N'masstel-tab10-pro-vang-new-600x600.jpg', 1, 1008, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1043, N'Máy tính bảng Samsung Galaxy Tab S7 FE', 13990000, 1, CAST(N'2021-09-27' AS Date), N'samsung-galaxy-tab-s7-fe-green-600x600.jpg', 1, 1009, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1044, N'Máy tính bảng Samsung Galaxy Tab A7 Lite', 4490000, 1, CAST(N'2021-09-27' AS Date), N'samsung-galaxy-tab-a7-lite-sliver-600x600.jpg', 1, 1009, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1045, N'Máy tính bảng Samsung Galaxy Tab S7', 18990000, 1, CAST(N'2021-09-27' AS Date), N'samsung-galaxy-tab-s7-gold-new-600x600.jpg', 1, 1009, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1046, N'Máy tính bảng Samsung Galaxy Tab A8 ', 3690000, 1, CAST(N'2021-09-27' AS Date), N'samsung-galaxy-tab-a8-t295-2019-black-1.jpg', 1, 1009, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1047, N'Máy tính bảng Samsung Galaxy Tab S6 Lite', 9990000, 1, CAST(N'2021-09-27' AS Date), N'samsung-galaxy-tab-s6-lite-600x600-2-600x600.jpg', 1, 1009, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1048, N'3', 22, 2, CAST(N'2020-02-02' AS Date), N'11.690.000.jpg', 1, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1049, N'Laptop Lenovo Ideapad Gaming 3 15IMH05 i7', 24990000, 1, CAST(N'2021-09-26' AS Date), N'11.690.000.jpg', 1, 22, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1050, N'Laptop Lenovo Yoga 9 14ITL5 i7', 47990000, 1, CAST(N'2021-09-26' AS Date), N'11.690.000.jpg', 1, 22, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1051, N'Laptop LG Gram 16 2021 i7', 50890000, 1, CAST(N'2021-09-26' AS Date), N'11.690.000.jpg', 1, 24, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1052, N'Laptop LG Gram 16 2021 i7', 48890000, 1, CAST(N'2021-09-26' AS Date), N'11.690.000.jpg', 1, 24, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1053, N'Laptop LG Gram 14 2021 i7', 48890000, 1, CAST(N'2021-09-26' AS Date), N'11.690.000.jpg', 1, 24, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1054, N'Laptop LG Gram 14 i5', 28990000, 1, CAST(N'2021-09-26' AS Date), N'11.690.000.jpg', 1, 24, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1055, N'MacBook Pro M1 2020', 33190000, 1, CAST(N'2021-09-26' AS Date), N'11.690.000.jpg', 1, 25, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1056, N'MacBook Air M1', 7490000, 1, CAST(N'2021-09-26' AS Date), N'11.690.000.jpg', 1, 25, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1057, N'MacBook Air M1 2020 ', 33190000, 1, CAST(N'2021-09-26' AS Date), N'11.690.000.jpg', 1, 25, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1058, N'MacBook Pro M1 2020 Silver', 37990000, 1, CAST(N'2021-09-26' AS Date), N'11.690.000.jpg', 1, 25, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1059, N'MacBook Pro M1 2020 16GB1TB SSDSpace Grey', 50290000, 1, CAST(N'2021-09-26' AS Date), N'11.690.000.jpg', 1, 25, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1060, N'Laptop MSI Gaming GF65 10UE i7', 31990000, 1, CAST(N'2021-09-26' AS Date), N'11.690.000.jpg', 1, 26, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1061, N'Laptop MSI Katana Gaming GF66 11UC i7', 29490000, 1, CAST(N'2021-09-26' AS Date), N'11.690.000.jpg', 1, 26, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1062, N'Laptop MSI Gaming GP76 11UG i7', 52490000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 26, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1063, N'Laptop MSI Summit E13 Flip i7', 39490000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 26, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1064, N'Laptop MSI Gaming Leopard 10SDK GL65 i7', 32490000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 26, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1065, N'Laptop MSI Gaming GF65 Thin 10UE i5', 28590000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 26, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1066, N'Laptop MSI Gaming GL65 Leopard 10SCXK i7', 24490000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 26, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1067, N'Máy tính bảng Huawei MatePad T10s ', 50140000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1005, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1068, N'Máy tính bảng Huawei MatePad 64GB ', 6590000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1005, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1069, N'Máy tính bảng Huawei MatePad 128GB ', 7490000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1005, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1070, N'Máy tính bảng Huawei MatePad T8 ', 3090000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1005, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1071, N'Máy tính bảng iPad Pro M1 ', 38490000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1006, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1072, N'Máy tính bảng iPad Pro M1 11 inch ', 28990000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1006, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1073, N'Máy tính bảng iPad Pro 12.9 inch ', 26790000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1006, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1074, N'Máy tính bảng iPad Pro 11 inch ', 26290000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1006, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1075, N'Máy tính bảng iPad Air 4 ', 21290000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1006, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1076, N'Máy tính bảng iPad mini 7.9 inch ', 15790000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1006, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1077, N'Máy tính bảng iPad 8 Wifi Cellular 128GB ', 15790000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1006, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1078, N'Máy tính bảng Lenovo Tab M10 ', 5990000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1007, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1079, N'Máy tính bảng Lenovo Tab M10 - Gen 2', 4690000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1007, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1080, N'Máy tính bảng Lenovo Tab M8 ', 3790000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1007, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1081, N'Máy tính bảng Lenovo Tab M7', 2240000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1007, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1082, N'Máy tính bảng Lenovo Tab E7 ', 1990000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1007, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1083, N'Máy tính bảng Masstel Tab 10 Ultra', 3590000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1008, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1084, N'Máy tính bảng Masstel Tab10 4G', 3290000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1008, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1085, N'Máy tính bảng Masstel Tab 10 Pro', 2240000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1008, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1086, N'Máy tính bảng Samsung Galaxy Tab S7 FE', 13990000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1009, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1087, N'Máy tính bảng Samsung Galaxy Tab A7 Lite', 4490000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1009, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1088, N'Máy tính bảng Samsung Galaxy Tab S7', 18990000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1009, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1089, N'Máy tính bảng Samsung Galaxy Tab A8 ', 3690000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1009, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SoLuong], [CreateDate], [Image], [Available], [CategoryId], [CuaHangId]) VALUES (1090, N'Máy tính bảng Samsung Galaxy Tab S6 Lite', 9990000, 1, CAST(N'2021-09-27' AS Date), N'11.690.000.jpg', 1, 1009, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'AD', N'ADMIN')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'CH', N'Chủ cửa hàng')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'KH', N'Khách Hàng')
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Accounts]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Roles]
GO
ALTER TABLE [dbo].[Catesmall]  WITH CHECK ADD  CONSTRAINT [FK_CateSmall_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Catesmall] CHECK CONSTRAINT [FK_CateSmall_Categories]
GO
ALTER TABLE [dbo].[Cuahang]  WITH CHECK ADD  CONSTRAINT [FK_CuaHang_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Cuahang] CHECK CONSTRAINT [FK_CuaHang_Accounts]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Products]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_CateSmall] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Catesmall] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_CateSmall]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_CateSmall1] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Catesmall] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_CateSmall1]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_CuaHang] FOREIGN KEY([CuaHangId])
REFERENCES [dbo].[Cuahang] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_CuaHang]
GO
ALTER TABLE [dbo].[Specification]  WITH CHECK ADD  CONSTRAINT [FK_Specification_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Specification] CHECK CONSTRAINT [FK_Specification_Products]
GO
