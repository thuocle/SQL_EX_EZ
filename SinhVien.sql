CREATE DATABASE SinhVien
USE SinhVien
DROP TABLE Khoa
DROP TABLE sinhvien
DROP TABLE monhoc
DROP TABLE KetQua

CREATE TABLE Khoa
(
    KhoaID INT PRIMARY KEY IDENTITY,
    MaKhoa VARCHAR(20),
    TenKhoa NVARCHAR(max)
)
CREATE TABLE monhoc
(
    MonhocID int PRIMARY KEY IDENTITY,
    Tenmonhoc NVARCHAR(max),
    Sotiet int
)
CREATE TABLE sinhvien
(
    SinhvienID int PRIMARY KEY IDENTITY,
    KhoaID int FOREIGN KEY(KhoaID) REFERENCES Khoa,
    Hoten NVARCHAR(max),
    Gioitinh bit,
    Ngaysinh DATETIME,
    Noisinh NVARCHAR(max),
    Hocbong bit
)
CREATE TABLE KetQua
(
    KetquaID int PRIMARY KEY IDENTITY,
    SinhvienID int FOREIGN KEY(SinhvienID) REFERENCES sinhvien,
    MonhocID int FOREIGN KEY(MonhocID) REFERENCES monhoc,
    Lanthi int,
    Diemthi FLOAT
)
INSERT Khoa VALUES 
('CNTT', 'Cong nghe thong tin'),
('Dien', 'Dien'),
('Ketoan', 'Ke toan'),
('Oto', 'Oto')
INSERT monhoc VALUES
('Anh', 20),
('Toan', 20),
('Van', 20),
('Hoa', 20)
INSERT sinhvien VALUES
(2,'Nguyen Van B', 1, '2000-01-01', 'Ha Noi', 1),
(1,'Nguyen Van A', 1, '2000-01-01', 'Ha Noi', 0),
(1,'Nguyen Van C', 1, '2000-01-01', 'Ha Noi', 0),
(3,'Nguyen Van D', 1, '2000-01-01', 'Ha Noi', 1)
INSERT KetQua VALUES
(1, 1, 1, 8),
(1, 2, 1, 7),
(1, 3, 1, 8),
(1, 4, 1, 7),
(2, 1, 1, 8),
(2, 2, 1, 7),
(3, 3, 1, 8),
(4, 4, 1, 7)
SELECT sinhvien.Hoten,Khoa.TenKhoa ,monhoc.Tenmonhoc, KetQua.Diemthi 
FROM sinhvien JOIN KetQua ON sinhvien.SinhvienID = KetQua.SinhvienID 
JOIN monhoc ON KetQua.MonhocID = monhoc.MonhocID 
JOIN Khoa ON sinhvien.KhoaID = Khoa.KhoaID 
WHERE sinhvien.SinhvienID >0 
