CREATE DATABASE HocSinh
USE HocSinh
CREATE TABLE lophoc
(
    idlophoc INT PRIMARY KEY IDENTITY,
    tenlop VARCHAR(20),
    siso int,
    gvcn NVARCHAR(max)
)
CREATE TABLE hocsinh
(
    idhocsinh INT PRIMARY KEY IDENTITY,
    idlop int FOREIGN KEY(idlop) REFERENCES lophoc,
    hoten NVARCHAR(max),
    gioitinh BIT,
    ngaysinh DATETIME,
    diachi NVARCHAR(max),
    email VARCHAR(max)
)
INSERT lophoc VALUES
('A1',40,'co hoa'),
('A2',40,'co thanh'),
('A3',40,'co viet'),
('A4',40,'co anh')
INSERT hocsinh VALUES
(1,'Van Quang', 1, '2000-01-01', 'Bac Ninh', '@email'),
(2,'Van Toan', 1, '2000-01-01', 'Bac Ninh', '@email'),
(3,'Van Huy', 1, '2000-01-01', 'Bac Ninh', '@email'),
(1,'Van Quan', 1, '2000-01-01', 'Bac Ninh', '@email'),
(1,'Van Hiep', 1, '2000-01-01', 'Bac Ninh', '@email')
SELECT * FROM hocsinh
SELECT hocsinh.hoten, lophoc.tenlop, lophoc.gvcn FROM hocsinh join lophoc ON hocsinh.idlop = lophoc.idlophoc WHERE hocsinh.idhocsinh >= 1
