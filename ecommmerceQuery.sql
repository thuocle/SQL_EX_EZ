--Viết câu lệnh truy vấn cho biết số lượng sản phẩm còn tồn kho của “Quần Luis Vuitton” 
SELECT SanPham.soLuongTon
FROM SanPham
WHERE SanPham.tenSP = N'Quần Luis Vuitton'
--Viết câu lệnh truy vấn cho biết số lượng sản phẩm còn tồn kho của “Quần Luis Vuitton” Size S
SELECT SIZECOLOR_Value.soLuongSC
FROM SIZECOLOR_Value JOIN SIZECOLOR ON SIZECOLOR_Value.sizeColorID = SIZECOLOR.sizeColorID JOIN SanPham ON SIZECOLOR_Value.sanPhamID = SanPham.sanPhamID
WHERE SanPham.tenSP = N'Quần Luis Vuitton' AND SIZECOLOR.tenSizeColor = 'S' 
--Viết câu lệnh truy vấn cho biết số lượng sản phẩm còn tồn kho của “Quần Luis Vuitton” Size S WHITE
SELECT SIZECOLOR_Value.soLuongSC
FROM SIZECOLOR_Value JOIN SIZECOLOR ON SIZECOLOR_Value.sizeColorID = SIZECOLOR.sizeColorID JOIN SanPham ON SIZECOLOR_Value.sanPhamID = SanPham.sanPhamID
WHERE SanPham.tenSP = N'Quần Luis Vuitton' AND SIZECOLOR.tenSizeColor = 'S-WHITE'
--Thêm cho sản phẩm “Quần Luis Vuitton” một thuộc tính mới là Gender gồm 2 option là MAN và WOMAN đảm bảo số lượng sản phẩm vẫn phải là 50 chiếc
INSERT into SIZECOLOR VALUES
    ('MAN'),
    ('WOMEN')
INSERT into SIZECOLOR_Value VALUES
    (1,12,25),
    (1,13,25)
--Viết câu lệnh truy vấn cho biết số lượng sản phẩm còn tồn kho của “Quần Luis Vuitton” Size XXL BLUE MAN
SELECT SIZECOLOR_Value.soLuongSC
FROM SIZECOLOR_Value JOIN SIZECOLOR ON SIZECOLOR_Value.sizeColorID = SIZECOLOR.sizeColorID JOIN SanPham ON SIZECOLOR_Value.sanPhamID = SanPham.sanPhamID
WHERE SanPham.tenSP = N'Quần Luis Vuitton' AND SIZECOLOR.tenSizeColor = 'S-WHITE';
--Cửa hàng nhập thêm 5 sản phẩm “Quần Luis Vuitton” đó là XL RED WOMAN hãy cập nhật vào CSDL
INSERT into SIZECOLOR_Value VALUES
(1,14,5)
UPDATE SanPham 
SET soLuongTon = soLuongTon + SIZECOLOR_Value.soLuongSC
FROM SanPham JOIN SIZECOLOR_Value ON SanPham.sanPhamID = SIZECOLOR_Value.sanPhamID
WHERE SIZECOLOR_Value.sizeColorID = 14
