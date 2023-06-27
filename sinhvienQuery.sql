-- Danh sách những sinh viên có tuổi từ 21 đến 23
SELECT *
from dbo.Khoa
SELECT *
from dbo.SinhVien
SELECT *
from dbo.MonHoc
SELECT *
from dbo.KetQua

SELECT * 
from SinhVien
WHERE YEAR(GETDATE()) - YEAR(SinhVien.Ngaysinh) BETWEEN 21 and 23
-- Danh sách sinh viên sinh vào mùa xuân
/*Cho biết thông tin về mức học bổng của các sinh viên. 
Trong đó, mức học bổng sẽ hiển thị là “Học bổng cao” nếu giá trị của học bổng lớn hơn 150,000 và ngược lại hiển thị là “Mức trung bình”*/
SELECT SinhVien.Hoten, SinhVien.Hocbong,
  CASE 
    WHEN Hocbong > 150000 THEN N'Học bổng cao'
    ELSE N'Mức trung bình'
  END AS ScholarshipLevel
FROM SinhVien;
-- Cho biết kết quả điểm thi của các sinh viên (Qua môn, trượt).
SELECT KetQua.Diemthi,
  CASE 
    WHEN Diemthi > 5 THEN N'Qua môn'
    ELSE N'trượt'
  END AS Ketqua
FROM KetQua;
-- Cho biết tổng số sinh viên, số sinh viên nam và số sinh viên nữ của mỗi khoa.
SELECT SinhVien.KhoaID,
    COUNT(SinhVien.SinhvienID) as tongSV, 
    COUNT(CASE WHEN SinhVien.Gioitinh = N'nữ' THEN 1 ELSE NULL END) as svNu,
    COUNT(CASE WHEN SinhVien.Gioitinh = N'nam' THEN 1 ELSE NULL END) as svNam
FROM SinhVien
GROUP BY SinhVien.KhoaID;
-- Cho biết số lượng sinh viên theo từng tuổi [19-23]
SELECT 
    case
        WHEN YEAR(GETDATE()) - YEAR(SinhVien.Ngaysinh) BETWEEN 19 AND 23 then YEAR(GETDATE()) - YEAR(SinhVien.Ngaysinh)  --CONCAT(N'Tuổi',YEAR(GETDATE()) - YEAR(SinhVien.Ngaysinh))
    end as Tuoi, COUNT(*) as soluong 
FROM SinhVien
GROUP BY YEAR(GETDATE()) - YEAR(SinhVien.Ngaysinh)
HAVING YEAR(GETDATE()) - YEAR(SinhVien.Ngaysinh) BETWEEN 19 and 23
-- Cho biết số lượng sinh viên đậu và số lượng sinh viên rớt của từng môn trong lần thi 1.
SELECT KetQua.MonhocID,
    COUNT(KetQua.Diemthi) tongSVLan1,
    COUNT(case when KetQua.Diemthi > 5 then 1 else null end) as PASS,
    COUNT(case when KetQua.Diemthi < 5 then 1 else null end) as FAIL
FROM KetQua
GROUP BY KetQua.MonhocID, KetQua.Lanthi 
HAVING KetQua.Lanthi = 1
-- Cho biết danh sách sinh viên rớt 2 môn trở lên ở lần thi 1.
SELECT KetQua.SinhvienID,
    COUNT(case when KetQua.Diemthi < 5 then 1 else null end) AS faliUp2
FROM KetQua
GROUP BY KetQua.SinhvienID
HAVING COUNT(case when KetQua.Diemthi < 5 then 1 else null end)  > 2
-- Cho biết khoa nào có 2 sinh viên nam trở lên.
SELECT SinhVien.KhoaID, COUNT(SinhVien.Gioitinh)
FROM SinhVien
WHERE SinhVien.Gioitinh = N'nam'
GROUP BY SinhVien.KhoaID
HAVING COUNT(SinhVien.Gioitinh) > 2
-- Cho biết môn không có sinh viên rớt ở lần 1.
SELECT KetQua.MonhocID
FROM KetQua
WHERE KetQua.Lanthi = 1
GROUP BY KetQua.MonhocID
HAVING COUNT(case when KetQua.Diemthi < 5 then 1 end) = 0
-- Cho biết sinh viên có điểm trung bình lần 1 từ 7 trở lên và không rớt môn nào ở lần 1.
SELECT KetQua.SinhvienID
FROM KetQua
WHERE KetQua.Lanthi = 1
GROUP by KetQua.SinhvienID
HAVING AVG(KetQua.Diemthi) > 7 and COUNT(case when KetQua.Diemthi < 5 then 1 end) = 0
-- Cho biết sinh viên đăng ký học hơn 3 môn mà thi lần 1 không bị rớt môn nào.
SELECT KetQua.SinhvienID
FROM KetQua
WHERE KetQua.Lanthi = 1
GROUP BY KetQua.SinhvienID
HAVING COUNT(case when KetQua.Diemthi < 5 then 1  end) = 0 AND COUNT(KetQua.MonhocID) >3
-- Tìm những sinh viên nam 20 tuổi có học bổng mà quê quán không phải 1 trong các tỉnh Hà Nội, Đà Nẵng, Hải Phòng, Thái Bình.
SELECT SinhVien.SinhvienID,SinhVien.Hoten, SinhVien.Noisinh
FROM SinhVien
WHERE SinhVien.Gioitinh = N'nam' and SinhVien.Hocbong > 0 AND YEAR(GETDATE()) - YEAR(SinhVien.Ngaysinh) = 22 AND SinhVien.Noisinh not in (N'Hà Nội', N'Đà Nẵng')
-- Tìm những sinh viên nữ thuộc khoa số 1 sinh vào mùa hè và có học bổng
SELECT *
FROM SinhVien
WHERE KhoaID =1 AND Hocbong>0 AND month(Ngaysinh) in ('4', '5', '6')
-- Tìm môn học có điểm trung bình trên 7 mà không có sinh viên trượt ở lần thi 1
SELECT KetQua.MonhocID
FROM KetQua
WHERE KetQua.Lanthi =1 
GROUP BY KetQua.MonhocID
HAVING COUNT(case when KetQua.Diemthi < 5 then 1 end) = 0  AND AVG(KetQua.Diemthi) > 7
-- Tìm những sinh viên trượt 3 môn học trở lên trong lần thi 1
SELECT KetQua.SinhvienID
FROM KetQua
WHERE Lanthi = 1 
GROUP BY KetQua.SinhvienID
HAVING COUNT(case when KetQua.Diemthi < 5 then 1 end) > 3
-- Tìm những sinh viên học 5 môn trở lên mà điểm trung bình thi lần 1 trên 8
SELECT KetQua.SinhvienID
from KetQua
WHERE KetQua.Lanthi = 1
GROUP BY KetQua.SinhvienID
HAVING COUNT(KetQua.Diemthi) > 5 AND AVG(KetQua.Diemthi) > 8
-- Điểm thi cao nhất và thấp nhất môn học 1
SELECT MIN(KetQua.Diemthi) as min, MAX(KetQua.Diemthi) as max
FROM KetQua
WHERE KetQua.MonhocID = 1;
-- Tìm những sinh viên có điểm thi lần 2 cao hơn hoặc bằng điểm cao nhất trong lần thi 1.
SELECT KetQua.SinhvienID, KetQua.Diemthi
FROM KetQua
WHERE KetQua.Lanthi = 2 AND KetQua.Diemthi >= (SELECT MAX(KetQua.Diemthi) FROM KetQua WHERE KetQua.Lanthi = 1)
