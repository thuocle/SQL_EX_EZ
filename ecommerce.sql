USE [Shop]
GO
/****** Object:  Table [dbo].[ChuShop]    Script Date: 6/28/2023 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuShop](
	[chuShopID] [int] IDENTITY(1,1) NOT NULL,
	[tenChuShop] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[chuShopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COLOR]    Script Date: 6/28/2023 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COLOR](
	[keyColor] [int] IDENTITY(1,1) NOT NULL,
	[valueColor] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[keyColor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GENDER]    Script Date: 6/28/2023 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GENDER](
	[keyGender] [int] IDENTITY(1,1) NOT NULL,
	[valueGender] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[keyGender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 6/28/2023 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[loaiID] [int] IDENTITY(1,1) NOT NULL,
	[tenLoai] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[loaiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanAo]    Script Date: 6/28/2023 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanAo](
	[quanAoID] [int] IDENTITY(1,1) NOT NULL,
	[tenQuanAo] [nvarchar](50) NULL,
	[loaiID] [int] NULL,
	[soLuongTon] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[quanAoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLyQA]    Script Date: 6/28/2023 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLyQA](
	[qlyID] [int] IDENTITY(1,1) NOT NULL,
	[quanAoID] [int] NULL,
	[sizeID] [int] NULL,
	[colorID] [int] NULL,
	[genderID] [int] NULL,
	[soLuongSC] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[qlyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 6/28/2023 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[shopID] [int] IDENTITY(1,1) NOT NULL,
	[tenShop] [nvarchar](50) NULL,
	[chushopID] [int] NULL,
	[sanPhamID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[shopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIZE]    Script Date: 6/28/2023 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIZE](
	[keySize] [int] IDENTITY(1,1) NOT NULL,
	[valueSize] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[keySize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChuShop] ON 

INSERT [dbo].[ChuShop] ([chuShopID], [tenChuShop]) VALUES (1, N'Nguyen Van A')
SET IDENTITY_INSERT [dbo].[ChuShop] OFF
GO
SET IDENTITY_INSERT [dbo].[COLOR] ON 

INSERT [dbo].[COLOR] ([keyColor], [valueColor]) VALUES (1, N'RED')
INSERT [dbo].[COLOR] ([keyColor], [valueColor]) VALUES (2, N'GREEN')
INSERT [dbo].[COLOR] ([keyColor], [valueColor]) VALUES (3, N'WHITE')
INSERT [dbo].[COLOR] ([keyColor], [valueColor]) VALUES (4, N'BLUE')
SET IDENTITY_INSERT [dbo].[COLOR] OFF
GO
SET IDENTITY_INSERT [dbo].[GENDER] ON 

INSERT [dbo].[GENDER] ([keyGender], [valueGender]) VALUES (1, N'MAN')
INSERT [dbo].[GENDER] ([keyGender], [valueGender]) VALUES (2, N'WOMEN')
INSERT [dbo].[GENDER] ([keyGender], [valueGender]) VALUES (3, N'UNISEX')
SET IDENTITY_INSERT [dbo].[GENDER] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([loaiID], [tenLoai]) VALUES (1, N'Quan Ao')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[QuanAo] ON 

INSERT [dbo].[QuanAo] ([quanAoID], [tenQuanAo], [loaiID], [soLuongTon]) VALUES (1, N'Quan LV', 1, 100)
SET IDENTITY_INSERT [dbo].[QuanAo] OFF
GO
SET IDENTITY_INSERT [dbo].[QuanLyQA] ON 

INSERT [dbo].[QuanLyQA] ([qlyID], [quanAoID], [sizeID], [colorID], [genderID], [soLuongSC]) VALUES (1, 1, 1, 1, 1, 50)
INSERT [dbo].[QuanLyQA] ([qlyID], [quanAoID], [sizeID], [colorID], [genderID], [soLuongSC]) VALUES (2, 1, 2, 1, 1, 20)
INSERT [dbo].[QuanLyQA] ([qlyID], [quanAoID], [sizeID], [colorID], [genderID], [soLuongSC]) VALUES (3, 1, 3, 2, 1, 10)
INSERT [dbo].[QuanLyQA] ([qlyID], [quanAoID], [sizeID], [colorID], [genderID], [soLuongSC]) VALUES (4, 1, 4, 3, 2, 10)
INSERT [dbo].[QuanLyQA] ([qlyID], [quanAoID], [sizeID], [colorID], [genderID], [soLuongSC]) VALUES (5, 1, 5, 4, 2, 10)
SET IDENTITY_INSERT [dbo].[QuanLyQA] OFF
GO
SET IDENTITY_INSERT [dbo].[Shop] ON 

INSERT [dbo].[Shop] ([shopID], [tenShop], [chushopID], [sanPhamID]) VALUES (1, N'Alibaba', 1, 1)
SET IDENTITY_INSERT [dbo].[Shop] OFF
GO
SET IDENTITY_INSERT [dbo].[SIZE] ON 

INSERT [dbo].[SIZE] ([keySize], [valueSize]) VALUES (1, N'S')
INSERT [dbo].[SIZE] ([keySize], [valueSize]) VALUES (2, N'M')
INSERT [dbo].[SIZE] ([keySize], [valueSize]) VALUES (3, N'L')
INSERT [dbo].[SIZE] ([keySize], [valueSize]) VALUES (4, N'XL')
INSERT [dbo].[SIZE] ([keySize], [valueSize]) VALUES (5, N'XXL')
SET IDENTITY_INSERT [dbo].[SIZE] OFF
GO
ALTER TABLE [dbo].[QuanAo]  WITH CHECK ADD  CONSTRAINT [FK_QuanAo_LoaiSanPham] FOREIGN KEY([loaiID])
REFERENCES [dbo].[LoaiSanPham] ([loaiID])
GO
ALTER TABLE [dbo].[QuanAo] CHECK CONSTRAINT [FK_QuanAo_LoaiSanPham]
GO
ALTER TABLE [dbo].[QuanLyQA]  WITH CHECK ADD  CONSTRAINT [FK_QuanLyQA_COLOR] FOREIGN KEY([colorID])
REFERENCES [dbo].[COLOR] ([keyColor])
GO
ALTER TABLE [dbo].[QuanLyQA] CHECK CONSTRAINT [FK_QuanLyQA_COLOR]
GO
ALTER TABLE [dbo].[QuanLyQA]  WITH CHECK ADD  CONSTRAINT [FK_QuanLyQA_GENDER] FOREIGN KEY([genderID])
REFERENCES [dbo].[GENDER] ([keyGender])
GO
ALTER TABLE [dbo].[QuanLyQA] CHECK CONSTRAINT [FK_QuanLyQA_GENDER]
GO
ALTER TABLE [dbo].[QuanLyQA]  WITH CHECK ADD  CONSTRAINT [FK_QuanLyQA_QuanAo] FOREIGN KEY([quanAoID])
REFERENCES [dbo].[QuanAo] ([quanAoID])
GO
ALTER TABLE [dbo].[QuanLyQA] CHECK CONSTRAINT [FK_QuanLyQA_QuanAo]
GO
ALTER TABLE [dbo].[QuanLyQA]  WITH CHECK ADD  CONSTRAINT [FK_QuanLyQA_SIZE] FOREIGN KEY([sizeID])
REFERENCES [dbo].[SIZE] ([keySize])
GO
ALTER TABLE [dbo].[QuanLyQA] CHECK CONSTRAINT [FK_QuanLyQA_SIZE]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_ChuShop] FOREIGN KEY([chushopID])
REFERENCES [dbo].[ChuShop] ([chuShopID])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_ChuShop]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_QuanAo] FOREIGN KEY([sanPhamID])
REFERENCES [dbo].[QuanAo] ([quanAoID])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_QuanAo]
GO
