drop database DA_WebBanDienThoai
create database DA_WebBanDienThoai
use DA_WebBanDienThoai

go 
/***************************************************************************/
create table sanpham
(
	sp_ma int primary key,
	sp_ten nvarchar(50),
	sp_nsx int,
	sp_mota nvarchar(30),
	sp_giatien nvarchar(30),
	sp_manhinh nvarchar(100),
	sp_hdh nvarchar(50),
	sp_camera nvarchar(50),
	sp_cpu nvarchar(50),
	sp_ram nvarchar(30),
	sp_rom nvarchar(30),
	sp_pin nvarchar(50),
)







/***************************************************************************/
create table nhasanxuat
(
	nsx_ma int primary key,
	nsx_ten nvarchar(30),
)


/***************************************************************************/
create table dathang
(
	dh_ma int,
	dh_soluong int,
	dh_madt int,
	constraint pk_dathang primary key(dh_ma,dh_madt)
)
/***************************************************************************/
create table chitietdathang
(
	ctdh_madh int,
	ctdh_makh int,
	ctdh_ngaylap date,
	ctdh_tongtien int,
	constraint pk_ctdathang primary key(ctdh_madh)
)
/***************************************************************************/
create table khachhang
(
	kh_ma int primary key,
	kh_ten nvarchar(30),
	kh_diachi nvarchar(100),
	kh_sdt int,
	kh_matkhau nvarchar(50),

)
/***************************************************************************/
create table tintuc
(
	tt_ma int primary key,
	tt_tieude nvarchar(50),
	tt_mota nvarchar(1000),
)
/***************************************************************************/
set dateformat dmy
/***************************************************************************/
alter table sanpham
add constraint fk_sp_nsx foreign key (sp_nsx) references nhasanxuat(nsx_ma)
/***************************************************************************/
alter table dathang
add constraint fk_dh_sp foreign key (dh_madt) references sanpham(sp_ma)
alter table dathang
add constraint fk_dh_ctdh foreign key (dh_ma) references chitietdathang(ctdh_madh)
/***************************************************************************/
alter table chitietdathang
add constraint fk_ctdh_kh foreign key (ctdh_makh) references khachhang(kh_ma)
/***************************************************************************/
insert into nhasanxuat(nsx_ma,nsx_ten)
values
('1','iPhone.jpg'),
('2','Samsung.jpg'),
('3','OPPO.png'),
('4','Xiaomi.jpg'),
('5','Realme.png'),
('6','Vivo.jpg'),
('7','OnePlus.jpg'),
('8','Vsmart.png')
/***************************************************************************/
insert into sanpham(sp_ma,sp_ten,sp_nsx,sp_mota,sp_giatien,sp_manhinh,sp_hdh,sp_camera,sp_cpu,sp_ram,sp_rom,sp_pin)
values
('1',N'iPhone 11 64GB','1',N'iphone1.png','19.990.000',N'IPS LCD, 6.1", Liquid Retina',N'iOS 13',N'2 camera 12 MP',N'Apple A13 Bionic 6 nhân',N'4 GB',N'64 GB',N'3110 mAh, có sạc nhanh'),
('2',N'iphone 12 Pro Max','1',N'iphone2.png','33.990.000',N'OLED, 6.7", Super Retina XDR',N'iOS 14',N'3 camera 12 MP',N'Apple A14 Bionic 6 nhân',N'64 GB',N'512 GB',N'3110 mAh, có sạc nhanh'),
('3',N'iPhone SE 256GB','1',N'iphone3.png','16.990.000',N'IPS LCD, 4.7"',N'iOS 13',N'12 MP',N'Apple A13 Bionic 6 nhân',N'3 GB',N'256 GB',N'1821 mAh, có sạc nhanh'),
('4',N'iPhone 7 32GB','1',N'iphone4.png','8.990.000',N'LED-backlit IPS LCD, 4.7", Retina HD',N'iOS 13',N'12 MP',N'Apple A10 Fusion 4 nhân',N'2 GB',N'32 GB',N'1960 mAh'),
('5',N'iPhone Xr 64GB','1',N'iphone5.png','14.490.000',N'IPS LCD, 6.1", Liquid Retina',N'iOS 12',N'12 MP',N'Apple A12 Bionic 6 nhân',N'3 GB',N'64 GB',N'2942 mAh, có sạc nhanh'),
('6',N'Samsung Galaxy S20 FE','2',N'samsung1.jpg','15.990.000',N'Super AMOLED, 6.5", Full HD+',N'Android 10',N'Chính 12 MP & Phụ 12 MP, 8 MP',N'Exynos 990 8 nhân',N'8 GB',N'128 GB',N'4500 mAh, có sạc nhanh'),
('7',N'Samsung Galaxy M51','2',N'samsung2.jpg','9.490.000',N'Super AMOLED Plus, 6.7", Full HD+',N'Android 10',N'Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP',N'Snapdragon 730 8 nhân',N'8 GB',N'128 GB',N'7000 mAh, có sạc nhanh'),
('8',N'Samsung Galaxy Z Fold2 5G','2',N'samsung3.jpg','50.000.000',N'Chính: Dynamic AMOLED, Phụ: Super AMOLED, Chính 7.59" & Phụ 6.23", Full HD+',N'Android 10',N'3 camera 12 MP',N'Snapdragon 865+ 8 nhân',N'12 GB',N'256 GB',N'4500 mAh, có sạc nhanh'),
('9',N'Samsung Galaxy Note 20 Ultra 5G','2',N'samsung4.jpg','28.990.000',N'Dynamic AMOLED 2X, 6.9", Quad HD+ (2K+)',N'Android 10',N'Chính 108 MP & Phụ 12 MP, 12 MP, cảm biến Laser AF',N'Exynos 990 8 nhân',N'12 GB',N'256 GB',N'4500 mAh, có sạc nhanh'),
('10',N'OPPO A93','3',N'oppo1.jpg','7.190.000',N'AMOLED, 6.43", Full HD+',N'Android 10',N'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP',N'MediaTek Helio P95 8 nhân',N'8 GB',N'128 GB',N'4000 mAh, có sạc nhanh'),
('11',N'OPPO Reno4','3',N'oppo2.jpg','8.490.000',N'AMOLED, 6.4", Full HD+',N'Android 10',N'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP',N'Snapdragon 720G 8 nhân',N'8 GB',N'128 GB',N'4015 mAh, có sạc nhanh'),
('12',N'OPPO Find X2','3',N'oppo3.jpg','19.990.000',N'AMOLED, 6.78", Quad HD+ (2K+)',N'Android 10',N'Chính 48 MP & Phụ 13 MP, 12 MP',N'Snapdragon 865 8 nhân',N'12 GB',N'256 GB',N'4200 mAh, có sạc nhanh'),
('13',N'OPPO Reno3 Pro','3',N'oppo4.jpg','8.990.000',N'Sunlight Super AMOLED, 6.4", Full HD+',N'Android 10',N'Chính 64 MP & Phụ 13 MP, 8 MP, 2 MP',N'MediaTek Helio P95 8 nhân',N'8 GB',N'256 GB',N'4025 mAh, có sạc nhanh'),
('15',N'OPPO A92','3',N'oppo5.jpg','6.190.000',N'TFT LCD, 6.5", Full HD+',N'Android 10',N'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP',N'Snapdragon 665 8 nhân',N'8 GB',N'128 GB',N'5000 mAh, có sạc nhanh'),
('16',N'Xiaomi Mi 10T Pro 5G','4',N'xiaomi1.jpg','12.990.000',N'IPS LCD, 6.67", Full HD+',N'Android 10',N'Chính 108 MP & Phụ 13 MP, 5 MP',N'Snapdragon 865 8 nhân',N'8 GB',N'256 GB',N'5000 mAh, có sạc nhanh'),
('17',N'Xiaomi POCO X3 NFC','4',N'xiaomi2.jpg','6.990.000',N'IPS LCD, 6.67", Full HD+',N'Android 10',N'Chính 64 MP & Phụ 13 MP, 2 MP, 2 MP',N'Snapdragon 732G 8 nhân',N'6 GB',N'128 GB',N'5160 mAh, có sạc nhanh'),
('18',N'Xiaomi Redmi 9A','4',N'xiaomi3.jpg','1.990.000',N'IPS LCD, 6.53", HD+',N'Android 10',N'13 MP',N'MediaTek Helio G25 8 nhân',N'2 GB',N'32 GB',N'5000 mAh'),
('19',N'Xiaomi Redmi 9','4',N'xiaomi4.jpg','3.790.000',N'IPS LCD, 6.53", Full HD+',N'Android 10',N'Chính 13 MP & Phụ 8 MP, 5 MP, 2 MP',N'MediaTek Helio G80 8 nhân',N'4 GB',N'64 GB',N'5020 mAh, có sạc nhanh'),
('20',N'Realme C15','5',N'realme1.jpg','4.190.000',N'IPS LCD, 6.5", HD+',N'Android 10',N'Chính 13 & Phụ 8 MP, 2 MP, 2 MP',N'Snapdragon 460 8 nhân',N'4 GB',N'64 GB',N'6000 mAh, có sạc nhanh'),
('21',N'Realme 7','5',N'realme2.jpg','6.690.000',N'IPS LCD, 6.5", Full HD+',N'Android 10',N'Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP',N'MediaTek Helio G95 8 nhân',N'8 GB',N'128 GB',N'5000 mAh, có sạc nhanh'),
('22',N'Realme 7 Pro','5',N'realme3.jpg','8.490.000',N'Super AMOLED, 6.44", Full HD+',N'Android 10',N'Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP',N'Snapdragon 720G 8 nhân',N'8 GB',N'128 GB',N'4500 mAh, có sạc nhanh'),
('23',N'Realme 7i','5',N'realme4.jpg','6.290.000',N'IPS LCD, 6.5", HD+',N'Android 10',N'Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP',N'Snapdragon 662 8 nhân',N'8 GB',N'128 GB',N'5000 mAh, có sạc nhanh'),
('24',N'Realme C12','5',N'realme5.jpg','3.490.000',N'IPS LCD, 6.52", HD+',N'Android 10',N'Chính 13 MP & Phụ 2 MP, 2 MP',N'MediaTek Helio G35 8 nhân',N'3 GB',N'32 GB',N'6000 mAh'),
('25',N'ViVo Y12S','6',N'vivo1.jpg','3.990.000',N'IPS LCD, 6.51", HD+',N'Android 10',N'Chính 13 MP & Phụ 2 MP',N'MediaTek Helio P35 8 nhân',N'4 GB',N'128 GB',N'5000 mAh'),
('26',N'Vivo V20','6',N'vivo2.jpg','8.490.000',N'AMOLED, 6.44", Full HD+',N'Android 11',N'Chính 64 MP & Phụ 8 MP, 2 MP',N'Snapdragon 720G 8 nhân',N'8 GB',N'128 GB',N'4000 mAh, có sạc nhanh'),
('27',N'Vivo Y20','6',N'vivo3.jpg','3.990.000',N'IPS LCD, 6.51", HD+',N'Android 10',N'Chính 13 MP & Phụ 2 MP, 2 MP',N'Snapdragon 460 8 nhân',N'4 GB',N'64 GB',N'5000 mAh'),
('28',N'Vivo X50 Pro','6',N'vivo4.jpg','18.990.000',N'AMOLED, 6.56", Full HD+',N'Android 10',N'Chính 48 MP & Phụ 13 MP, 8 MP, 8 MP',N'Snapdragon 765G 8 nhân',N'8 GB',N'256 GB',N'4315 mAh'),
('29',N'OnePlus Nord 5G','7',N'oneplus1.jpg','12.490.000',N'Fluid AMOLED, 6.44", Full HD+',N'Android 10',N'Chính 48 MP & Phụ 8 MP, 5 MP, 2 MP',N'Snapdragon 765G 8 nhân',N'12 GB',N'256 GB',N'4115 mAh, có sạc nhanh'),
('30',N'OnePlus 8T 5G','7',N'oneplus2.jpg','17.490.000',N'AMOLED, 6.55", Full HD+',N'Android 11',N'Chính 48 MP & Phụ 16 MP, 5 MP, 2 MP',N'Snapdragon 865 8 nhân',N'12 GB',N'256 GB',N'4500 mAh, có sạc nhanh'),
('31',N'OnePlus 8 Pro 5G','7',N'oneplus3.jpg','22.990.000',N'AMOLED, 6.78", Quad HD+ (2K+)',N'Android 10',N'Chính 48 MP & Phụ 48 MP, 8 MP, 5 MP',N'Snapdragon 865 8 nhân',N'12 GB',N'256 GB',N'4510 mAh, có sạc nhanh'),
('32',N'Vsmart Aris','8',N'vsmart1.jpg','7.490.000',N'AMOLED, 6.39", Full HD+',N'Android 10',N'Chính 64 MP & Phụ 8 MP, 8 MP, 2 MP',N'Snapdragon 730 8 nhân',N'8 GB',N'128 GB',N'4000 mAh, có sạc nhanh'),
('33',N'Vsmart Joy 4','8',N'vsmart2.jpg','3.590.000',N'LTPS IPS LCD, 6.53", Full HD+',N'Android 10',N'Chính 16 MP & Phụ 8 MP, 2 MP, 2 MP',N'Snapdragon 665 8 nhân',N'4 GB',N'64 GB',N'5000 mAh, có sạc nhanh'),
('34',N'Vsmart Aris Pro','8',N'vsmart3.jpg','8.990.000',N'AMOLED, 6.39", Full HD+',N'Android 10',N'Chính 64 MP & Phụ 8 MP, 8 MP, 2 MP',N'Snapdragon 730 8 nhân',N'8 GB',N'128 GB',N'4000 mAh, có sạc nhanh'),
('35',N'Vsmart Live 4','8',N'vsmart4.jpg','4.790.000',N'LTPS IPS LCD, 6.5", Full HD+',N'Android 10',N'Chính 48 MP & Phụ 8 MP, 5 MP, 2 MP',N'Snapdragon 675 8 nhân',N'6 GB',N'64 GB',N'5000 mAh, có sạc nhanh')
/***************************************************************************/
select * from sanpham
/***************************************************************************/
/***************************************************************************/
/***************************************************************************/
