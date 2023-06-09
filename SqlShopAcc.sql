
USE [ShopAcc]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 04/04/2022 7:55:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idGame] [int] NOT NULL,
	[taikhoan] [varchar](20) NULL,
	[matkhau] [varchar](20) NULL,
	[trangthai] [bit] NULL,
	[ngaycapnhat] [datetime] NULL,
	[giaban] [decimal](18, 0) NULL,
	[rank] [nvarchar](10) NULL,
	[tuong] [int] NULL,
	[trangphuc] [int] NULL,
	[hinh] [varchar](250) NULL,
	[idLoai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 04/04/2022 7:55:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[idAdmin] [int] IDENTITY(1,1) NOT NULL,
	[tenDangNhap] [varchar](20) NULL,
	[matkhau] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[idAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 04/04/2022 7:55:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[iduser] [int] NOT NULL,
	[id] [int] NOT NULL,
	[maHD] [int] NOT NULL,
	[gia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Table_2] PRIMARY KEY CLUSTERED 
(
	[iduser] ASC,
	[id] ASC,
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 04/04/2022 7:55:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHD] [int] IDENTITY(1,1) NOT NULL,
	[thanhtoan] [bit] NULL,
	[ngaythanhtoan] [datetime] NULL,
	[tongtien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiAcc]    Script Date: 04/04/2022 7:55:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiAcc](
	[idLoai] [int] IDENTITY(1,1) NOT NULL,
	[tenloai] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[idLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiGame]    Script Date: 04/04/2022 7:55:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiGame](
	[idGame] [int] IDENTITY(1,1) NOT NULL,
	[tengame] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[idGame] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Media]    Script Date: 04/04/2022 7:55:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Media](
	[idMedia] [int] IDENTITY(1,1) NOT NULL,
	[link_Media] [varchar](250) NULL,
	[id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idMedia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruyCap]    Script Date: 04/04/2022 7:55:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruyCap](
	[iduser] [int] NOT NULL,
	[id] [int] NOT NULL,
	[trangthai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[iduser] ASC,
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 04/04/2022 7:55:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[iduser] [int] IDENTITY(1,1) NOT NULL,
	[tendn] [varchar](20) NULL,
	[matkhau] [varchar](20) NULL,
	[email] [varchar](120) NULL,
	[sdt] [varchar](11) NULL,
	[tenhienthi] [nvarchar](30) NULL,
	[anhdaidien] [varchar](250) NULL,
	[trangthai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[iduser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (1, 1, N'tkLOL01', N'123456789', 0, CAST(N'2022-03-28T00:00:00.000' AS DateTime), CAST(650000 AS Decimal(18, 0)), N'KC III', 150, 200, N'/Content/game images/lienminh1.jpg', 2)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (3, 1, N'tkLOL02', N'123456789', 0, CAST(N'2022-03-29T00:00:00.000' AS DateTime), CAST(300000 AS Decimal(18, 0)), N'Vàng II', 100, 100, N'/Content/game images/lienminh2.jpg', 1)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (9, 1, N'tkLOL03', N'123456789', 0, CAST(N'2022-03-29T00:00:00.000' AS DateTime), CAST(600000 AS Decimal(18, 0)), N'KC IV', 145, 155, N'/Content/game images/lienminh3.jpg', 2)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (10, 1, N'tkLOL04', N'123456789', 0, CAST(N'2022-03-29T00:00:00.000' AS DateTime), CAST(750000 AS Decimal(18, 0)), N'KC II', 169, 180, N'/Content/game images/lienminh4.jpg', 2)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (12, 1, N'tkLOL05', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(500000 AS Decimal(18, 0)), N'BK III', 159, 120, N'/Content/game images/lienminh5.jpg', 1)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (13, 1, N'tkLOL06', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(2100000 AS Decimal(18, 0)), N'Thách Đấu', 159, 500, N'/Content/game images/lienminh6.jpg', 2)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (14, 1, N'tkLOL07', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(200000 AS Decimal(18, 0)), N'Bạc II', 120, 130, N'/Content/game images/lienminh7.jpg', 1)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (15, 1, N'tkLOL08', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(250000 AS Decimal(18, 0)), N'Bạc I', 130, 100, N'/Content/game images/lienminh8.jpg', 1)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (16, 1, N'tkLOL09', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(2300000 AS Decimal(18, 0)), N'Thách Đấu', 159, 600, N'/Content/game images/lienminh9.jpg', 2)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (17, 1, N'tkLOL10', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(800000 AS Decimal(18, 0)), N'KC III', 140, 143, N'/Content/game images/lienminh10.jpg', 2)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (19, 2, N'tkTC01', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(500000 AS Decimal(18, 0)), N'ĐCT', 49, 20, N'/Content/game images/tocchien1.jpg', 2)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (20, 2, N'tkTC02', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(1000000 AS Decimal(18, 0)), N'Thách Đấu', 49, 40, N'/Content/game images/tocchien2.jpg', 2)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (21, 2, N'tkTC03', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(900000 AS Decimal(18, 0)), N'Thách Đấu', 49, 35, N'/Content/game images/tocchien3.jpg', 2)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (22, 2, N'tkTC04', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(950000 AS Decimal(18, 0)), N'Thách Đấu', 49, 38, N'/Content/game images/tocchien4.jpg', 2)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (24, 2, N'tkTC05', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(600000 AS Decimal(18, 0)), N'BK III', 30, 20, N'/Content/game images/tocchien5.jpg', 1)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (25, 2, N'tkTC06', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(550000 AS Decimal(18, 0)), N'Bạc IV', 22, 15, N'/Content/game images/tocchien6.jpg', 1)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (26, 2, N'tkTC07', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(830000 AS Decimal(18, 0)), N'Thách Đấu', 40, 32, N'/Content/game images/tocchien7.jpg', 2)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (27, 2, N'tkTC08', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(820000 AS Decimal(18, 0)), N'Thách Đấu', 39, 36, N'/Content/game images/tocchien8.jpg', 2)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (29, 2, N'tkTC09', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(250000 AS Decimal(18, 0)), N'Đồng I', 15, 10, N'/Content/game images/tocchien9.jpg', 1)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (31, 2, N'tkTC10', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(530000 AS Decimal(18, 0)), N'BK III', 26, 25, N'/Content/game images/tocchien10.jpg', 1)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (32, 3, N'tkLQ01', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(650000 AS Decimal(18, 0)), N'Tinh Anh', 108, 400, N'/Content/game images/lienquan1.jpg', 2)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (33, 3, N'tkLQ02', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(520000 AS Decimal(18, 0)), N'Cao Thủ', 102, 245, N'/Content/game images/lienquan2.jpg', 1)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (35, 3, N'tkLQ03', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(550000 AS Decimal(18, 0)), N'Cao Thủ', 105, 350, N'/Content/game images/lienquan3.jpg', 1)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (37, 3, N'tkLQ04', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(630000 AS Decimal(18, 0)), N'Tinh Anh', 108, 369, N'/Content/game images/lienquan4.jpg', 2)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (38, 3, N'tkLQ05', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(570000 AS Decimal(18, 0)), N'Tinh Anh', 107, 323, N'/Content/game images/lienquan5.jpg', 2)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (39, 3, N'tkLQ06', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(536000 AS Decimal(18, 0)), N'Cao Thủ', 102, 236, N'/Content/game images/lienquan6.jpg', 1)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (40, 3, N'tkLQ07', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(545000 AS Decimal(18, 0)), N'Cao Thủ', 100, 243, N'/Content/game images/lienquan7.jpg', 1)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (41, 3, N'tkLQ08', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(420000 AS Decimal(18, 0)), N'KC', 80, 110, N'/Content/game images/lienquan8.jpg', 1)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (42, 3, N'tkLQ09', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(635000 AS Decimal(18, 0)), N'Tinh Anh', 108, 352, N'/Content/game images/lienquan9.jpg', 2)
INSERT [dbo].[Account] ([id], [idGame], [taikhoan], [matkhau], [trangthai], [ngaycapnhat], [giaban], [rank], [tuong], [trangphuc], [hinh], [idLoai]) VALUES (43, 3, N'tkLQ10', N'123456789', 1, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(655000 AS Decimal(18, 0)), N'Tinh Anh', 107, 342, N'/Content/game images/lienquan10.jpg', 2)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([idAdmin], [tenDangNhap], [matkhau]) VALUES (1, N'admin', N'123456789')
INSERT [dbo].[Admin] ([idAdmin], [tenDangNhap], [matkhau]) VALUES (2, N'admin2', N'123456789')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
INSERT [dbo].[ChiTietHD] ([iduser], [id], [maHD], [gia]) VALUES (1, 1, 5, CAST(650000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHD] ([iduser], [id], [maHD], [gia]) VALUES (1, 3, 4, CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHD] ([iduser], [id], [maHD], [gia]) VALUES (1, 9, 4, CAST(600000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHD] ([iduser], [id], [maHD], [gia]) VALUES (1, 10, 5, CAST(750000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([maHD], [thanhtoan], [ngaythanhtoan], [tongtien]) VALUES (4, 1, CAST(N'2022-04-04T00:00:00.000' AS DateTime), CAST(900000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHD], [thanhtoan], [ngaythanhtoan], [tongtien]) VALUES (5, 1, CAST(N'2022-04-04T00:00:00.000' AS DateTime), CAST(1400000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiAcc] ON 

INSERT [dbo].[LoaiAcc] ([idLoai], [tenloai]) VALUES (1, N'Thường ')
INSERT [dbo].[LoaiAcc] ([idLoai], [tenloai]) VALUES (2, N'Vip')
SET IDENTITY_INSERT [dbo].[LoaiAcc] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiGame] ON 

INSERT [dbo].[LoaiGame] ([idGame], [tengame]) VALUES (1, N'Liên Minh Huyền Thoại')
INSERT [dbo].[LoaiGame] ([idGame], [tengame]) VALUES (2, N'Tốc Chiến ')
INSERT [dbo].[LoaiGame] ([idGame], [tengame]) VALUES (3, N'Liên Quân Mobile')
SET IDENTITY_INSERT [dbo].[LoaiGame] OFF
GO
SET IDENTITY_INSERT [dbo].[Media] ON 

INSERT [dbo].[Media] ([idMedia], [link_Media], [id]) VALUES (1, N'/Content/images/linkmedia1.jpg', 1)
INSERT [dbo].[Media] ([idMedia], [link_Media], [id]) VALUES (2, N'/Content/images/linkmedia2.jpg', 3)
INSERT [dbo].[Media] ([idMedia], [link_Media], [id]) VALUES (3, N'/Content/images/linkmedia3.jpg', 9)
INSERT [dbo].[Media] ([idMedia], [link_Media], [id]) VALUES (4, N'/Content/images/linkmedia4.jpg', 32)
INSERT [dbo].[Media] ([idMedia], [link_Media], [id]) VALUES (5, N'/Content/images/linkmedia5.jpg', 33)
INSERT [dbo].[Media] ([idMedia], [link_Media], [id]) VALUES (6, N'/Content/images/linkmedia6.jpg', 35)
INSERT [dbo].[Media] ([idMedia], [link_Media], [id]) VALUES (11, N'/Content/images/linkmedia7.jpg', 19)
INSERT [dbo].[Media] ([idMedia], [link_Media], [id]) VALUES (14, N'/Content/images/linkmedia8.jpg', 20)
INSERT [dbo].[Media] ([idMedia], [link_Media], [id]) VALUES (15, N'/Content/images/linkmedia9.jpg', 21)
INSERT [dbo].[Media] ([idMedia], [link_Media], [id]) VALUES (16, N'/Content/images/acc3-4.jpg', 32)
INSERT [dbo].[Media] ([idMedia], [link_Media], [id]) VALUES (17, N'/Content/images/acc3-1.jpg', 12)
INSERT [dbo].[Media] ([idMedia], [link_Media], [id]) VALUES (18, N'/Content/images/acc3-2.jpg', 12)
INSERT [dbo].[Media] ([idMedia], [link_Media], [id]) VALUES (19, N'/Content/images/acc3-4.jpg', 13)
INSERT [dbo].[Media] ([idMedia], [link_Media], [id]) VALUES (20, N'/Content/images/acc3-5.jpg', 13)
SET IDENTITY_INSERT [dbo].[Media] OFF
GO
INSERT [dbo].[TruyCap] ([iduser], [id], [trangthai]) VALUES (1, 1, 1)
INSERT [dbo].[TruyCap] ([iduser], [id], [trangthai]) VALUES (1, 3, 1)
INSERT [dbo].[TruyCap] ([iduser], [id], [trangthai]) VALUES (1, 9, 1)
INSERT [dbo].[TruyCap] ([iduser], [id], [trangthai]) VALUES (1, 10, 1)
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([iduser], [tendn], [matkhau], [email], [sdt], [tenhienthi], [anhdaidien], [trangthai]) VALUES (1, N'trongphuoc', N'123456789', N'trongphuoc.le.097@gmail.com', N'0123456789', N'Trọng Phước ', N'/Content/images/acc1.jpg', 1)
INSERT [dbo].[User] ([iduser], [tendn], [matkhau], [email], [sdt], [tenhienthi], [anhdaidien], [trangthai]) VALUES (2, N'thanhphuoc', N'123456789', N'tranphuoc17012001@gmail.com', N'1246333890', N'Thanh Phước', N'/Content/images/acc2-1.jpg', 1)
INSERT [dbo].[User] ([iduser], [tendn], [matkhau], [email], [sdt], [tenhienthi], [anhdaidien], [trangthai]) VALUES (3, N'hoangphuoc', N'123456789', N'keynguyen.121@gmail.com', N'2486936735', N'Hoàng Phước', N'/Content/images/acc2-2.jpg', 1)
INSERT [dbo].[User] ([iduser], [tendn], [matkhau], [email], [sdt], [tenhienthi], [anhdaidien], [trangthai]) VALUES (4, N'huuquang', N'123456789', N'tranhuuquang2k1@gmail.com', N'5713699167', N'Hữu Quang', N'/Content/images/acc2-3.jpg', 1)
INSERT [dbo].[User] ([iduser], [tendn], [matkhau], [email], [sdt], [tenhienthi], [anhdaidien], [trangthai]) VALUES (5, N'phuoc', N'123456789', N'abc@gmail.com', N'4268731366', N'phuoc1', N'/Content/images/acc2-4.jpg', 1)
INSERT [dbo].[User] ([iduser], [tendn], [matkhau], [email], [sdt], [tenhienthi], [anhdaidien], [trangthai]) VALUES (6, N'quang', N'123456789', N'abcde@gmail.com', N'7895263103', N'quang1', N'/Content/images/acc2-5.jpg', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([idGame])
REFERENCES [dbo].[LoaiGame] ([idGame])
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([idLoai])
REFERENCES [dbo].[LoaiAcc] ([idLoai])
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_HoaDon] FOREIGN KEY([maHD])
REFERENCES [dbo].[HoaDon] ([maHD])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_TruyCap] FOREIGN KEY([iduser], [id])
REFERENCES [dbo].[TruyCap] ([iduser], [id])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_TruyCap]
GO
ALTER TABLE [dbo].[Media]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[TruyCap]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[TruyCap]  WITH CHECK ADD FOREIGN KEY([iduser])
REFERENCES [dbo].[User] ([iduser])
GO
