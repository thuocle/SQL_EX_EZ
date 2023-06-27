--Đếm tổng số nhân viên trong công ty
SELECT COUNT(NhanVien.NhanvienID) 
FROM NhanVien
SELECT *
FROM PhanCong
--Đếm tổng số dự án đã được đề raa
SELECT COUNT(DuAn.DuanID) 
FROM DuAn
--Đếm tổng số nhân viên tham gia dự án số 1
SELECT COUNT(PhanCong.NhanvienID) 
FROM PhanCong
WHERE DuanID = 1
--Đếm số nhân viên tham gia mỗi dự án
SELECT COUNT(PhanCong.NhanvienID)
FROM PhanCong
GROUP BY PhanCong.DuanID
--Tính tổng giờ làm của nhân viên 1
SELECT sum(PhanCong.Sogiolam)
FROM PhanCong
WHERE PhanCong.NhanvienID = 1
--Tính tổng giờ làm của mỗi nhân viên
SELECT sum(PhanCong.Sogiolam) as hour
FROM PhanCong
GROUP BY PhanCong.NhanvienID
--Tìm nhân viên có số giờ làm cao nhất dự án 1
SELECT top 1 NhanvienID ,SUM(PhanCong.Sogiolam) as h
FROM PhanCong
WHERE PhanCong.DuanID = 1
GROUP BY PhanCong.NhanvienID
ORDER BY h DESC
--Tìm dự án có ít nhân viên tham gia nhất
SELECT top 1 PhanCong.DuanID, SUM(NhanvienID) as d
FROM PhanCong
GROUP BY PhanCong.DuanID
ORDER BY d ASC
--Tìm nhân viên có số giờ làm cao nhất công ty
SELECT top 1 NhanvienID ,SUM(PhanCong.Sogiolam) as h
FROM PhanCong
GROUP BY PhanCong.NhanvienID
ORDER BY h DESC
--Tính tổng giờ làm của mỗi dự án
SELECT SUM(PhanCong.Sogiolam)
FROM PhanCong
GROUP BY PhanCong.DuanID
--Tính số giờ làm trung bình trong mỗi dự án
SELECT avg(PhanCong.Sogiolam)
FROM PhanCong
GROUP BY PhanCong.DuanID
--Tính số giờ làm trung bình mỗi nhân viên
SELECT avg(PhanCong.Sogiolam)
FROM PhanCong
GROUP BY PhanCong.NhanvienID
--Tìm 3 dự án có tổng số giờ làm của nhân viên là cao nhất
SELECT top 3 PhanCong.DuanID, SUM(PhanCong.Sogiolam)
FROM PhanCong
GROUP BY PhanCong.DuanID
--Tìm 3 nhân viên có số giờ làm cao nhất công ty
SELECT top 3 PhanCong.NhanvienID, SUM(PhanCong.Sogiolam)
FROM PhanCong
GROUP BY PhanCong.NhanvienID
--Tìm những nhân viên có tổng giờ làm trên 300 giờ
SELECT PhanCong.NhanvienID, SUM(PhanCong.Sogiolam)
FROM PhanCong
GROUP BY PhanCong.NhanvienID
HAVING SUM(PhanCong.Sogiolam) > 300

--Tìm những nhân viên có tổng giờ làm từ 150 – 200 giờ
SELECT PhanCong.NhanvienID, SUM(PhanCong.Sogiolam)
FROM PhanCong
GROUP BY PhanCong.NhanvienID
HAVING SUM(PhanCong.Sogiolam) BETWEEN 150 AND 200

--Đếm mỗi thành phố có bao nhiêu nhân viên
SELECT COUNT(NhanVien.NhanvienID)
FROM NhanVien
GROUP BY NhanVien.Diachi
--Tìm 3 nhân viên có số giờ làm thấp nhất công ty (không tính những nhân viên chưa tham gia dự án nào)
SELECT top 3 PhanCong.NhanvienID, sum(PhanCong.Sogiolam)
FROM PhanCong
GROUP BY PhanCong.NhanvienID
ORDER BY PhanCong.NhanvienID DESC
--Tìm những thành phố nào có ít hơn 3 nhân viên
SELECT NhanVien.Diachi, SUM(NhanVien.NhanvienID) as sum
FROM NhanVien
GROUP BY NhanVien.Diachi 
HAVING SUM(NhanVien.NhanvienID) < 3
--Tìm nhân viên tham gia nhiều dự án nhất
SELECT top 1 PhanCong.NhanvienID, SUM(PhanCong.DuanID)
FROM PhanCong
GROUP BY PhanCong.NhanvienID
