
USE [master]
GO
/****** Object:  Database [SinhVien]    Script Date: 8/12/2020 8:23:41 PM ******/
CREATE DATABASE [SinhVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SinhVien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.NAM\MSSQL\DATA\SinhVien.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SinhVien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.NAM\MSSQL\DATA\SinhVien_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SinhVien] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SinhVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SinhVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SinhVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SinhVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SinhVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SinhVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [SinhVien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SinhVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SinhVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SinhVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SinhVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SinhVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SinhVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SinhVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SinhVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SinhVien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SinhVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SinhVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SinhVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SinhVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SinhVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SinhVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SinhVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SinhVien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SinhVien] SET  MULTI_USER 
GO
ALTER DATABASE [SinhVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SinhVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SinhVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SinhVien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SinhVien] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SinhVien]
GO
/****** Object:  Table [dbo].[KetQua]    Script Date: 8/12/2020 8:23:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetQua](
	[KetquaID] [int] IDENTITY(1,1) NOT NULL,
	[SinhvienID] [int] NULL,
	[MonhocID] [int] NULL,
	[Lanthi] [int] NULL,
	[Diemthi] [float] NULL,
 CONSTRAINT [PK_KetQua] PRIMARY KEY CLUSTERED 
(
	[KetquaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 8/12/2020 8:23:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[KhoaID] [int] IDENTITY(1,1) NOT NULL,
	[Makhoa] [nvarchar](5) NULL,
	[Tenkhoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[KhoaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 8/12/2020 8:23:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MonhocID] [int] IDENTITY(1,1) NOT NULL,
	[Tenmonhoc] [nvarchar](50) NULL,
	[Sotiet] [int] NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MonhocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 8/12/2020 8:23:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[SinhvienID] [int] IDENTITY(1,1) NOT NULL,
	[KhoaID] [int] NULL,
	[Hoten] [nvarchar](50) NULL,
	[Gioitinh] [nvarchar](5) NULL,
	[Ngaysinh] [date] NULL,
	[Noisinh] [nvarchar](50) NULL,
	[Hocbong] [int] NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[SinhvienID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[KetQua] ON 

INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (1, 1, 1, 1, 5.6)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (2, 2, 1, 1, 9.2)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (3, 3, 1, 1, 9.8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (4, 4, 1, 1, 4.5)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (5, 4, 1, 2, 6.7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (6, 6, 1, 1, 4.5)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (7, 7, 1, 1, 4.5)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (8, 8, 1, 1, 7.8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (9, 14, 1, 1, 3.5)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (10, 14, 1, 2, 5.6)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (11, 5, 2, 1, 3.4)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (12, 6, 2, 1, 4.5)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (13, 7, 2, 1, 8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (14, 8, 2, 1, 9)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (15, 9, 2, 1, 6.7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (16, 10, 2, 1, 4.5)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (17, 10, 2, 2, 7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (18, 11, 2, 1, 5)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (19, 3, 3, 1, 6)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (20, 4, 3, 1, 7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (21, 5, 3, 1, 8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (22, 6, 3, 1, 4.7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (23, 7, 3, 1, 8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (24, 8, 3, 1, 4)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (25, 8, 3, 2, 6)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (26, 11, 4, 1, 8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (27, 12, 4, 1, 9)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (28, 13, 4, 1, 8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (29, 14, 4, 1, 9)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (30, 15, 4, 1, 8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (31, 3, 4, 1, 7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (32, 4, 4, 1, 6)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (33, 5, 4, 1, 8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (34, 6, 5, 1, 5.6)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (35, 7, 5, 1, 7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (36, 8, 5, 1, 8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (37, 9, 5, 1, 6)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (38, 2, 5, 1, 9.3)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (39, 1, 5, 1, 7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (40, 12, 5, 1, 6)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (41, 11, 5, 1, 5.8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (42, 1, 6, 1, 4)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (43, 1, 6, 2, 9.6)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (44, 2, 6, 1, 9.4)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (45, 3, 6, 1, 6)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (46, 4, 6, 1, 8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (47, 5, 6, 1, 4)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (48, 5, 6, 2, 7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (49, 9, 6, 1, 8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (50, 2, 7, 1, 9)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (51, 3, 7, 1, 9)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (52, 4, 7, 1, 6)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (53, 5, 7, 1, 7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (54, 6, 7, 1, 8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (55, 7, 7, 1, 6)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (56, 8, 7, 1, 5)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (57, 9, 7, 1, 6)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (58, 1, 7, 1, 5.9)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (59, 10, 7, 1, 6)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (60, 11, 7, 1, 8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (61, 12, 8, 1, 4)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (62, 12, 8, 2, 8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (63, 13, 8, 1, 7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (64, 14, 8, 1, 6)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (65, 15, 8, 1, 9)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (66, 9, 9, 1, 7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (67, 8, 9, 1, 7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (68, 7, 9, 1, 4)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (69, 7, 9, 2, 9.8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (70, 6, 9, 1, 9.5)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (71, 5, 9, 1, 8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (72, 4, 9, 1, 7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (73, 3, 10, 1, 9)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (74, 2, 10, 1, 4.5)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (75, 1, 10, 1, 6)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (76, 8, 10, 1, 7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (77, 9, 10, 1, 8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (78, 14, 10, 1, 3)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (79, 14, 10, 2, 8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (80, 5, 10, 1, 6.8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (81, 4, 10, 1, 7.8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (82, 6, 10, 1, 6.7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (83, 7, 10, 1, 8.8)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (84, 10, 10, 1, 7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (85, 11, 10, 1, 7.7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (86, 12, 10, 1, 6.7)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (87, 13, 10, 1, 9)
INSERT [dbo].[KetQua] ([KetquaID], [SinhvienID], [MonhocID], [Lanthi], [Diemthi]) VALUES (88, 15, 10, 1, 7.8)
SET IDENTITY_INSERT [dbo].[KetQua] OFF
SET IDENTITY_INSERT [dbo].[Khoa] ON 

INSERT [dbo].[Khoa] ([KhoaID], [Makhoa], [Tenkhoa]) VALUES (1, N'VLKT', N'Vật lý kỹ thuật')
INSERT [dbo].[Khoa] ([KhoaID], [Makhoa], [Tenkhoa]) VALUES (2, N'CNTT', N'Công nghệ thông tin')
INSERT [dbo].[Khoa] ([KhoaID], [Makhoa], [Tenkhoa]) VALUES (3, N'HTTH', N'Hệ thống thông tin')
INSERT [dbo].[Khoa] ([KhoaID], [Makhoa], [Tenkhoa]) VALUES (4, N'AV', N'Anh Văn')
INSERT [dbo].[Khoa] ([KhoaID], [Makhoa], [Tenkhoa]) VALUES (5, N'NN', N'Ngôn ngữ Anh')
INSERT [dbo].[Khoa] ([KhoaID], [Makhoa], [Tenkhoa]) VALUES (6, N'TDH', N'Tự động hóa')
SET IDENTITY_INSERT [dbo].[Khoa] OFF
SET IDENTITY_INSERT [dbo].[MonHoc] ON 

INSERT [dbo].[MonHoc] ([MonhocID], [Tenmonhoc], [Sotiet]) VALUES (1, N'Tiếng Anh B1', 60)
INSERT [dbo].[MonHoc] ([MonhocID], [Tenmonhoc], [Sotiet]) VALUES (2, N'Cơ sở dữ liệu', 30)
INSERT [dbo].[MonHoc] ([MonhocID], [Tenmonhoc], [Sotiet]) VALUES (3, N'Tín hiệu số', 45)
INSERT [dbo].[MonHoc] ([MonhocID], [Tenmonhoc], [Sotiet]) VALUES (4, N'Tin học cơ sở', 30)
INSERT [dbo].[MonHoc] ([MonhocID], [Tenmonhoc], [Sotiet]) VALUES (5, N'Vật lý đại cương', 30)
INSERT [dbo].[MonHoc] ([MonhocID], [Tenmonhoc], [Sotiet]) VALUES (6, N'Thực tập chuyên ngành', 75)
INSERT [dbo].[MonHoc] ([MonhocID], [Tenmonhoc], [Sotiet]) VALUES (7, N'Lập trình web', 60)
INSERT [dbo].[MonHoc] ([MonhocID], [Tenmonhoc], [Sotiet]) VALUES (8, N'Tiếng Anh C1', 60)
INSERT [dbo].[MonHoc] ([MonhocID], [Tenmonhoc], [Sotiet]) VALUES (9, N'Toán cao cấp', 30)
INSERT [dbo].[MonHoc] ([MonhocID], [Tenmonhoc], [Sotiet]) VALUES (10, N'Thiết kế máy', 45)
SET IDENTITY_INSERT [dbo].[MonHoc] OFF
SET IDENTITY_INSERT [dbo].[SinhVien] ON 

INSERT [dbo].[SinhVien] ([SinhvienID], [KhoaID], [Hoten], [Gioitinh], [Ngaysinh], [Noisinh], [Hocbong]) VALUES (1, 1, N'Trần Ngọc Lâm', N'nam', CAST(N'1997-02-05' AS Date), N'Hà Nội', 100000)
INSERT [dbo].[SinhVien] ([SinhvienID], [KhoaID], [Hoten], [Gioitinh], [Ngaysinh], [Noisinh], [Hocbong]) VALUES (2, 1, N'Nguyễn Văn Ngọc', N'nam', CAST(N'1997-04-03' AS Date), N'Hưng Yên', 150000)
INSERT [dbo].[SinhVien] ([SinhvienID], [KhoaID], [Hoten], [Gioitinh], [Ngaysinh], [Noisinh], [Hocbong]) VALUES (3, 1, N'Hoàng Thùy Lan', N'nữ', CAST(N'1998-04-05' AS Date), N'Lào Cai', 80000)
INSERT [dbo].[SinhVien] ([SinhvienID], [KhoaID], [Hoten], [Gioitinh], [Ngaysinh], [Noisinh], [Hocbong]) VALUES (4, 2, N'Trương Công Minh', N'nam', CAST(N'1996-04-06' AS Date), N'Hải Phòng', 250000)
INSERT [dbo].[SinhVien] ([SinhvienID], [KhoaID], [Hoten], [Gioitinh], [Ngaysinh], [Noisinh], [Hocbong]) VALUES (5, 3, N'Trịnh Thùy Linh', N'nữ', CAST(N'1999-03-02' AS Date), N'Hà Nội', 90000)
INSERT [dbo].[SinhVien] ([SinhvienID], [KhoaID], [Hoten], [Gioitinh], [Ngaysinh], [Noisinh], [Hocbong]) VALUES (6, 3, N'Mai Anh Tuấn', N'nam', CAST(N'1998-04-04' AS Date), N'Hà Nội', 0)
INSERT [dbo].[SinhVien] ([SinhvienID], [KhoaID], [Hoten], [Gioitinh], [Ngaysinh], [Noisinh], [Hocbong]) VALUES (7, 4, N'Tạ Ngọc Hải', N'nam', CAST(N'1998-04-02' AS Date), N'Quảng Ninh', 0)
INSERT [dbo].[SinhVien] ([SinhvienID], [KhoaID], [Hoten], [Gioitinh], [Ngaysinh], [Noisinh], [Hocbong]) VALUES (8, 4, N'Trần Văn Ban', N'nam', CAST(N'1997-01-06' AS Date), N'Thanh Hóa', 150000)
INSERT [dbo].[SinhVien] ([SinhvienID], [KhoaID], [Hoten], [Gioitinh], [Ngaysinh], [Noisinh], [Hocbong]) VALUES (9, 5, N'Lâm Tâm Như', N'nữ', CAST(N'1999-04-03' AS Date), N'Thái Bình', 0)
INSERT [dbo].[SinhVien] ([SinhvienID], [KhoaID], [Hoten], [Gioitinh], [Ngaysinh], [Noisinh], [Hocbong]) VALUES (10, 5, N'Hà Văn Chiến', N'nam', CAST(N'2000-03-03' AS Date), N'Đồng Nai', 250000)
INSERT [dbo].[SinhVien] ([SinhvienID], [KhoaID], [Hoten], [Gioitinh], [Ngaysinh], [Noisinh], [Hocbong]) VALUES (11, 6, N'Nguyễn Công Hoan', N'nam', CAST(N'2001-04-02' AS Date), N'Thái Bình', 350000)
INSERT [dbo].[SinhVien] ([SinhvienID], [KhoaID], [Hoten], [Gioitinh], [Ngaysinh], [Noisinh], [Hocbong]) VALUES (12, 6, N'Trần Quang Minh', N'nam', CAST(N'2001-05-03' AS Date), N'Hà Nội', 0)
INSERT [dbo].[SinhVien] ([SinhvienID], [KhoaID], [Hoten], [Gioitinh], [Ngaysinh], [Noisinh], [Hocbong]) VALUES (13, 6, N'Phan Ngọc Toản', N'nam', CAST(N'2000-04-02' AS Date), N'Hưng Yên', 0)
INSERT [dbo].[SinhVien] ([SinhvienID], [KhoaID], [Hoten], [Gioitinh], [Ngaysinh], [Noisinh], [Hocbong]) VALUES (14, 6, N'Mai Thị Thu Hà', N'nữ', CAST(N'1999-04-02' AS Date), N'Thái Bình', 450000)
INSERT [dbo].[SinhVien] ([SinhvienID], [KhoaID], [Hoten], [Gioitinh], [Ngaysinh], [Noisinh], [Hocbong]) VALUES (15, 6, N'Trương Ngọc Ánh', N'nữ', CAST(N'1997-03-06' AS Date), N'Hải Phòng', 0)
SET IDENTITY_INSERT [dbo].[SinhVien] OFF
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [FK_KetQua_MonHoc] FOREIGN KEY([MonhocID])
REFERENCES [dbo].[MonHoc] ([MonhocID])
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [FK_KetQua_MonHoc]
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [FK_KetQua_SinhVien] FOREIGN KEY([SinhvienID])
REFERENCES [dbo].[SinhVien] ([SinhvienID])
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [FK_KetQua_SinhVien]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_Khoa] FOREIGN KEY([KhoaID])
REFERENCES [dbo].[Khoa] ([KhoaID])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_Khoa]
GO
USE [master]
GO
ALTER DATABASE [SinhVien] SET  READ_WRITE 
GO
db_SinhVien.sql
1
Đang hiển thị db_SinhVien.sql.
