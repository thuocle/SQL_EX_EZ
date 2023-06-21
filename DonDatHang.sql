CREATE DATABASE DonDatHang
USE DonDatHang
CREATE TABLE khachhang
(
    KhachHangID int PRIMARY KEY IDENTITY, 
    HoTen NVARCHAR(max) , 
    DiaChi NVARCHAR(max), 
    SoDienThoai VARCHAR(10), 
    GhiChu NVARCHAR(max), 
    Email VARCHAR(max)
)
CREATE TABLE loaisanpham
(
    LoaiSanPhamID int PRIMARY KEY IDENTITY, 
    TenLoai NVARCHAR(max), 
    GhiChu NVARCHAR(max)
)
CREATE TABLE sanpham 
(
    SanPhamID int PRIMARY KEY IDENTITY, 
    LoaiSanPhamID int FOREIGN KEY(LoaiSanPhamID) REFERENCES loaisanpham, 
    KyHieuSanPham VARCHAR(20), 
    TenSanPham NVARCHAR(max), 
    MoTa NVARCHAR(max), 
    NhaSanXuat NVARCHAR(max), 
    NgayDang DATETIME, 
    GiaBan money, 
    LaSanPhamMoi bit
)
CREATE TABLE dondathang
(
    DonDatHangID int PRIMARY KEY IDENTITY, 
    KhachHangID int FOREIGN KEY(KhachHangID) REFERENCES khachhang, 
    SoHieuDon VARCHAR, 
    NgayDat date, 
    NgayGioTraThucTe DATETIME, 
    GhiChu NVARCHAR(max) null, 
    TinhTrang VARCHAR null
)
CREATE TABLE chitietdonhang
(
    ChiTietDonDatHangID int PRIMARY KEY IDENTITY,
    DonDatHangID int FOREIGN KEY(DonDatHangID) REFERENCES dondathang, 
    SanPhamID int FOREIGN KEY(SanPhamID) REFERENCES sanpham, 
    SoLuong int
)

INSERT khachhang VALUES
('Nguyen Van Quang', 'Bac Ninh', '0128347', 'okok', 'email@'),
('Tran Thi Anh', 'Ha Noi', '0123456', 'ghi chu 1', 'email1@'),
('Le Van Son', 'Hai Phong', '0987654', 'ghi chu 2', 'email2@'),
('Pham Thi Lan', 'Da Nang', '0123456', 'ghi chu 3', 'email3@'),
('Vu Van Tuan', 'Ho Chi Minh', '0987654', 'ghi chu 4', 'email4@')
INSERT loaisanpham VALUES
('quan ao', 'okok')
INSERT sanpham VALUES
(1,'sp01','Ao phong MLB', 'sdfa', 'MLB', '2023-06-06', 20000,1)
INSERT dondathang VALUES
(1,'dh01','2023-06-20', '2023-06-20-11-30-00','adf', 'con hang')
INSERT INTO chitietdonhang 
VALUES (1, 1, 2), (1, 2, 1), (2, 3, 4);
