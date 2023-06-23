/*Danh sách các học sinh có họ tên bắt đầu bằng chữ T*/
SELECT *
from HocSinh 
WHERE HocSinh.Hoten 
LIKE 'T%'
/*Liệt kê danh sách những học sinh có chữ cái cuối cùng trong tên là I*/
SELECT *
FROM HocSinh
WHERE HocSinh.Hoten 
LIKE '%I'
/*Danh sách những học sinh có ký tự thứ hai của họ tên là chữ N*/  
SELECT * 
FROM HocSinh
WHERE HocSinh.Hoten 
LIKE '_N%'
/* Liệt kê những học sinh mà họ tên có chứa chữ Thị*/
SELECT * 
FROM HocSinh
WHERE Hoten 
LIKE N'%Thị%'
/*Cho biết danh sách những học sinh có ký tự đầu tiên của họ tên nằm trong khoảng từ a đến m*/
SELECT *
FROM HocSinh 
WHERE HocSinh.Hoten LIKE'[a-m]%'
/*Liệt kê các học sinh có địa chỉ ở Hà Nội */
SELECT *
FROM HocSinh
WHERE HocSinh.Diachi = N'Hà Nội'
/*
/* Danh sách các học sinh nữ có địa chỉ ở Hà Nội*/
SELECT * 
FROM HocSinh
WHERE HocSinh.Diachi LIKE N'Hà Nội' AND HocSinh.Gioitinh LIKE N'nữ'
/* Cho biết những học sinh có ngày sinh từ ngày 01/01/2005 đến ngày 05/06/2005*/
SELECT *
FROM HocSinh
WHERE HocSinh.Ngaysinh BETWEEN '01/01/2005' AND '05/06/2005'
-- Danh sách những học sinh thuộc 1 trong các tỉnh Hà Nội, Thái Bình, Cao Bằng
SELECT HocSinh.Hoten, Diachi
FROM HocSinh
WHERE Diachi = N'Hà Nội' OR Diachi = N'Thái Bình' OR  Diachi = N'Cao Bằng'
 --Cho biết những lớp có trên 30 học sinh và có giáo viên chủ nhiệm tên Quỳnh
 SELECT * 
 FROM Lop
 SELECT *
 FROM Lop
 WHERE Siso > 30 AND GVCN LIKE N'%Quỳnh'
--Danh sách học sinh nam ở Hà Giang thuộc lớp số 5
SELECT *
FROM HocSinh
WHERE Gioitinh = N'nam' AND LopID = 5 AND Diachi = N'Hà Giang'
--Danh sách học sinh chưa có địa chỉ email
SELECT *
FROM HocSinh
WHERE Email IS NULL
--Danh sách những học sinh không sinh năm 2005
SELECT *
FROM HocSinh
WHERE YEAR(Ngaysinh) <> 2005
--Liệt kê danh sách học sinh, họ tên sắp xếp theo thứ tự trong bảng chữ cái
SELECT RIGHT(HocSinh.Hoten, CHARINDEX(' ', REVERSE(HocSinh.Hoten)))  AS ten FROM HocSinh 
SELECT * FROM HocSinh ORDER BY RIGHT(HocSinh.Hoten, CHARINDEX(' ', REVERSE(HocSinh.Hoten))-1) ASC
--Liệt kê danh sách học sinh, sắp xếp theo thứ tự giảm dần của ID học sinh
SELECT *
FROM HocSinh
ORDER BY HocSinh.HocsinhID DESC
--Liệt kê danh sách học sinh, sắp xếp theo thứ tự ngày sinh tăng dần và lớp giảm dần.
SELECT *
FROM HocSinh
ORDER BY Ngaysinh ASC, LopID DESC
--Liệt kê danh sách lớp tăng dần theo sĩ số
SELECT *
FROM Lop
ORDER BY Siso ASC
--Liệt kê danh sách học sinh nữ ở Hà Nội, sắp xếp tăng dần theo ngày sinh
SELECT *
FROM HocSinh
WHERE Gioitinh = N'nữ' AND Diachi = N'Hà Nội'
ORDER by Ngaysinh ASC
--Liệt kê những học sinh mà địa chỉ không thuộc 1 trong các tỉnh Hà Nội, Lào Cai, Thanh Hóa, sắp xếp lớp tăng dần
SELECT *
FROM HocSinh 
WHERE Diachi <> N'Hà Nội' AND Diachi <> N'Lào Cai' AND Diachi <> N'Thanh Hóa'
--Liệt kê tất cả địa chỉ quê quán của học sinh (không được liệt kê trùng lặp) */
SELECT DISTINCT HocSinh.Diachi 
FROM HocSinh 



 




