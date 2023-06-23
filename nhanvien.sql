
USE [master]
GO
ALTER DATABASE [NhanVien] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NhanVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NhanVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NhanVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NhanVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NhanVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NhanVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [NhanVien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NhanVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NhanVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NhanVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NhanVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NhanVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NhanVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NhanVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NhanVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NhanVien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NhanVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NhanVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NhanVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NhanVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NhanVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NhanVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NhanVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NhanVien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NhanVien] SET  MULTI_USER 
GO
ALTER DATABASE [NhanVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NhanVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NhanVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NhanVien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [NhanVien] SET DELAYED_DURABILITY = DISABLED 
GO
USE [NhanVien]
GO
/****** Object:  Table [dbo].[DuAn]    Script Date: 8/12/2020 8:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuAn](
	[DuanID] [int] IDENTITY(1,1) NOT NULL,
	[Tenduan] [nvarchar](50) NULL,
	[Mota] [nvarchar](50) NULL,
	[Ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_DuAn] PRIMARY KEY CLUSTERED 
(
	[DuanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 8/12/2020 8:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[NhanvienID] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[SDT] [nvarchar](15) NULL,
	[Diachi] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[NhanvienID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanCong]    Script Date: 8/12/2020 8:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCong](
	[PhancongID] [int] IDENTITY(1,1) NOT NULL,
	[DuanID] [int] NOT NULL,
	[NhanvienID] [int] NOT NULL,
	[Sogiolam] [int] NOT NULL,
 CONSTRAINT [PK_PhanCong] PRIMARY KEY CLUSTERED 
(
	[PhancongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[DuAn] ON 

INSERT [dbo].[DuAn] ([DuanID], [Tenduan], [Mota], [Ghichu]) VALUES (1, N'Dự Án 1', N'Thấp', N'Low')
INSERT [dbo].[DuAn] ([DuanID], [Tenduan], [Mota], [Ghichu]) VALUES (2, N'Dự Án 2', N'Thấp', N'Low')
INSERT [dbo].[DuAn] ([DuanID], [Tenduan], [Mota], [Ghichu]) VALUES (3, N'Dự Án 3', N'Thấp', N'Medium')
INSERT [dbo].[DuAn] ([DuanID], [Tenduan], [Mota], [Ghichu]) VALUES (4, N'Dự Án 4', N'Thấp', N'Medium')
INSERT [dbo].[DuAn] ([DuanID], [Tenduan], [Mota], [Ghichu]) VALUES (5, N'Dự Án 5', N'Trung bình', N'Low')
INSERT [dbo].[DuAn] ([DuanID], [Tenduan], [Mota], [Ghichu]) VALUES (6, N'Dự Án 6', N'Trung bình', N'Low')
INSERT [dbo].[DuAn] ([DuanID], [Tenduan], [Mota], [Ghichu]) VALUES (7, N'Dự Án 7', N'Trung bình', N'Medium')
INSERT [dbo].[DuAn] ([DuanID], [Tenduan], [Mota], [Ghichu]) VALUES (8, N'Dự Án 8', N'Trung bình', N'Hight')
INSERT [dbo].[DuAn] ([DuanID], [Tenduan], [Mota], [Ghichu]) VALUES (9, N'Dự Án 9', N'Trung bình', N'Hight')
INSERT [dbo].[DuAn] ([DuanID], [Tenduan], [Mota], [Ghichu]) VALUES (10, N'Dự Án 10', N'Cao', N'Medium')
SET IDENTITY_INSERT [dbo].[DuAn] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([NhanvienID], [Hoten], [SDT], [Diachi], [Email]) VALUES (1, N'Nhân viên 1', N'0986758475', N'Hà Nội', N'nv1@gmail.com')
INSERT [dbo].[NhanVien] ([NhanvienID], [Hoten], [SDT], [Diachi], [Email]) VALUES (2, N'Nhân viên 2', N'0975637473', N'Thái Bình', N'nv2@gmail.com')
INSERT [dbo].[NhanVien] ([NhanvienID], [Hoten], [SDT], [Diachi], [Email]) VALUES (3, N'Nhân viên 3', N'0987657483', N'Hải Phòng', N'nv3@gmail.com')
INSERT [dbo].[NhanVien] ([NhanvienID], [Hoten], [SDT], [Diachi], [Email]) VALUES (4, N'Nhân viên 4', N'0987657434', N'Hà Nội', N'nv4@gmail.com')
INSERT [dbo].[NhanVien] ([NhanvienID], [Hoten], [SDT], [Diachi], [Email]) VALUES (5, N'Nhân viên 5', N'0897768585', N'Hải Phòng', N'nv5@gmail.com')
INSERT [dbo].[NhanVien] ([NhanvienID], [Hoten], [SDT], [Diachi], [Email]) VALUES (6, N'Nhân viên 6', N'0935473354', N'Quảng Ninh', N'nv6@gmail.com')
INSERT [dbo].[NhanVien] ([NhanvienID], [Hoten], [SDT], [Diachi], [Email]) VALUES (7, N'Nhân viên 7', N'0452463423', N'Nghệ An', N'nv7@gmail.com')
INSERT [dbo].[NhanVien] ([NhanvienID], [Hoten], [SDT], [Diachi], [Email]) VALUES (8, N'Nhân viên 8', N'0547554233', N'Thanh Hóa', N'nv8@gmail.com')
INSERT [dbo].[NhanVien] ([NhanvienID], [Hoten], [SDT], [Diachi], [Email]) VALUES (9, N'Nhân viên 9', N'0436352245', N'Lào Cai', N'nv9@gmail.com')
INSERT [dbo].[NhanVien] ([NhanvienID], [Hoten], [SDT], [Diachi], [Email]) VALUES (10, N'Nhân viên 10', N'0945772234', N'Hà Nội', N'nv10@gmail.com')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[PhanCong] ON 

INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (1, 1, 1, 10)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (2, 2, 1, 15)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (3, 3, 1, 30)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (4, 4, 1, 12)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (5, 5, 1, 8)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (6, 6, 1, 15)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (7, 7, 1, 100)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (8, 8, 1, 80)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (9, 9, 1, 50)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (10, 10, 1, 50)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (11, 1, 2, 50)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (12, 2, 2, 100)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (13, 3, 2, 30)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (14, 4, 2, 20)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (15, 5, 2, 70)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (16, 6, 2, 40)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (17, 7, 2, 10)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (18, 8, 2, 10)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (19, 1, 3, 13)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (20, 2, 3, 25)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (21, 3, 3, 23)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (22, 4, 3, 24)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (23, 5, 3, 56)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (24, 6, 3, 2)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (25, 7, 3, 23)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (26, 1, 4, 54)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (27, 2, 4, 23)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (28, 3, 4, 23)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (29, 4, 4, 22)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (30, 5, 4, 65)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (31, 6, 4, 34)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (32, 1, 5, 23)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (33, 2, 5, 34)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (34, 3, 5, 23)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (35, 4, 5, 35)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (36, 5, 5, 36)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (37, 6, 5, 35)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (38, 1, 6, 34)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (39, 2, 6, 23)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (40, 3, 6, 54)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (41, 4, 6, 23)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (42, 5, 6, 65)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (43, 1, 7, 54)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (44, 2, 7, 34)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (45, 3, 7, 56)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (46, 4, 7, 35)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (47, 1, 8, 78)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (48, 2, 8, 88)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (49, 3, 8, 50)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (50, 1, 9, 155)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (51, 2, 9, 78)
INSERT [dbo].[PhanCong] ([PhancongID], [DuanID], [NhanvienID], [Sogiolam]) VALUES (52, 1, 10, 155)
SET IDENTITY_INSERT [dbo].[PhanCong] OFF
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_DuAn] FOREIGN KEY([DuanID])
REFERENCES [dbo].[DuAn] ([DuanID])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_DuAn]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_NhanVien] FOREIGN KEY([NhanvienID])
REFERENCES [dbo].[NhanVien] ([NhanvienID])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [NhanVien] SET  READ_WRITE 
GO
