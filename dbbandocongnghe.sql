
use DBQuanLyBanDoCongNghe
GO
/****** Object:  Table [dbo].[tb_Brand]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Brand](
	[MaBrand] [int] IDENTITY(1,1) NOT NULL,
	[TenBrand] [nvarchar](150) NULL,
	[Description] [nvarchar](500) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Brand] PRIMARY KEY CLUSTERED 
(
	[MaBrand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Category]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Category](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](150) NULL,
	[Description] [nvarchar](500) NULL,
	[Position] [int] NULL,
	[IsActive] [bit] NULL,
	[Link] [varchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Category] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ChiTietOrder]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ChiTietOrder](
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[Price] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_tb_ChiTietOrder] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ChiTietOrder-Traveler]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ChiTietOrder-Traveler](
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[Price] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_tb_ChiTietOrder-Traveler] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ChucNang]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ChucNang](
	[MaChucNang] [int] IDENTITY(1,1) NOT NULL,
	[TenChucNang] [nvarchar](150) NULL,
 CONSTRAINT [PK_tb_ChucNang] PRIMARY KEY CLUSTERED 
(
	[MaChucNang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Color]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Color](
	[MaColor] [int] IDENTITY(1,1) NOT NULL,
	[TenColor] [nvarchar](150) NULL,
	[ImageColor] [nvarchar](max) NULL,
	[Description] [nvarchar](500) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Color] PRIMARY KEY CLUSTERED 
(
	[MaColor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Customer]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Customer](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](200) NULL,
	[TaiKhoan] [varchar](100) NULL,
	[MatKhau] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[ImageUser] [nchar](10) NULL,
	[Phone] [varchar](20) NULL,
	[Address] [nvarchar](500) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[NgaySinh] [datetime] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[IsAdmin] [bit] NULL,
 CONSTRAINT [PK_tb_Customer] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_DiscountCode]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_DiscountCode](
	[MaDiscount] [int] IDENTITY(1,1) NOT NULL,
	[TenDiscount] [nvarchar](150) NULL,
	[DiscountCode] [varchar](100) NULL,
	[Description] [nvarchar](500) NULL,
	[Quantity] [int] NULL,
	[Value] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_DiscountCode] PRIMARY KEY CLUSTERED 
(
	[MaDiscount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Memory]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Memory](
	[MaMemory] [int] IDENTITY(1,1) NOT NULL,
	[TenMemory] [nvarchar](150) NULL,
	[Description] [nvarchar](500) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Memory] PRIMARY KEY CLUSTERED 
(
	[MaMemory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_NhanVien]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_NhanVien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[TenNhanVien] [nvarchar](150) NULL,
	[TaiKhoan] [varchar](100) NULL,
	[MatKhau] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[ImageNhanVien] [nchar](10) NULL,
	[Phone] [varchar](20) NULL,
	[Address] [nvarchar](500) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[NgaySinh] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsQuanTriVien] [bit] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Order]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Order](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[MaPhuongThucThanhToan] [int] NULL,
	[GhiChu] [nvarchar](max) NULL,
	[IsThanhToan] [bit] NULL,
	[IsHoanThanh] [bit] NULL,
	[IsHuyDon] [bit] NULL,
	[TotalPayment] [decimal](18, 2) NULL,
	[MaDiscount] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Order] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_PhanQuyen]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_PhanQuyen](
	[MaChucNang] [int] NOT NULL,
	[MaNhanVien] [int] NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_tb_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaChucNang] ASC,
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_PhuongThucThanhToan]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_PhuongThucThanhToan](
	[MaPhuongThucThanhToan] [int] IDENTITY(1,1) NOT NULL,
	[TenPhuongThucThanhToan] [nvarchar](200) NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_PhuongThucThanhToan] PRIMARY KEY CLUSTERED 
(
	[MaPhuongThucThanhToan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Product]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Product](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Detail] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NULL,
	[PriceSale] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[ImageProduct] [nvarchar](max) NULL,
	[Link] [varchar](max) NULL,
	[IsActive] [bit] NULL,
	[IsSoldOut] [bit] NULL,
	[IsSale] [bit] NULL,
	[IsNew] [bit] NULL,
	[IsHot] [bit] NULL,
	[SeoTitle] [nvarchar](max) NULL,
	[SeoDescription] [nvarchar](max) NULL,
	[SeoKeywords] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[MaProductCategory] [int] NULL,
	[MaBrand] [int] NULL,
	[MaColor] [int] NULL,
	[MaMemory] [int] NULL,
 CONSTRAINT [PK_tb_Product] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ProductCategory]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductCategory](
	[MaProductCategory] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](150) NULL,
	[Description] [nvarchar](500) NULL,
	[Position] [int] NULL,
	[IsActive] [bit] NULL,
	[Link] [varchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_ProductCategory_1] PRIMARY KEY CLUSTERED 
(
	[MaProductCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ProductImages]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductImages](
	[MaImages] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Description] [nvarchar](500) NULL,
	[IsDefault] [bit] NULL,
	[MaSanPham] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_ProductImages] PRIMARY KEY CLUSTERED 
(
	[MaImages] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_TaiKhoanNganHang]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_TaiKhoanNganHang](
	[MaSoTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenNganHang] [nvarchar](200) NULL,
	[Description] [nvarchar](500) NULL,
	[SoTaiKhoan] [varchar](50) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_TaiKhoanNganHang] PRIMARY KEY CLUSTERED 
(
	[MaSoTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_TichDiem]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_TichDiem](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](200) NULL,
	[SoDiemCongGanNhat] [int] NULL,
	[TongSoDiem] [int] NULL,
	[MaDonHang] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_TichDiem] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Traveler]    Script Date: 12/17/2022 11:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Traveler](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[Email] [varchar](100) NULL,
	[PhoneNumber1] [varchar](20) NULL,
	[PhoneNumber2] [varchar](20) NULL,
	[Address] [nvarchar](500) NULL,
	[Ghichu] [nvarchar](500) NULL,
	[TotalPayment] [decimal](18, 2) NULL,
	[MaPhuongThucThanhToan] [int] NULL,
	[IsThanhToan] [bit] NULL,
	[IsHoanThanh] [bit] NULL,
	[IsHuyDon] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Traveler] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_Brand] ON 

INSERT [dbo].[tb_Brand] ([MaBrand], [TenBrand], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (8, N'Sony', NULL, NULL, CAST(N'2022-11-20T15:53:28.457' AS DateTime), CAST(N'2022-11-20T15:53:28.457' AS DateTime), NULL)
INSERT [dbo].[tb_Brand] ([MaBrand], [TenBrand], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (9, N'Apple', NULL, NULL, CAST(N'2022-11-24T14:52:39.100' AS DateTime), CAST(N'2022-12-09T02:25:52.250' AS DateTime), NULL)
INSERT [dbo].[tb_Brand] ([MaBrand], [TenBrand], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (10, N'Nokia', NULL, NULL, CAST(N'2022-11-28T23:39:15.407' AS DateTime), CAST(N'2022-11-28T23:39:15.407' AS DateTime), NULL)
INSERT [dbo].[tb_Brand] ([MaBrand], [TenBrand], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (11, N'Xiaomi', NULL, NULL, CAST(N'2022-12-09T02:23:59.660' AS DateTime), CAST(N'2022-12-09T02:23:59.660' AS DateTime), NULL)
INSERT [dbo].[tb_Brand] ([MaBrand], [TenBrand], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (12, N'SamSung', NULL, NULL, CAST(N'2022-12-09T02:24:13.503' AS DateTime), CAST(N'2022-12-09T02:24:13.503' AS DateTime), NULL)
INSERT [dbo].[tb_Brand] ([MaBrand], [TenBrand], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (13, N'LG', NULL, NULL, CAST(N'2022-12-09T02:24:25.107' AS DateTime), CAST(N'2022-12-09T02:24:25.107' AS DateTime), NULL)
INSERT [dbo].[tb_Brand] ([MaBrand], [TenBrand], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (14, N'Oppo', NULL, NULL, CAST(N'2022-12-09T02:25:14.933' AS DateTime), CAST(N'2022-12-09T02:25:14.933' AS DateTime), NULL)
INSERT [dbo].[tb_Brand] ([MaBrand], [TenBrand], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (15, N'Vivo', NULL, NULL, CAST(N'2022-12-09T02:26:05.237' AS DateTime), CAST(N'2022-12-09T02:26:05.237' AS DateTime), NULL)
INSERT [dbo].[tb_Brand] ([MaBrand], [TenBrand], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (16, N'Huawei', NULL, NULL, CAST(N'2022-12-09T02:26:19.490' AS DateTime), CAST(N'2022-12-09T02:26:19.490' AS DateTime), NULL)
INSERT [dbo].[tb_Brand] ([MaBrand], [TenBrand], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (17, N'Asus', NULL, NULL, CAST(N'2022-12-09T02:26:45.503' AS DateTime), CAST(N'2022-12-09T02:26:45.503' AS DateTime), NULL)
INSERT [dbo].[tb_Brand] ([MaBrand], [TenBrand], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (18, N'Dell', NULL, NULL, CAST(N'2022-12-09T02:26:58.463' AS DateTime), CAST(N'2022-12-09T02:26:58.463' AS DateTime), NULL)
INSERT [dbo].[tb_Brand] ([MaBrand], [TenBrand], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (19, N'HP', NULL, NULL, CAST(N'2022-12-09T02:27:07.000' AS DateTime), CAST(N'2022-12-09T02:27:07.000' AS DateTime), NULL)
INSERT [dbo].[tb_Brand] ([MaBrand], [TenBrand], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (20, N'MSI', NULL, NULL, CAST(N'2022-12-09T02:27:14.507' AS DateTime), CAST(N'2022-12-09T02:27:14.507' AS DateTime), NULL)
INSERT [dbo].[tb_Brand] ([MaBrand], [TenBrand], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (21, N'Lenovo', NULL, NULL, CAST(N'2022-12-09T02:27:24.777' AS DateTime), CAST(N'2022-12-09T02:27:24.777' AS DateTime), NULL)
INSERT [dbo].[tb_Brand] ([MaBrand], [TenBrand], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (22, N'Acer', NULL, NULL, CAST(N'2022-12-09T02:27:32.173' AS DateTime), CAST(N'2022-12-09T02:27:32.173' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Category] ON 

INSERT [dbo].[tb_Category] ([MaDanhMuc], [TenDanhMuc], [Description], [Position], [IsActive], [Link], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (21, N'Trang chủ', NULL, 1, 1, N'trang-chu', CAST(N'2022-11-24T02:40:38.173' AS DateTime), NULL, CAST(N'2022-12-13T00:27:26.950' AS DateTime), NULL)
INSERT [dbo].[tb_Category] ([MaDanhMuc], [TenDanhMuc], [Description], [Position], [IsActive], [Link], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (22, N'Điện thoại', NULL, 3, 1, N'dien-thoai', CAST(N'2022-11-24T15:24:59.763' AS DateTime), NULL, CAST(N'2022-11-24T21:56:27.397' AS DateTime), NULL)
INSERT [dbo].[tb_Category] ([MaDanhMuc], [TenDanhMuc], [Description], [Position], [IsActive], [Link], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (23, N'Sản Phẩm', NULL, 2, 1, N'san-pham', CAST(N'2022-11-24T21:55:54.730' AS DateTime), NULL, CAST(N'2022-12-09T01:50:27.120' AS DateTime), NULL)
INSERT [dbo].[tb_Category] ([MaDanhMuc], [TenDanhMuc], [Description], [Position], [IsActive], [Link], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (24, N'Lap top', NULL, 4, 1, N'lap-top', CAST(N'2022-11-28T23:29:37.103' AS DateTime), NULL, CAST(N'2022-12-04T20:08:49.197' AS DateTime), NULL)
INSERT [dbo].[tb_Category] ([MaDanhMuc], [TenDanhMuc], [Description], [Position], [IsActive], [Link], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (25, N'Giới thiệu', NULL, 5, 1, N'gioi-thieu', CAST(N'2022-12-04T20:09:02.143' AS DateTime), NULL, CAST(N'2022-12-09T16:02:42.743' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_Category] OFF
GO
INSERT [dbo].[tb_ChiTietOrder] ([MaDonHang], [MaSanPham], [Price], [Quantity]) VALUES (5, 22, CAST(28990000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_ChiTietOrder] ([MaDonHang], [MaSanPham], [Price], [Quantity]) VALUES (5, 27, CAST(24000000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_ChiTietOrder] ([MaDonHang], [MaSanPham], [Price], [Quantity]) VALUES (6, 26, CAST(12000000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_ChiTietOrder] ([MaDonHang], [MaSanPham], [Price], [Quantity]) VALUES (7, 24, CAST(22800000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_ChiTietOrder] ([MaDonHang], [MaSanPham], [Price], [Quantity]) VALUES (7, 27, CAST(24000000.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[tb_ChiTietOrder-Traveler] ([MaDonHang], [MaSanPham], [Price], [Quantity]) VALUES (10, 24, CAST(22800000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_ChiTietOrder-Traveler] ([MaDonHang], [MaSanPham], [Price], [Quantity]) VALUES (11, 23, CAST(25000000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_ChiTietOrder-Traveler] ([MaDonHang], [MaSanPham], [Price], [Quantity]) VALUES (11, 24, CAST(22800000.00 AS Decimal(18, 2)), 1)
GO
SET IDENTITY_INSERT [dbo].[tb_ChucNang] ON 

INSERT [dbo].[tb_ChucNang] ([MaChucNang], [TenChucNang]) VALUES (1, N'Quản lý navbar')
INSERT [dbo].[tb_ChucNang] ([MaChucNang], [TenChucNang]) VALUES (2, N'Quản lý danh mục sản phẩm')
INSERT [dbo].[tb_ChucNang] ([MaChucNang], [TenChucNang]) VALUES (3, N'Quản lý danh sách sản phẩm')
INSERT [dbo].[tb_ChucNang] ([MaChucNang], [TenChucNang]) VALUES (4, N'Quản lý danh sách thương hiệu')
INSERT [dbo].[tb_ChucNang] ([MaChucNang], [TenChucNang]) VALUES (5, N'Quản lý màu sắc')
INSERT [dbo].[tb_ChucNang] ([MaChucNang], [TenChucNang]) VALUES (6, N'Quản lý bộ nhớ')
INSERT [dbo].[tb_ChucNang] ([MaChucNang], [TenChucNang]) VALUES (7, N'Quản lý mã giảm giá')
INSERT [dbo].[tb_ChucNang] ([MaChucNang], [TenChucNang]) VALUES (8, N'Quản lý đơn hàng khách hàng')
INSERT [dbo].[tb_ChucNang] ([MaChucNang], [TenChucNang]) VALUES (9, N'Quản lý đơn hàng khách vãng lai')
INSERT [dbo].[tb_ChucNang] ([MaChucNang], [TenChucNang]) VALUES (10, N'Quản lý ban quản trị')
INSERT [dbo].[tb_ChucNang] ([MaChucNang], [TenChucNang]) VALUES (11, N'Quản lý khách hàng thành viên')
INSERT [dbo].[tb_ChucNang] ([MaChucNang], [TenChucNang]) VALUES (12, N'Quản lý phương thức thanh toán')
INSERT [dbo].[tb_ChucNang] ([MaChucNang], [TenChucNang]) VALUES (13, N'Quản lý tài khoản ngân hàng')
SET IDENTITY_INSERT [dbo].[tb_ChucNang] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Color] ON 

INSERT [dbo].[tb_Color] ([MaColor], [TenColor], [ImageColor], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (7, N'Màu gold', N'/Uploads/images/Color/Screenshot%202022-12-09%20014332.png', NULL, NULL, CAST(N'2022-11-20T15:57:40.313' AS DateTime), CAST(N'2022-12-09T01:47:37.547' AS DateTime), NULL)
INSERT [dbo].[tb_Color] ([MaColor], [TenColor], [ImageColor], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (9, N'Màu bạc', N'/Uploads/images/Color/Screenshot%202022-12-09%20014541.png', NULL, NULL, CAST(N'2022-12-09T01:47:31.287' AS DateTime), CAST(N'2022-12-09T01:47:31.287' AS DateTime), NULL)
INSERT [dbo].[tb_Color] ([MaColor], [TenColor], [ImageColor], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (10, N'Màu đen', N'/Uploads/images/Color/Screenshot%202022-12-09%20035753.png', NULL, NULL, CAST(N'2022-12-09T03:59:21.407' AS DateTime), CAST(N'2022-12-09T03:59:21.407' AS DateTime), NULL)
INSERT [dbo].[tb_Color] ([MaColor], [TenColor], [ImageColor], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (11, N'Màu tím', N'/Uploads/images/Color/Screenshot%202022-12-09%20041204.png', NULL, NULL, CAST(N'2022-12-09T04:12:48.060' AS DateTime), CAST(N'2022-12-09T04:12:48.060' AS DateTime), NULL)
INSERT [dbo].[tb_Color] ([MaColor], [TenColor], [ImageColor], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (12, N'Màu tím nhạt', N'/Uploads/images/Color/Screenshot%202022-12-09%20043019.png', NULL, NULL, CAST(N'2022-12-09T04:31:00.567' AS DateTime), CAST(N'2022-12-09T04:31:00.567' AS DateTime), NULL)
INSERT [dbo].[tb_Color] ([MaColor], [TenColor], [ImageColor], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (13, N'màu trắng', N'/Uploads/images/Color/Screenshot%202022-12-09%20114308.png', NULL, NULL, CAST(N'2022-12-09T11:39:56.107' AS DateTime), CAST(N'2022-12-09T11:43:53.987' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_Color] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Customer] ON 

INSERT [dbo].[tb_Customer] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [ImageUser], [Phone], [Address], [GioiTinh], [NgaySinh], [IsActive], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy], [IsAdmin]) VALUES (1, N'Phan Nhật Hào', N'PhanNhatHao', N'4297f44b13955235245b2497399d7a93', N'trochoivuongquyen30072000@gmail.com', NULL, N'0918798849', N'36/5C Ấp 2,Xuân Thới Thượng,Hóc Môn,TP.Hồ Chí Minh', N'Nam', CAST(N'2022-12-02T00:00:00.000' AS DateTime), 1, NULL, CAST(N'2022-12-05T18:53:32.047' AS DateTime), CAST(N'2022-12-17T01:40:23.633' AS DateTime), NULL, NULL)
INSERT [dbo].[tb_Customer] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [ImageUser], [Phone], [Address], [GioiTinh], [NgaySinh], [IsActive], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy], [IsAdmin]) VALUES (4, N'Tran Huy Bão', N'tranhuybao@gmail.com', N'4297f44b13955235245b2497399d7a93', N'tranhuybao@gmail.com', NULL, N'0918798849', N'36/5C Ấp 2,Xuân Thới Thượng,Hóc Môn,TP.Hồ Chí Minh', N'Nam', CAST(N'2022-12-14T00:00:00.000' AS DateTime), 1, NULL, CAST(N'2022-12-08T04:37:53.160' AS DateTime), CAST(N'2022-12-08T16:10:07.570' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[tb_Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_DiscountCode] ON 

INSERT [dbo].[tb_DiscountCode] ([MaDiscount], [TenDiscount], [DiscountCode], [Description], [Quantity], [Value], [IsActive], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (4, N'Sale tháng 12', N'SALE50', N'Giảm 5.000.000vnd trên đơn hàng', 0, CAST(5000000.00 AS Decimal(18, 2)), 1, NULL, CAST(N'2022-11-30T01:52:13.250' AS DateTime), CAST(N'2022-12-13T00:49:42.853' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_DiscountCode] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Memory] ON 

INSERT [dbo].[tb_Memory] ([MaMemory], [TenMemory], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (5, N'2GB', NULL, NULL, CAST(N'2022-11-20T00:20:01.360' AS DateTime), CAST(N'2022-12-09T02:29:02.207' AS DateTime), NULL)
INSERT [dbo].[tb_Memory] ([MaMemory], [TenMemory], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (6, N'4GB', NULL, NULL, CAST(N'2022-12-09T02:28:43.420' AS DateTime), CAST(N'2022-12-09T02:29:08.523' AS DateTime), NULL)
INSERT [dbo].[tb_Memory] ([MaMemory], [TenMemory], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (7, N'8GB', NULL, NULL, CAST(N'2022-12-09T02:29:16.597' AS DateTime), CAST(N'2022-12-09T02:29:16.597' AS DateTime), NULL)
INSERT [dbo].[tb_Memory] ([MaMemory], [TenMemory], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (8, N'16GB', NULL, NULL, CAST(N'2022-12-09T02:29:24.553' AS DateTime), CAST(N'2022-12-09T02:29:24.553' AS DateTime), NULL)
INSERT [dbo].[tb_Memory] ([MaMemory], [TenMemory], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (9, N'32GB', NULL, NULL, CAST(N'2022-12-09T02:29:41.020' AS DateTime), CAST(N'2022-12-09T02:29:41.020' AS DateTime), NULL)
INSERT [dbo].[tb_Memory] ([MaMemory], [TenMemory], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (10, N'64GB', NULL, NULL, CAST(N'2022-12-09T02:30:05.867' AS DateTime), CAST(N'2022-12-09T02:30:05.867' AS DateTime), NULL)
INSERT [dbo].[tb_Memory] ([MaMemory], [TenMemory], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (11, N'128GB', NULL, NULL, CAST(N'2022-12-09T02:30:15.153' AS DateTime), CAST(N'2022-12-09T02:30:15.153' AS DateTime), NULL)
INSERT [dbo].[tb_Memory] ([MaMemory], [TenMemory], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (12, N'256GB', NULL, NULL, CAST(N'2022-12-09T02:30:25.833' AS DateTime), CAST(N'2022-12-09T02:30:25.833' AS DateTime), NULL)
INSERT [dbo].[tb_Memory] ([MaMemory], [TenMemory], [Description], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (13, N'512GB', NULL, NULL, CAST(N'2022-12-09T02:30:32.767' AS DateTime), CAST(N'2022-12-09T02:30:32.767' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_Memory] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_NhanVien] ON 

INSERT [dbo].[tb_NhanVien] ([MaNhanVien], [TenNhanVien], [TaiKhoan], [MatKhau], [Email], [ImageNhanVien], [Phone], [Address], [GioiTinh], [NgaySinh], [IsActive], [IsQuanTriVien], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (5, N'Phan Nhật Hào', N'PhanNhatHao', N'4297f44b13955235245b2497399d7a93', N'trochoivuongquyen30072000@gmail.com', NULL, N'0918798849', N'36/5C Ấp 2,Xuân Thới Thượng,Hóc Môn,TP.Hồ Chí Minh', N'Nam', NULL, 1, 1, NULL, CAST(N'2022-12-12T01:28:29.353' AS DateTime), CAST(N'2022-12-12T01:28:29.353' AS DateTime), NULL)
INSERT [dbo].[tb_NhanVien] ([MaNhanVien], [TenNhanVien], [TaiKhoan], [MatKhau], [Email], [ImageNhanVien], [Phone], [Address], [GioiTinh], [NgaySinh], [IsActive], [IsQuanTriVien], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (6, N'Phan Nhật Huy', N'PhanNhatHuy', N'4297f44b13955235245b2497399d7a93', N'trochoivuongquyen30072000@gmail.com', NULL, N'0918798849', N'36/5C Ấp 2,Xuân Thới Thượng,Hóc Môn,TP.Hồ Chí Minh', N'Nam', NULL, 1, 0, NULL, CAST(N'2022-12-12T03:05:46.607' AS DateTime), CAST(N'2022-12-12T03:05:46.607' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Order] ON 

INSERT [dbo].[tb_Order] ([MaDonHang], [MaKH], [MaPhuongThucThanhToan], [GhiChu], [IsThanhToan], [IsHoanThanh], [IsHuyDon], [TotalPayment], [MaDiscount], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, 1, 6, N'Giao nhanh dùm mình nha', 0, 0, 1, CAST(52990000.00 AS Decimal(18, 2)), NULL, CAST(N'2022-12-09T04:37:34.047' AS DateTime), NULL, CAST(N'2022-12-17T22:54:16.573' AS DateTime), NULL)
INSERT [dbo].[tb_Order] ([MaDonHang], [MaKH], [MaPhuongThucThanhToan], [GhiChu], [IsThanhToan], [IsHoanThanh], [IsHuyDon], [TotalPayment], [MaDiscount], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, 1, 5, NULL, 0, 1, 0, CAST(12000000.00 AS Decimal(18, 2)), NULL, CAST(N'2022-12-09T04:37:54.990' AS DateTime), NULL, CAST(N'2022-12-09T17:21:23.193' AS DateTime), NULL)
INSERT [dbo].[tb_Order] ([MaDonHang], [MaKH], [MaPhuongThucThanhToan], [GhiChu], [IsThanhToan], [IsHoanThanh], [IsHuyDon], [TotalPayment], [MaDiscount], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, 1, 6, NULL, 0, 0, 0, CAST(46800000.00 AS Decimal(18, 2)), NULL, CAST(N'2022-12-17T01:41:57.967' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_Order] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_PhuongThucThanhToan] ON 

INSERT [dbo].[tb_PhuongThucThanhToan] ([MaPhuongThucThanhToan], [TenPhuongThucThanhToan], [Description], [IsActive], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (5, N'Cod', N'Trả tiền sau khi nhận hàng', 1, NULL, CAST(N'2022-12-01T03:35:00.577' AS DateTime), CAST(N'2022-12-01T03:35:00.577' AS DateTime), NULL)
INSERT [dbo].[tb_PhuongThucThanhToan] ([MaPhuongThucThanhToan], [TenPhuongThucThanhToan], [Description], [IsActive], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (6, N'Chuyển khoản', N'Trả tiền trước khi nhận hàng', 1, NULL, CAST(N'2022-12-01T03:35:24.560' AS DateTime), CAST(N'2022-12-01T03:35:24.560' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_PhuongThucThanhToan] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Product] ON 

INSERT [dbo].[tb_Product] ([MaSanPham], [TenSanPham], [Description], [Detail], [Price], [PriceSale], [Quantity], [ImageProduct], [Link], [IsActive], [IsSoldOut], [IsSale], [IsNew], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy], [MaProductCategory], [MaBrand], [MaColor], [MaMemory]) VALUES (22, N'MacBook Pro 2022', NULL, NULL, CAST(30000000.00 AS Decimal(18, 2)), CAST(28990000.00 AS Decimal(18, 2)), 10, NULL, N'macbook-pro-2022', 1, 0, 1, 1, 0, N'MacBook Pro 2022', NULL, NULL, NULL, CAST(N'2022-12-09T02:46:34.623' AS DateTime), CAST(N'2022-12-09T16:33:44.037' AS DateTime), NULL, 14, 9, 9, 12)
INSERT [dbo].[tb_Product] ([MaSanPham], [TenSanPham], [Description], [Detail], [Price], [PriceSale], [Quantity], [ImageProduct], [Link], [IsActive], [IsSoldOut], [IsSale], [IsNew], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy], [MaProductCategory], [MaBrand], [MaColor], [MaMemory]) VALUES (23, N'MacBook Air 2022', NULL, NULL, CAST(25000000.00 AS Decimal(18, 2)), CAST(22990000.00 AS Decimal(18, 2)), 10, NULL, N'macbook-air-2022', 1, 0, 0, 1, 1, N'MacBook Air 2022', NULL, NULL, NULL, CAST(N'2022-12-09T03:21:02.920' AS DateTime), CAST(N'2022-12-09T03:21:02.920' AS DateTime), NULL, 14, 9, 7, 13)
INSERT [dbo].[tb_Product] ([MaSanPham], [TenSanPham], [Description], [Detail], [Price], [PriceSale], [Quantity], [ImageProduct], [Link], [IsActive], [IsSoldOut], [IsSale], [IsNew], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy], [MaProductCategory], [MaBrand], [MaColor], [MaMemory]) VALUES (24, N'HP Envy', NULL, NULL, CAST(23800000.00 AS Decimal(18, 2)), CAST(22800000.00 AS Decimal(18, 2)), 10, NULL, N'hp-envy', 1, 0, 1, 1, 0, N'HP Envy', NULL, NULL, NULL, CAST(N'2022-12-09T03:28:31.653' AS DateTime), CAST(N'2022-12-09T03:28:31.653' AS DateTime), NULL, 14, 19, 9, 13)
INSERT [dbo].[tb_Product] ([MaSanPham], [TenSanPham], [Description], [Detail], [Price], [PriceSale], [Quantity], [ImageProduct], [Link], [IsActive], [IsSoldOut], [IsSale], [IsNew], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy], [MaProductCategory], [MaBrand], [MaColor], [MaMemory]) VALUES (25, N'HP Envy 13', NULL, NULL, CAST(24800000.00 AS Decimal(18, 2)), CAST(23800000.00 AS Decimal(18, 2)), 10, NULL, N'hp-envy-13', 1, 0, 1, 0, 0, N'HP Envy 13', NULL, NULL, NULL, CAST(N'2022-12-09T03:45:44.350' AS DateTime), CAST(N'2022-12-09T04:32:16.430' AS DateTime), NULL, 14, 19, 9, 12)
INSERT [dbo].[tb_Product] ([MaSanPham], [TenSanPham], [Description], [Detail], [Price], [PriceSale], [Quantity], [ImageProduct], [Link], [IsActive], [IsSoldOut], [IsSale], [IsNew], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy], [MaProductCategory], [MaBrand], [MaColor], [MaMemory]) VALUES (26, N'Mi 12x', NULL, NULL, CAST(12000000.00 AS Decimal(18, 2)), CAST(11800000.00 AS Decimal(18, 2)), 10, NULL, N'mi-12x', 1, 0, 0, 1, 0, N'Mi 12x', NULL, NULL, NULL, CAST(N'2022-12-09T04:03:27.203' AS DateTime), CAST(N'2022-12-09T04:03:27.203' AS DateTime), NULL, 13, 11, 10, 10)
INSERT [dbo].[tb_Product] ([MaSanPham], [TenSanPham], [Description], [Detail], [Price], [PriceSale], [Quantity], [ImageProduct], [Link], [IsActive], [IsSoldOut], [IsSale], [IsNew], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy], [MaProductCategory], [MaBrand], [MaColor], [MaMemory]) VALUES (27, N'Iphone 14 Pro Max', NULL, NULL, CAST(25000000.00 AS Decimal(18, 2)), CAST(24000000.00 AS Decimal(18, 2)), 10, NULL, N'iphone-14-pro-max', 1, 0, 1, 1, 0, N'Iphone 14 Pro Max', NULL, NULL, NULL, CAST(N'2022-12-09T04:14:11.437' AS DateTime), CAST(N'2022-12-09T04:14:11.437' AS DateTime), NULL, 13, 9, 11, 11)
INSERT [dbo].[tb_Product] ([MaSanPham], [TenSanPham], [Description], [Detail], [Price], [PriceSale], [Quantity], [ImageProduct], [Link], [IsActive], [IsSoldOut], [IsSale], [IsNew], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy], [MaProductCategory], [MaBrand], [MaColor], [MaMemory]) VALUES (28, N'Iphone 14', NULL, NULL, CAST(23800000.00 AS Decimal(18, 2)), CAST(22800000.00 AS Decimal(18, 2)), 10, NULL, N'iphone-14', 1, 0, 1, 1, 1, N'Iphone 14', NULL, NULL, NULL, CAST(N'2022-12-09T04:32:04.483' AS DateTime), CAST(N'2022-12-09T04:32:04.483' AS DateTime), NULL, 13, 9, 12, 11)
INSERT [dbo].[tb_Product] ([MaSanPham], [TenSanPham], [Description], [Detail], [Price], [PriceSale], [Quantity], [ImageProduct], [Link], [IsActive], [IsSoldOut], [IsSale], [IsNew], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy], [MaProductCategory], [MaBrand], [MaColor], [MaMemory]) VALUES (29, N'SamSung S22 5G', NULL, NULL, CAST(18000000.00 AS Decimal(18, 2)), CAST(16000000.00 AS Decimal(18, 2)), 10, NULL, N'samsung-s22-5g', 1, 0, 1, 1, 1, N'SamSung S22 5G', NULL, NULL, NULL, CAST(N'2022-12-09T04:35:33.860' AS DateTime), CAST(N'2022-12-09T04:35:33.860' AS DateTime), NULL, 13, 12, 10, 12)
INSERT [dbo].[tb_Product] ([MaSanPham], [TenSanPham], [Description], [Detail], [Price], [PriceSale], [Quantity], [ImageProduct], [Link], [IsActive], [IsSoldOut], [IsSale], [IsNew], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy], [MaProductCategory], [MaBrand], [MaColor], [MaMemory]) VALUES (30, N'Samsung galaxy Z Fold 4 5G', NULL, NULL, CAST(33590000.00 AS Decimal(18, 2)), CAST(32590000.00 AS Decimal(18, 2)), 10, NULL, N'samsung-galaxy-z-fold-4-5g', 1, 0, 1, 1, 1, N'Samsung galaxy Z Fold 4 5G', NULL, NULL, NULL, CAST(N'2022-12-09T11:27:00.120' AS DateTime), CAST(N'2022-12-09T11:27:00.120' AS DateTime), NULL, 13, 12, 10, 12)
INSERT [dbo].[tb_Product] ([MaSanPham], [TenSanPham], [Description], [Detail], [Price], [PriceSale], [Quantity], [ImageProduct], [Link], [IsActive], [IsSoldOut], [IsSale], [IsNew], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy], [MaProductCategory], [MaBrand], [MaColor], [MaMemory]) VALUES (31, N'Tai nghe Bluetooth Apple AirPods 2 ', NULL, NULL, CAST(3990000.00 AS Decimal(18, 2)), CAST(2690000.00 AS Decimal(18, 2)), 10, NULL, N'tai-nghe-bluetooth-apple-airpods-2', 1, 0, 1, 1, 1, N'Tai nghe Bluetooth Apple AirPods 2 ', NULL, NULL, NULL, CAST(N'2022-12-09T11:42:29.350' AS DateTime), CAST(N'2022-12-09T11:42:29.350' AS DateTime), NULL, 15, 9, 13, NULL)
INSERT [dbo].[tb_Product] ([MaSanPham], [TenSanPham], [Description], [Detail], [Price], [PriceSale], [Quantity], [ImageProduct], [Link], [IsActive], [IsSoldOut], [IsSale], [IsNew], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy], [MaProductCategory], [MaBrand], [MaColor], [MaMemory]) VALUES (32, N'Tai nghe không dây Samsung Galaxy Buds2 Pro', NULL, NULL, CAST(4990000.00 AS Decimal(18, 2)), CAST(3790000.00 AS Decimal(18, 2)), 10, NULL, N'tai-nghe-khong-day-samsung-galaxy-buds2-pro', 1, 0, 1, 1, 1, N'Tai nghe không dây Samsung Galaxy Buds2 Pro', NULL, NULL, NULL, CAST(N'2022-12-09T11:48:07.783' AS DateTime), CAST(N'2022-12-09T11:48:07.783' AS DateTime), NULL, 15, 12, 10, NULL)
INSERT [dbo].[tb_Product] ([MaSanPham], [TenSanPham], [Description], [Detail], [Price], [PriceSale], [Quantity], [ImageProduct], [Link], [IsActive], [IsSoldOut], [IsSale], [IsNew], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy], [MaProductCategory], [MaBrand], [MaColor], [MaMemory]) VALUES (33, N'Tai nghe Có Dây Samsung IA500', NULL, NULL, CAST(300000.00 AS Decimal(18, 2)), CAST(290000.00 AS Decimal(18, 2)), 10, NULL, N'tai-nghe-co-day-samsung-ia500', 1, 0, 1, 1, 1, N'Tai nghe Có Dây Samsung IA500', NULL, NULL, NULL, CAST(N'2022-12-09T15:57:40.940' AS DateTime), CAST(N'2022-12-09T16:33:31.643' AS DateTime), NULL, 15, 12, 10, NULL)
SET IDENTITY_INSERT [dbo].[tb_Product] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] ON 

INSERT [dbo].[tb_ProductCategory] ([MaProductCategory], [TenDanhMuc], [Description], [Position], [IsActive], [Link], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (13, N'Điện thoại', NULL, 1, 1, N'dien-thoai', NULL, CAST(N'2022-11-24T12:25:21.737' AS DateTime), CAST(N'2022-11-24T12:25:21.737' AS DateTime), NULL)
INSERT [dbo].[tb_ProductCategory] ([MaProductCategory], [TenDanhMuc], [Description], [Position], [IsActive], [Link], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (14, N'Lap top', NULL, 2, 1, N'lap-top', NULL, CAST(N'2022-11-24T12:25:37.047' AS DateTime), CAST(N'2022-11-24T12:25:37.047' AS DateTime), NULL)
INSERT [dbo].[tb_ProductCategory] ([MaProductCategory], [TenDanhMuc], [Description], [Position], [IsActive], [Link], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (15, N'Phụ kiện', NULL, 3, 1, N'phu-kien', NULL, CAST(N'2022-11-25T18:03:51.897' AS DateTime), CAST(N'2022-11-25T18:03:51.897' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ProductImages] ON 

INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (36, N'/Uploads/images/ProductImage/macbook-pro-m1-2021-silver-14-1024x1024.jpg', NULL, 1, 22, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (37, N'/Uploads/images/ProductImage/macbook-pro-m1-2021_1669887580.png', NULL, 0, 22, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (38, N'/Uploads/images/ProductImage/macbook-pro-m2-oneway-silver-1_1662431435.png', NULL, 0, 22, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (39, N'/Uploads/images/ProductImage/mac-512edgfhgh-595x553.jpg', NULL, 1, 23, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (40, N'/Uploads/images/ProductImage/mac1gjhk-595x445.jpg', NULL, 0, 23, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (41, N'/Uploads/images/ProductImage/mac1hjlkl-1-595x462.jpg', NULL, 0, 23, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (42, N'/Uploads/images/ProductImage/HP-ENVY-17t-cg000-Laptop-www_laptopvip_vn-1623487239.jpg', NULL, 1, 24, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (43, N'/Uploads/images/ProductImage/51KiTmQVzAL__SL1000_.jpg', NULL, 0, 24, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (44, N'/Uploads/images/ProductImage/2008_Hpenvy13.jpg', NULL, 0, 25, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (45, N'/Uploads/images/ProductImage/5170_hp_envy_13_aq1047tu_8xs69pa_5.jpg', NULL, 1, 25, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (46, N'/Uploads/images/ProductImage/xiaomi-12x-didongviet_1.jpg', NULL, 1, 26, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (47, N'/Uploads/images/ProductImage/61ib0WL4fjL__AC_SL1500_.jpg', NULL, 0, 26, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (48, N'/Uploads/images/ProductImage/iphone.png', NULL, 1, 27, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (49, N'/Uploads/images/ProductImage/iphone_14_purple.jpg', NULL, 1, 28, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (50, N'/Uploads/images/ProductImage/655e734f88904b7510126a0d9992b2a5.jpg', NULL, 1, 29, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (51, N'/Uploads/images/ProductImage/657eca11baf1bc21508e46784fbb2c03.jpg', NULL, 0, 29, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (52, N'/Uploads/images/ProductImage/10052908-dien-thoai-samsung-galaxy-z-fold-4-5g-256gb-xam-3.jpg', NULL, 1, 30, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (53, N'/Uploads/images/ProductImage/samsung-galaxy-z-fold-4-5g(2).jpg', NULL, 0, 30, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (54, N'/Uploads/images/ProductImage/tai-nghe-airpods-2.jpg', NULL, 1, 31, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (55, N'/Uploads/images/ProductImage/Tai_nghe_Bluetooth_Apple_AirPods_2.jpeg', NULL, 0, 31, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (56, N'/Uploads/images/ProductImage/tai-nghe-bluetooth-samsung-galaxy-buds2-pro-didongviet_1_1.jpg', NULL, 1, 32, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (57, N'/Uploads/images/ProductImage/big_tai-nghe-galaxy-buds2-pro-moi-gia-bao-nhieu.jpg', NULL, 0, 32, NULL, NULL)
INSERT [dbo].[tb_ProductImages] ([MaImages], [Image], [Description], [IsDefault], [MaSanPham], [CreateDate], [CreatedBy]) VALUES (58, N'/Uploads/images/ProductImage/nhet-tai-samsung-ia500-den-thumb-600x600.jpg', NULL, 1, 33, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_TaiKhoanNganHang] ON 

INSERT [dbo].[tb_TaiKhoanNganHang] ([MaSoTaiKhoan], [TenNganHang], [Description], [SoTaiKhoan], [CreatedBy], [CreateDate], [UpdatedDate], [UpdatedBy]) VALUES (6, N'Agribank', N'Chi nhánh bắc sài gòn', N'00000000000', NULL, CAST(N'2022-12-01T03:36:26.090' AS DateTime), CAST(N'2022-12-01T03:36:26.090' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_TaiKhoanNganHang] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Traveler] ON 

INSERT [dbo].[tb_Traveler] ([MaDonHang], [HoTen], [Email], [PhoneNumber1], [PhoneNumber2], [Address], [Ghichu], [TotalPayment], [MaPhuongThucThanhToan], [IsThanhToan], [IsHoanThanh], [IsHuyDon], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (10, N'Phan Nhật Hào', N'trochoivuongquyen30072000@gmail.com', N'0918798849', NULL, N'36/5C Ấp 2,Xuân Thới Thượng,Hóc Môn,TP.Hồ Chí Minh', NULL, CAST(22800000.00 AS Decimal(18, 2)), 6, 0, 0, 0, CAST(N'2022-12-17T22:49:46.193' AS DateTime), NULL, CAST(N'2022-12-17T23:23:05.887' AS DateTime), NULL)
INSERT [dbo].[tb_Traveler] ([MaDonHang], [HoTen], [Email], [PhoneNumber1], [PhoneNumber2], [Address], [Ghichu], [TotalPayment], [MaPhuongThucThanhToan], [IsThanhToan], [IsHoanThanh], [IsHuyDon], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (11, N'Phan Nhật Hào', N'trochoivuongquyen30072000@gmail.com', N'0918798849', NULL, N'36/5C Ấp 2,Xuân Thới Thượng,Hóc Môn,TP.Hồ Chí Minh', NULL, CAST(47800000.00 AS Decimal(18, 2)), 5, 0, 0, 0, CAST(N'2022-12-17T22:50:27.333' AS DateTime), NULL, CAST(N'2022-12-17T23:23:19.087' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_Traveler] OFF
GO
ALTER TABLE [dbo].[tb_ChiTietOrder]  WITH CHECK ADD  CONSTRAINT [FK_tb_ChiTietOrder_tb_Order] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[tb_Order] ([MaDonHang])
GO
ALTER TABLE [dbo].[tb_ChiTietOrder] CHECK CONSTRAINT [FK_tb_ChiTietOrder_tb_Order]
GO
ALTER TABLE [dbo].[tb_ChiTietOrder]  WITH CHECK ADD  CONSTRAINT [FK_tb_ChiTietOrder_tb_Product] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[tb_Product] ([MaSanPham])
GO
ALTER TABLE [dbo].[tb_ChiTietOrder] CHECK CONSTRAINT [FK_tb_ChiTietOrder_tb_Product]
GO
ALTER TABLE [dbo].[tb_ChiTietOrder-Traveler]  WITH CHECK ADD  CONSTRAINT [FK_tb_ChiTietOrder-Traveler_tb_Product] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[tb_Product] ([MaSanPham])
GO
ALTER TABLE [dbo].[tb_ChiTietOrder-Traveler] CHECK CONSTRAINT [FK_tb_ChiTietOrder-Traveler_tb_Product]
GO
ALTER TABLE [dbo].[tb_ChiTietOrder-Traveler]  WITH CHECK ADD  CONSTRAINT [FK_tb_ChiTietOrder-Traveler_tb_Traveler] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[tb_Traveler] ([MaDonHang])
GO
ALTER TABLE [dbo].[tb_ChiTietOrder-Traveler] CHECK CONSTRAINT [FK_tb_ChiTietOrder-Traveler_tb_Traveler]
GO
ALTER TABLE [dbo].[tb_Order]  WITH CHECK ADD  CONSTRAINT [FK_tb_Order_tb_Customer] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tb_Customer] ([MaKH])
GO
ALTER TABLE [dbo].[tb_Order] CHECK CONSTRAINT [FK_tb_Order_tb_Customer]
GO
ALTER TABLE [dbo].[tb_Order]  WITH CHECK ADD  CONSTRAINT [FK_tb_Order_tb_DiscountCode] FOREIGN KEY([MaDiscount])
REFERENCES [dbo].[tb_DiscountCode] ([MaDiscount])
GO
ALTER TABLE [dbo].[tb_Order] CHECK CONSTRAINT [FK_tb_Order_tb_DiscountCode]
GO
ALTER TABLE [dbo].[tb_Order]  WITH CHECK ADD  CONSTRAINT [FK_tb_Order_tb_PhuongThucThanhToan] FOREIGN KEY([MaPhuongThucThanhToan])
REFERENCES [dbo].[tb_PhuongThucThanhToan] ([MaPhuongThucThanhToan])
GO
ALTER TABLE [dbo].[tb_Order] CHECK CONSTRAINT [FK_tb_Order_tb_PhuongThucThanhToan]
GO
ALTER TABLE [dbo].[tb_PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_tb_PhanQuyen_tb_ChucNang] FOREIGN KEY([MaChucNang])
REFERENCES [dbo].[tb_ChucNang] ([MaChucNang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_PhanQuyen] CHECK CONSTRAINT [FK_tb_PhanQuyen_tb_ChucNang]
GO
ALTER TABLE [dbo].[tb_PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_tb_PhanQuyen_tb_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[tb_NhanVien] ([MaNhanVien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_PhanQuyen] CHECK CONSTRAINT [FK_tb_PhanQuyen_tb_NhanVien]
GO
ALTER TABLE [dbo].[tb_Product]  WITH CHECK ADD  CONSTRAINT [FK_tb_Product_tb_Brand] FOREIGN KEY([MaBrand])
REFERENCES [dbo].[tb_Brand] ([MaBrand])
GO
ALTER TABLE [dbo].[tb_Product] CHECK CONSTRAINT [FK_tb_Product_tb_Brand]
GO
ALTER TABLE [dbo].[tb_Product]  WITH CHECK ADD  CONSTRAINT [FK_tb_Product_tb_Color1] FOREIGN KEY([MaColor])
REFERENCES [dbo].[tb_Color] ([MaColor])
GO
ALTER TABLE [dbo].[tb_Product] CHECK CONSTRAINT [FK_tb_Product_tb_Color1]
GO
ALTER TABLE [dbo].[tb_Product]  WITH CHECK ADD  CONSTRAINT [FK_tb_Product_tb_Memory] FOREIGN KEY([MaMemory])
REFERENCES [dbo].[tb_Memory] ([MaMemory])
GO
ALTER TABLE [dbo].[tb_Product] CHECK CONSTRAINT [FK_tb_Product_tb_Memory]
GO
ALTER TABLE [dbo].[tb_Product]  WITH CHECK ADD  CONSTRAINT [FK_tb_Product_tb_ProductCategory] FOREIGN KEY([MaProductCategory])
REFERENCES [dbo].[tb_ProductCategory] ([MaProductCategory])
GO
ALTER TABLE [dbo].[tb_Product] CHECK CONSTRAINT [FK_tb_Product_tb_ProductCategory]
GO
ALTER TABLE [dbo].[tb_ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_tb_ProductImages_tb_Product1] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[tb_Product] ([MaSanPham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_ProductImages] CHECK CONSTRAINT [FK_tb_ProductImages_tb_Product1]
GO
ALTER TABLE [dbo].[tb_TichDiem]  WITH CHECK ADD  CONSTRAINT [FK_tb_TichDiem_tb_Customer] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tb_Customer] ([MaKH])
GO
ALTER TABLE [dbo].[tb_TichDiem] CHECK CONSTRAINT [FK_tb_TichDiem_tb_Customer]
GO
ALTER TABLE [dbo].[tb_TichDiem]  WITH CHECK ADD  CONSTRAINT [FK_tb_TichDiem_tb_Order] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[tb_Order] ([MaDonHang])
GO
ALTER TABLE [dbo].[tb_TichDiem] CHECK CONSTRAINT [FK_tb_TichDiem_tb_Order]
GO
ALTER TABLE [dbo].[tb_Traveler]  WITH CHECK ADD  CONSTRAINT [FK_tb_Traveler_tb_PhuongThucThanhToan] FOREIGN KEY([MaPhuongThucThanhToan])
REFERENCES [dbo].[tb_PhuongThucThanhToan] ([MaPhuongThucThanhToan])
GO
ALTER TABLE [dbo].[tb_Traveler] CHECK CONSTRAINT [FK_tb_Traveler_tb_PhuongThucThanhToan]
GO

