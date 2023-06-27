-- Lấy thông tin sinh viên có học bổng cao nhất.
SELECT *
from SinhVien
WHERE SinhVien.Hocbong = (select MAX(SinhVien.Hocbong)
from SinhVien)
-- Cho biết những sinh viên điểm thi lần 1 cao nhất môn học 1.
SELECT *
from KetQua
WHERE Lanthi = 1 and KetQua.Diemthi = (SELECT MAX(KetQua.Diemthi)
FROM KetQua
WHERE MonhocID = 1 and Lanthi = 1 )
-- Cho biết sinh viên có điểm thi lần 2 môn bất kỳ lớn hơn tất cả điểm thi lần 1 của những sinh viên khác.
SELECT * 
FROM KetQua
WHERE Lanthi = 2 AND KetQua.Diemthi > (SELECT MAX(KetQua.Diemthi)
FROM KetQua
WHERE Lanthi = 1) 

-- Cho biết sinh viên có nơi sinh cùng với Minh.
SELECT *
from SinhVien
WHERE SinhVien.Noisinh = (SELECT SinhVien.Noisinh
FROM SinhVien
WHERE SinhVien.Hoten LIKE N'%Minh')
-- Cho biết điểm thi cao nhất mỗi môn học.
SELECT MAX(Diemthi), KetQua.MonhocID
from KetQua
GROUP BY KetQua.MonhocID
-- Cho biết sinh viên có học bổng cao nhất mỗi khoa
SELECT MAX(SinhVien.Hocbong), SinhVien.KhoaID
from SinhVien
GROUP BY SinhVien.KhoaID
-- Môn học nào có nhiều sinh viên học nhất.
SELECT top 1 COUNT(KetQua.SinhvienID), KetQua.MonhocID
FROM KetQua
GROUP BY KetQua.MonhocID
ORDER BY COUNT(KetQua.SinhvienID) DESC
-- Khoa nào có đông sinh viên nam nhất.
SELECT top 1 COUNT(SinhVien.SinhvienID), SinhVien.KhoaID
FROM SinhVien
GROUP BY SinhVien.KhoaID
ORDER BY COUNT(SinhVien.SinhvienID) DESC
-- Cho biết môn nào có nhiều sinh viên rớt lần 1 nhiều nhất.
SELECT  top 1 KetQua.MonhocID, COUNT(case when KetQua.Diemthi < 5 then 1 end)
from KetQua
WHERE Lanthi = 1
GROUP BY KetQua.MonhocID
ORDER BY COUNT(case when KetQua.Diemthi < 5 then 1 end) desc
-- Cho biết sinh viên chưa thi môn học 1
SELECT SinhVien.SinhvienID, SinhVien.Hoten
from SinhVien
WHERE Sinhvien.SinhvienID  not in (select KetQua.SinhvienID from KetQua WHERE MonhocID = 1 )
-- Cho biết những môn không có sinh viên rớt ở lần 1.
SELECT DISTINCT KetQua.MonhocID 
from KetQua
WHERE KetQua.MonhocID  not in (select KetQua.MonhocID from KetQua WHERE KetQua.Diemthi < 5 GROUP by MonhocID)
-- Cho biết những sinh viên không có học bổng hoặc bị rớt môn học trong lần thi 1
SELECT SinhVien.SinhvienID
from SinhVien 
WHERE Hocbong = 0 OR SinhvienID in (select SinhvienID from KetQua WHERE Diemthi < 5 and Lanthi = 1)
-- Cho biết những sinh viên có học bổng hoặc không trượt môn nào trong lần thi 1
SELECT SinhVien.SinhvienID
from SinhVien 
WHERE Hocbong <> 0 OR SinhvienID not in (select SinhvienID from KetQua WHERE Diemthi < 5 and Lanthi = 1)
-- Điểm cao nhất và thấp nhất mỗi môn học.
SELECT KetQua.MonhocID, MIN(KetQua.Diemthi) min, MAX(KetQua.Diemthi) as max
FROM KetQua
GROUP by KetQua.MonhocID
-- Tìm những môn mà tất cả sinh viên trong danh sách sinh viên đều học
SELECT MonHocID
FROM KetQua
GROUP BY MonHocID
HAVING COUNT(DISTINCT SinhVienID) = (SELECT COUNT(DISTINCT SinhVienID) FROM SinhVien)
-- Tìm những sinh viên học những môn giống sinh viên 1 (có thể nhiều hơn)
SELECT DISTINCT KetQua.SinhvienID
FROM KetQua
WHERE 
KetQua.MonhocID in (select DISTINCT KetQua.MonhocID from KetQua WHERE KetQua.SinhvienID = 1 ) 
OR EXISTS (SELECT MonHocID FROM KetQua WHERE SinhVienID = KetQua.SinhVienID EXCEPT SELECT MonHocID FROM KetQua WHERE SinhVienID = 1)
GROUP BY KetQua.SinhvienID
HAVING KetQua.SinhvienID != 1

-- Tìm những sinh viên học những môn bằng đúng sinh viên 1 (không hơn không kém môn nào)

SELECT DISTINCT k1.SinhvienID
FROM KetQua k1
WHERE not EXISTS (
    SELECT MonhocID
    FROM KetQua k2
    WHERE k2.SinhvienID = 1
    AND not EXISTS (
        SELECT MonhocID
        FROM KetQua k3
        WHERE k3.SinhvienID = k1.SinhvienID
        AND k3.MonhocID = k2.MonhocID
    )
)
AND k1.SinhvienID != 1

SELECT DISTINCT k1.SinhvienID
FROM KetQua k1
WHERE not EXISTS (SELECT MonhocID FROM KetQua k2 WHERE k2.SinhvienID = 1 AND not EXISTS (SELECT MonhocID FROM KetQua k3 WHERE k3.SinhvienID = k1.SinhvienID AND k3.MonhocID = k2.MonhocID))
AND k1.SinhvienID != 1


