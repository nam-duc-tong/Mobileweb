USE [master]
GO
/****** Object:  Database [ShopOnline]    Script Date: 5/4/2021 5:21:48 AM ******/
CREATE DATABASE [ShopOnline]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopOnline', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ShopOnline.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopOnline_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ShopOnline_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShopOnline] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopOnline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopOnline] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopOnline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopOnline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopOnline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopOnline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopOnline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopOnline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopOnline] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopOnline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopOnline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopOnline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopOnline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopOnline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopOnline] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopOnline] SET  MULTI_USER 
GO
ALTER DATABASE [ShopOnline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopOnline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopOnline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopOnline] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopOnline] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopOnline] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ShopOnline] SET QUERY_STORE = OFF
GO
USE [ShopOnline]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 5/4/2021 5:21:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](10) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham_1] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 5/4/2021 5:21:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [nvarchar](10) NOT NULL,
	[TenNhaSanXuat] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaSanXuat_1] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/4/2021 5:21:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](10) NOT NULL,
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[MaNhaSanXuat] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[CauHinh] [nvarchar](max) NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongDaBan] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_SanPham_1] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP01', N'Cao Cấp')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP02', N'Trung Bình')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP03', N'Sang Chảnh')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP04', N'Cao Cấp')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP05', N'Trung Bình')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP06', N'Sang Chảnh')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP07', N'Hiện Đại')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP08', N'Trung Bình')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP09', N'Cao Cấp')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP10', N'Sang Chảnh')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP11', N'Hiện Đại')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP12', N'Cao Cấp')
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX01', N'Iphone')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX02', N'Iphone')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX03', N'Iphone')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX04', N'SamSung')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX05', N'SamSung')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX06', N'SamSung')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX07', N'SamSung')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX08', N'SamSung')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX09', N'SamSung')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX10', N'OPPO')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX11', N'OPPO')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX12', N'OPPO')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP01', N'LSP01', N'NSX01', N'Iphone 7 Plus 2', N'Chua Xac Dinh', N'1.png', NULL, NULL, NULL, NULL, 24999000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP02', N'LSP02', N'NSX02', N'Iphone 8 Plus 2', N'Chua Xac Dinh', N'2.png', NULL, NULL, NULL, NULL, 25999000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP03', N'LSP03', N'NSX03', N'Iphone 9 Plus 2', N'Chua Xac Dinh', N'3.png', NULL, NULL, NULL, NULL, 26999000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP04', N'LSP04', N'NSX04', N'SamSung J4+', N'Chua Xac Dinh', N'4.png', NULL, NULL, NULL, NULL, 27999000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP05', N'LSP05', N'NSX05', N'SamSung Note1', N'Chua Xac Dinh', N'5.png', NULL, NULL, NULL, NULL, 28999000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP06', N'LSP06', N'NSX06', N'SamSung F1', N'Chua Xac Dinh', N'6.png', NULL, NULL, NULL, NULL, 30000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP07', N'LSP07', N'NSX07', N'SamSung F1', N'Chua Xac Dinh', N'7.png', NULL, NULL, NULL, NULL, 20000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP08', N'LSP08', N'NSX08', N'SamSung F1', N'Chua Xac Dinh', N'8.png', NULL, NULL, NULL, NULL, 25000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP09', N'LSP09', N'NSX09', N'SamSung F1', N'Chua Xac Dinh', N'9.png', NULL, NULL, NULL, NULL, 35000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP10', N'LSP10', N'NSX10', N'OPPO1', N'Chua Xac Dinh', N'10.png', NULL, NULL, NULL, NULL, 36000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP11', N'LSP11', N'NSX11', N'OPPO2', N'Chua Xac Dinh', N'11.png', NULL, NULL, NULL, NULL, 23000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP12', N'LSP12', N'NSX12', N'OPPO3', N'Chua Xac Dinh', N'12.png', NULL, NULL, NULL, NULL, 10000000, 0, 0, N'0         ')
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongDaBan]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_LuotView]  DEFAULT ((0)) FOR [LuotView]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
USE [master]
GO
ALTER DATABASE [ShopOnline] SET  READ_WRITE 
GO
