CREATE DATABASE NhanVien
USE NhanVien
CREATE TABLE NhanVien
(
    idNV INT PRIMARY KEY IDENTITY,
    hoten NVARCHAR(max),
    diachi NVARCHAR(max),
    sdt VARCHAR(10),
    email VARCHAR(max)
)
CREATE TABLE DuAn 
(
    idDA int PRIMARY KEY IDENTITY,
    tenDA NVARCHAR(max),
    mota text,
    ghichu NVARCHAR(max)
)
CREATE TABLE PhanCongLuuTru
(
    id int PRIMARY KEY IDENTITY,
    idNV int FOREIGN KEY(idNV) REFERENCES NhanVien,
    idDA int FOREIGN KEY(idDA) REFERENCES DuAn,
    sogio int 
)
SELECT * From NhanVien
SELECT * From DuAn
SELECT * From PhanCongLuuTru
INSERT NhanVien VALUES
('Van Quang', 'Bac Ninh', '0113144', '@email'),
('Van Huy', 'Bac Ninh', '0113144', '@email'),
('Van Quan', 'Bac Ninh', '0113144', '@email'),
('Van Hiep', 'Bac Ninh', '0113144', '@email')
INSERT DuAn VALUES
('Phan Mem', 'Phan mem Cham cong', 'Lam gap'),
('Phan Cung', 'Build PC', 'Lam gap'),
('Mang', 'Sua mang Wlan', 'Lam gap'),
('Website', 'Web ban hang', 'Lam gap')
INSERT PhanCongLuuTru VALUES
(1,1, 20),
(1,2, 20),
(2,3, 20),
(3,2, 20),
(4,4, 20)
SELECT * FROM NhanVien
SELECT * FROM DuAn
SELECT * FROM PhanCongLuuTru
