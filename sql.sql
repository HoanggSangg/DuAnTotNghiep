create database duan;
USE duan;
 
/****** Object1:  Table Accounts    Script Date: 9/12/2021 5:32:14 PM ******/

CREATE TABLE Accounts(
	Username nvarchar(50) NOT NULL,
	Password nvarchar(50) NOT NULL,
	Fullname nvarchar(50) NOT NULL,
	Email nvarchar(50) NOT NULL,
	Photo nvarchar(50) NULL,
	TrangThai bit NOT NULL,
 CONSTRAINT PK_Customers PRIMARY KEY (Username));

 
/****** Object:  Table Authorities    Script Date: 9/12/2021 5:32:15 PM ******/
  
 
CREATE TABLE Authorities(
	Id int AUTO_INCREMENT NOT NULL,
	Username nvarchar(50) NOT NULL,
	RoleId nvarchar(10) NOT NULL,
 CONSTRAINT PK_UserRoles PRIMARY KEY (Id));

 
/****** Object:  Table Cart    Script Date: 9/12/2021 5:32:15 PM ******/
  
 

 
CREATE TABLE Cart(
	Id int AUTO_INCREMENT NOT NULL,
	Productid int NOT NULL,
	username varchar(50) NOT NULL,
	cuahang nvarchar(50) NOT NULL,
	price float NOT NULL,
	qty int NOT NULL,
CONSTRAINT PK_Sanpham PRIMARY KEY (Id));



 
CREATE TABLE Categories(
	Id char(4) NOT NULL,
	Name nvarchar(50) NOT NULL,
 CONSTRAINT PK_Categories PRIMARY KEY (Id));


 
/****** Object:  Table Catesmall    Script Date: 9/12/2021 5:32:15 PM ******/
  

 
CREATE TABLE Catesmall(
	Id int AUTO_INCREMENT NOT NULL,
	Name nvarchar(50) NOT NULL,
	CategoryId char(4) NOT NULL,
 CONSTRAINT PK_CateSmall PRIMARY KEY (Id));

 
/****** Object:  Table Cmtproduct    Script Date: 9/12/2021 5:32:15 PM ******/
  
 
CREATE TABLE Cmtproduct(
	Id int AUTO_INCREMENT NOT NULL,
	Comment nvarchar(500) NOT NULL,
	ProductId int NOT NULL,
	Username nvarchar(50) NOT NULL,
	date date NOT NULL,
 CONSTRAINT PK_Comment PRIMARY KEY (Id));

 
/****** Object:  Table Cmtstore    Script Date: 9/12/2021 5:32:15 PM ******/
  
 
CREATE TABLE Cmtstore(
	Id int AUTO_INCREMENT NOT NULL,
	Comment nvarchar(50) NOT NULL,
	Store int NOT NULL,
	Username nvarchar(50) NOT NULL,
	date date NOT NULL,
 CONSTRAINT PK_CmtStore PRIMARY KEY (Id));

 
/****** Object:  Table Codedmk    Script Date: 9/12/2021 5:32:15 PM ******/
  
 
CREATE TABLE Codedmk(
	Id int AUTO_INCREMENT NOT NULL,
	Code nvarchar(10) NOT NULL,
	Username nvarchar(50) NOT NULL,
	date datetime NOT NULL,
	trangthai nvarchar(500) NOT NULL,
 CONSTRAINT PK_Codedmk PRIMARY KEY (Id));

 
/****** Object:  Table Codesale    Script Date: 9/12/2021 5:32:15 PM ******/
  
 
CREATE TABLE Codesale(
	Id int AUTO_INCREMENT NOT NULL,
	Code nchar(10) NOT NULL,
	starday date NOT NULL,
	endday date NOT NULL,
	percents int NOT NULL,
	trangthai nvarchar(500) NOT NULL,
	CuaHangid int NOT NULL,
 CONSTRAINT PK_Codesale PRIMARY KEY (Id));

 
/****** Object:  Table Cuahang    Script Date: 9/12/2021 5:32:15 PM ******/
  
 
CREATE TABLE Cuahang(
	Id int AUTO_INCREMENT NOT NULL,
	TenCuaHang nvarchar(50) NOT NULL,
	Username nvarchar(50) NOT NULL,
	TrangThai nvarchar(500) NOT NULL,
	Image nvarchar(50) NOT NULL,
 CONSTRAINT PK_CuaHang PRIMARY KEY (Id));

 
/****** Object:  Table Image    Script Date: 9/12/2021 5:32:15 PM ******/
  
 
CREATE TABLE Image(
	Id int AUTO_INCREMENT NOT NULL,
	Nameimage nvarchar(50) NOT NULL,
	ProductId int NOT NULL,
 CONSTRAINT PK_Image PRIMARY KEY (Id));

 
/****** Object:  Table Introduce    Script Date: 9/12/2021 5:32:15 PM ******/
  
 
CREATE TABLE Introduce(
	Id int AUTO_INCREMENT NOT NULL,
	ProductId int NOT NULL,
	data nvarchar(500) NOT NULL,
 CONSTRAINT PK_Introduce PRIMARY KEY (Id));

 
/****** Object:  Table Likes    Script Date: 9/12/2021 5:32:15 PM ******/
  
 
CREATE TABLE Likes(
	Id int AUTO_INCREMENT NOT NULL,
	ProductId int NOT NULL,
	Username nvarchar(50) NOT NULL,
	date date NOT NULL,
	Likes int NOT NULL,
 CONSTRAINT PK_Likes PRIMARY KEY (Id));

 
/****** Object:  Table OrderDetails    Script Date: 9/12/2021 5:32:15 PM ******/
  
 
CREATE TABLE OrderDetails(
	Id bigint AUTO_INCREMENT NOT NULL,
	OrderId bigint NOT NULL,
	ProductId int NOT NULL,
	Price float NOT NULL,
	Quantity int NOT NULL,
 CONSTRAINT PK_OrderDetails PRIMARY KEY (Id));

 
/****** Object:  Table Orders    Script Date: 9/12/2021 5:32:15 PM ******/
  
 
CREATE TABLE Orders(
	Id bigint AUTO_INCREMENT NOT NULL,
	Username nvarchar(50) NOT NULL,
	CreateDate datetime NOT NULL,
	Address nvarchar(100) NOT NULL,
	NguoiNhan nvarchar(50) NOT NULL,
	SDT nvarchar(20) NOT NULL,
	DiaChiNN nvarchar(100) NOT NULL,
	TrangThai nvarchar(100) NOT NULL,
	Codeid int NULL,
	CHid int NULL,
	TongTien float NOT NULL,
	hoanthanh bit NULL,
 CONSTRAINT PK_Orders PRIMARY KEY (Id));

 
/****** Object:  Table prepay    Script Date: 9/12/2021 5:32:15 PM ******/
  
 
CREATE TABLE prepay(
	Id int AUTO_INCREMENT NOT NULL,
	percents int NOT NULL,
	tien float NOT NULL,
	date date NOT NULL,
	Orderid bigint NOT NULL,
 CONSTRAINT PK_prepay PRIMARY KEY (Id));

 
/****** Object:  Table Products    Script Date: 9/12/2021 5:32:15 PM ******/
  
 
CREATE TABLE Products(
	Id int AUTO_INCREMENT NOT NULL,
	Name nvarchar(50) NOT NULL,
	Price float NOT NULL,
	SoLuong int NOT NULL,
	CreateDate date NOT NULL,
	Image nvarchar(50) NOT NULL,
	Available bit NOT NULL,
	CategoryId int NOT NULL,
	CuaHangId int NOT NULL,
 CONSTRAINT PK_Products PRIMARY KEY (Id));

 
/****** Object:  Table Roles    Script Date: 9/12/2021 5:32:15 PM ******/
  
 
CREATE TABLE Roles(
	Id nvarchar(10) NOT NULL,
	Name nvarchar(50) NOT NULL,
 CONSTRAINT PK_Roles PRIMARY KEY (Id));

 
/****** Object:  Table Saleuser    Script Date: 9/12/2021 5:32:15 PM ******/
  
 
CREATE TABLE Saleuser(
	Id int AUTO_INCREMENT NOT NULL,
	Username nvarchar(50) NOT NULL,
	Codeid int NOT NULL,
	date date NOT NULL,
 CONSTRAINT PK_Saleuser PRIMARY KEY (Id));

 
/****** Object:  Table Specification    Script Date: 9/12/2021 5:32:15 PM ******/
  
 
CREATE TABLE Specification(
	Id int AUTO_INCREMENT NOT NULL,
	TenThuocTinh nvarchar(50) NOT NULL,
	GiaTri nvarchar(50) NOT NULL,
	ProductId int NOT NULL,
 CONSTRAINT PK_Specification PRIMARY KEY (Id));

 
/****** Object:  Table tintuc    Script Date: 9/12/2021 5:32:15 PM ******/
  
 
CREATE TABLE tintuc(
	id int AUTO_INCREMENT NOT NULL,
	noidung nvarchar(500) NOT NULL,
	username nvarchar(50) NOT NULL,
	image nvarchar(50) NULL,
 CONSTRAINT PK_tintuc PRIMARY KEY (id));

 
INSERT INTO Accounts (Username, Password, Fullname, Email, Photo, TrangThai) VALUES (N'1', N'dscxmn', N'122', N'taolasang2k1@gmail.com', N'ce2b7547.jpg', 0);
INSERT INTO Accounts (Username, Password, Fullname, Email, Photo, TrangThai) VALUES (N'2', N'348645', N'2', N'sang@nv.nv', N'5bf24672.png', 1);
INSERT INTO Accounts (Username, Password, Fullname, Email, Photo, TrangThai) VALUES (N'5', N'5', N'5', N'5', N'629c0043.png', 1);
INSERT INTO Accounts (Username, Password, Fullname, Email, Photo, TrangThai) VALUES (N'6', N'6', N'6', N'muaaccclone@gmail.com', N'56180510.png', 1);
INSERT INTO Accounts (Username, Password, Fullname, Email, Photo, TrangThai) VALUES (N'hsang', N'123', N'sanhgdz', N'taolasang2k1@gmail.com', N'6c7cda71.png', 1);


INSERT INTO Authorities (Id, Username, RoleId) VALUES (1013, N'hsang', N'KH');
INSERT INTO Authorities (Id, Username, RoleId) VALUES (1015, N'hsang', N'CH');
INSERT INTO Authorities (Id, Username, RoleId) VALUES (1020, N'hsang', N'AD');
INSERT INTO Authorities (Id, Username, RoleId) VALUES (1061, N'2', N'KH');
INSERT INTO Authorities (Id, Username, RoleId) VALUES (1062, N'5', N'KH');
INSERT INTO Authorities (Id, Username, RoleId) VALUES (1063, N'6', N'KH');
INSERT INTO Authorities (Id, Username, RoleId) VALUES (1065, N'1', N'KH');
INSERT INTO Authorities (Id, Username, RoleId) VALUES (1066, N'1', N'CH');
INSERT INTO Authorities (Id, Username, RoleId) VALUES (1067, N'2', N'CH');

INSERT INTO Categories (Id, Name) VALUES (N'dhtm', N'ĐH Thông Minh');
INSERT INTO Categories (Id, Name) VALUES (N'dt  ', N'Điện Thoại');
INSERT INTO Categories (Id, Name) VALUES (N'mt  ', N'Máy Tính');
INSERT INTO Categories (Id, Name) VALUES (N'pk  ', N'Phụ kiện');
INSERT INTO Categories (Id, Name) VALUES (N'tb  ', N'Tablet');


INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (3, N'Iphone', N'dt  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (4, N'Samsung', N'dt  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (5, N'Realme', N'dt  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (8, N'Vivo', N'dt  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (9, N'Vsmart', N'dt  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (10, N'Xiaomi', N'dt  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (11, N'Oppo', N'dt  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (12, N'Apple', N'dhtm');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (13, N'BeU', N'dhtm');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (14, N'garmin', N'dhtm');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (15, N'kidcare', N'dhtm');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (16, N'oppo', N'dhtm');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (17, N'SamSung', N'dhtm');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (18, N'Acer', N'mt  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (19, N'ASUS', N'mt  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (20, N'Dell', N'mt  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (21, N'HP', N'mt  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (22, N'Lenovo', N'mt  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (24, N'LG', N'mt  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (25, N'MacBook', N'mt  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (26, N'MSI', N'mt  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1005, N'Huawei', N'tb  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1006, N'iPad', N'tb  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1007, N'Lenovo', N'tb  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1008, N'Masstel', N'tb  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1009, N'Samsung', N'tb  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1018, N'Tai nghe', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1019, N'Gậy chụp ảnh', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1022, N'Giá đỡ điện thoại', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1023, N'Loa điện thoại', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1024, N'Sạc dự phòng', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1026, N'Loa đồng hồ', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1027, N'Sạc dự phòng đồng hồ', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1028, N'Tai nghe bluetooth đồng hồ', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1029, N'Bàn Phím', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1030, N'Chuột', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1031, N'Headphone', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1032, N'Ổ cứng di động', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1033, N'USB', N'pk  ');


INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (1, N'ccccc', 12, N'1', CAST(N'2020-02-02' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (2, N'ngu vl', 12, N'1', CAST(N'2020-02-02' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (7, N'44', 12, N'hsang', CAST(N'2020-02-02' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (13, N'9', 64, N'hsang', CAST(N'2021-10-20' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (14, N'71', 64, N'hsang', CAST(N'2021-10-20' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (15, N'123', 64, N'hsang', CAST(N'2021-10-20' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (16, N'234', 64, N'hsang', CAST(N'2021-10-20' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (17, N'1234', 64, N'hsang', CAST(N'2021-10-20' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (18, N'sang', 12, N'hsang', CAST(N'2021-10-20' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (19, N'456', 12, N'hsang', CAST(N'2021-10-20' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (20, N'm hay quá sang ơi', 12, N'hsang', CAST(N'2021-10-20' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (23, N'123', 13, N'hsang', CAST(N'2021-10-20' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (24, N'tài ngu vl', 12, N'hsang', CAST(N'2021-10-22' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (25, N'123', 20, N'hsang', CAST(N'2021-11-07' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (26, N'sang dz', 35, N'hsang', CAST(N'2021-11-16' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (27, N'123', 9, N'hsang', CAST(N'2021-11-18' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (28, N'123', 9, N'hsang', CAST(N'2021-11-30' AS Date));


INSERT INTO Cmtstore (Id, Comment, Store, Username, date) VALUES (1, N'12', 4, N'hsang', CAST(N'2021-12-07' AS Date));
INSERT INTO Cmtstore (Id, Comment, Store, Username, date) VALUES (2, N'1234', 4, N'hsang', CAST(N'2021-12-07' AS Date));
INSERT INTO Cmtstore (Id, Comment, Store, Username, date) VALUES (3, N'1244555', 4, N'hsang', CAST(N'2021-12-07' AS Date));
INSERT INTO Cmtstore (Id, Comment, Store, Username, date) VALUES (4, N'cửa hàng lừa đảo', 4, N'hsang', CAST(N'2021-12-07' AS Date));


INSERT INTO Codesale (Id, Code, starday, endday, percents, trangthai, CuaHangid) VALUES (4, N'123456789 ', CAST(N'2021-12-04' AS Date), CAST(N'2021-12-05' AS Date), 10, 0, 4);
INSERT INTO Codesale (Id, Code, starday, endday, percents, trangthai, CuaHangid) VALUES (5, N'1234567890', CAST(N'2021-12-04' AS Date), CAST(N'2021-12-07' AS Date), 10, 1, 1);
INSERT INTO Codesale (Id, Code, starday, endday, percents, trangthai, CuaHangid) VALUES (8, N'6         ', CAST(N'2021-12-04' AS Date), CAST(N'2021-12-04' AS Date), 10, 0, 4);
INSERT INTO Codesale (Id, Code, starday, endday, percents, trangthai, CuaHangid) VALUES (10, N'5357171543', CAST(N'2021-12-04' AS Date), CAST(N'2021-12-11' AS Date), 12, 1, 1);


INSERT INTO Cuahang (Id, TenCuaHang, Username, TrangThai, Image) VALUES (1, N'young hero', N'hsang', 1, N'iphone-12-xanh-duong-600x600.jpg');
INSERT INTO Cuahang (Id, TenCuaHang, Username, TrangThai, Image) VALUES (4, N'shoppe', N'2', 1, N'iphone-12-xanh-duong-600x600.jpg');
INSERT INTO Cuahang (Id, TenCuaHang, Username, TrangThai, Image) VALUES (5, N'lazada', N'1', 1, N'iphone-12-xanh-duong-600x600.jpg');


INSERT INTO Image (Id, Nameimage, ProductId) VALUES (4, N'iphone-12-xanh-duong-600x600.jpg', 9);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (10, N'iphone-12-pro-max-xanh-duong-new.jpg', 10);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (11, N'iphone-12-pro-bac-new.jpg', 12);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (16, N'iphone-12-mini-den-15-600x600.jpg', 13);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (18, N'iphone-xr-hopmoi-den-600x600.jpg', 16);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (20, N'iphone-se-128gb-2020-do-600x600.jpg', 17);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (21, N'iphone-se-2020-trang-600x600-600x600.jpg', 19);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (22, N'iphone-xi-xanhla-600x600.jpg', 20);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (23, N'oppo-reno6-z-5g-aurora-1-600x600.jpg', 58);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (24, N'oppo-reno6-5g-aurora-600x600.jpg', 59);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (25, N'oppo-a74-blue-9-600x600.jpg', 60);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (27, N'oppo-find-x3-pro-black-001-1-600x600.jpg', 61);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (28, N'oppo-reno5-5g-thumb-600x600.jpg', 62);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (32, N'realme-c21y-black-600x600.jpg', 28);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (34, N'realme-c25s-grey-7-600x600.jpg', 31);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (36, N'realme-8-pro-vang-600x600.jpg', 34);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (37, N'realme-8-pro-balck-600x600.jpg', 35);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (38, N'realme-8-silver-600x600.jpg', 37);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (39, N'samsung-galaxy-z-fold-3-silver-600x600.jpg', 23);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (41, N'samsung-galaxy-a52-5g-thumb-black.jpg', 24);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (43, N'samsung-galaxy-z-flip-3-cream-600x600.jpg', 25);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (44, N'samsung-galaxy-z-fold-2-den-600x600.jpg', 26);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (45, N'samsung-galaxy-s21-tim-600x600.jpg', 27);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (46, N'vivo-y12s-den-new-600x600-600x600.jpg', 38);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (47, N'vivo-y53s-xanh-600x600.jpg', 39);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (48, N'vivo-v21-5g-xanh-den-600x600.jpg', 41);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (49, N'vivov202021den-600x600.jpg', 42);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (50, N'vivo-v20-600-xanh-hong-2-600x600.jpg', 44);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (51, N'vsmart-star-5-thumb-black-600x600.jpg', 45);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (52, N'vsmart-aris-pro-green-600jpg-600x600.jpg', 46);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (53, N'vsmart-aris-xam-600x600-600x600.jpg', 47);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (54, N'vsmart-live-4-xanh-la-600x600.jpg', 48);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (55, N'vsmart-joy-4-6gb-trang-600x600-600x600.jpg', 50);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (57, N'xiaomi-mi-11-lite-4g-blue-600x600.jpg', 52);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (59, N'xiaomi-redmi-note-10-5g-xanh-bong-dem.jpg', 54);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (60, N'xiaomi-mi-11-xanhduong.jpg', 55);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (61, N'xiaomi-mi-10t-pro-den-600x600.jpg', 56);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (62, N'xiaomi-redmi-note-10-pro-thumb-xam.jpg', 57);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (63, N'Apple Watch S3 GPS.jpg', 63);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (64, N'Apple Watch S5 LTE 44mm viền thép dây thép bạc.jpg', 64);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (65, N'Apple Watch S6 40mm viền nhôm dây cao su hồng.jpg', 65);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (66, N'Apple Watch S6 LTE.jpg', 66);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (67, N'Apple Watch SE LTE.jpg', 67);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (68, N'Apple Watch SE', 68);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (69, N'BeU Active 1.jpg', 69);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (70, N'BeU PT1.jpg', 70);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (71, N'BeU PT2.jpg', 72);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (72, N'BeU Sporty 1.jpg', 73);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (73, N'BeU Watch KW09.jpg', 74);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (74, N'Đồng hồ thông minh BeU B2.jpg', 75);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (75, N'Garmin Enduro.jpg', 76);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (76, N'Garmin Fenix 6 Pro Solar.jpg', 77);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (77, N'Garmin Fenix 6.jpg', 78);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (78, N'Garmin Fenix 6X Sapphire.jpg', 79);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (79, N'Garmin Forerunner 945.jpg', 80);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (80, N'Garmin Lily.jpg', 81);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (81, N'Kidcare 06S.jpg', 82);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (82, N'Kidcare 08S.jpg', 83);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (83, N'Kidcare 26.jpg', 84);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (84, N'Kidcare S6 Xanh.jpg', 85);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (85, N'Kidcare S6.jpg', 86);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (86, N'Kidcare S8.jpg', 87);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (87, N'Oppo Band.jpg', 88);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (88, N'Oppo Watch 41mm dây silicone đen.jpg', 89);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (89, N'Oppo Watch 41mm dây silicone.jpg', 90);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (90, N'Oppo Watch 41mm.jpg', 91);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (91, N'Oppo Watch 46mm dây silicone đen.jpg', 92);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (92, N'Oppo Watch 46mm.jpg', 93);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (93, N'Samsung Galaxy Watch 3 45mm titanium.jpg', 95);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (95, N'Samsung Galaxy Watch 3 LTE.jpg', 97);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (96, N'Samsung Galaxy Watch 3.jpg', 98);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (100, N'Samsung Galaxy Watch 4 LTE.jpg', 99);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (101, N'Samsung Galaxy Watch 4.jpg', 100);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (102, N'Samsung Galaxy Watch Active 2.jpg', 101);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (103, N'20.490.000.jpg', 102);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (104, N'11.690.000.jpg', 103);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (105, N'20.690.000.jpg', 104);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (106, N'18.990.000.jpg', 105);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (107, N'28.990.000.jpg', 106);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (108, N'Asus TUF Gaming FX506LH i5.jpg', 108);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (109, N'Asus VivoBook A515EA i3.jpg', 109);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (110, N'39.490.000Đ.jpg', 110);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (111, N'32.490.000Đ.jpg', 111);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (112, N'20.390.000Đ.jpg', 112);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (113, N'31.290.000.jpg', 113);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (114, N'27.290.000.jpg', 114);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (115, N'41.490.000.jpg', 115);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (116, N'30.590.000.jpg', 116);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (117, N'29.990.000.jpg', 117);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (118, N'18.590.000Đ.jpg', 118);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (119, N'17.590.000Đ.jpg', 119);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (120, N'51.740.000Đ.jpg', 120);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (121, N'49.090.000.jpg', 121);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (122, N'28.890.000.jpg', 122);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (123, N'18.090.000.jpg', 123);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (124, N'17.590.000.jpg', 124);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (125, N'20.590.000.jpg', 125);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (126, N'24.990.000.jpg', 129);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (127, N'47.990.000.jpg', 130);
 
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (128, N'50.890.000.jpg', 133);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (129, N'48.890.000.jpg', 1007);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (130, N'48.890.000.jpg', 1008);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (131, N'28.990.000.jpg', 1009);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (132, N'MacBook Pro M1 2020.jpg', 1010);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (133, N'MacBook Air M1 2020.jpg', 1011);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (135, N'MacBook Air M1 2020 8GB512GBSilver.jpg', 1013);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (136, N'MacBook Pro M1 2020 8GB512GBSilver.jpg', 1014);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (137, N'MacBook Pro M1 2020 16GB1TB SSDSpace Grey.jpg', 1015);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (138, N'31.990.000.jpg', 1016);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (139, N'29.490.000.jpg', 1017);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (140, N'52.490.00.jpg', 1018);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (141, N'39.490.000.jpg', 1019);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (142, N'32.490.000.jpg', 1020);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (143, N'28.590.000.jpg', 1021);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (144, N'24.490.000.jpg', 1022);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (145, N'huawei-t10s-600x600-600x600.jpg', 1023);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (146, N'huawei-matepad-xanh-600x600-600x600.jpg', 1024);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (147, N'huawei-matepad-xam-128gb-600x600.jpg', 1025);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (149, N'huawei-matepad-t8-xanh-600x600.jpg', 1026);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (150, N'ipad-pro-2021-129-inch-silver-600x600.jpg', 1027);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (151, N'ipad-pro-2021-11-inch-silver-600x600.jpg', 1028);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (152, N'ipad-pro-12-9-inch-wifi-128gb-2020-xam.jpg', 1029);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (153, N'ipad-pro-11-inch-wifi-cellular-128gb-2020-xam.jpg', 1030);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (155, N'ipad-air-4-wifi-64gb-2020-xanhla.jpg', 1031);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (157, N'ipad-mini-79-inch-wifi-cellular-64gb-2019.jpg', 1032);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (160, N'ipad-gen-8-cellular-vang-new.jpg', 1034);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (161, N'tab-m10-fhd-plus-600-600x600.jpg', 1035);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (162, N'tab-m10-gen-2-600x600-600x600.jpg', 1036);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (163, N'lenovo-tab-a22-xam-600x600.jpg', 1037);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (164, N'lenovo-tab-m7-600x600-1-600x600.jpg', 1038);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (165, N'lenovo-tab-e7-tb-7104i-600x600-600x600.jpg', 1039);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (166, N'masstel-tab-10-ultra-vangdong-600x600-600x600.jpg', 1040);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (167, N'masstel-tab-10-den-600x600-600x600.jpg', 1041);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (168, N'masstel-tab10-pro-vang-new-600x600.jpg', 1042);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (169, N'samsung-galaxy-tab-s7-fe-green-600x600.jpg', 1043);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (170, N'samsung-galaxy-tab-a7-lite-sliver-600x600.jpg', 1044);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (171, N'samsung-galaxy-tab-s7- ld-new-600x600.jpg', 1045);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (173, N'samsung-galaxy-tab-a8-t295-2019-black-1.jpg', 1046);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (174, N'samsung-galaxy-tab-s6-lite-600x600-2-600x600.jpg', 1047);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (175, N'AirPods Pro Wireless Charge Apple MWP22(3).jpg', 1091);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (176, N'AirPods Pro Wireless Charge Apple MWP22(4).jpg', 1091);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (177, N'AirPods Pro Wireless Charge Apple MWP22.jpg', 1091);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (178, N'Beats Flex MYMC2 MYMD2(3).jpg', 1092);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (179, N'Beats Flex MYMC2 MYMD2(4).jpg', 1092);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (180, N'Beats Flex MYMC2 MYMD2(5).jpg', 1092);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (181, N'Beats Flex MYMC2 MYMD2.jpg', 1092);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (182, N'True wireless Belkin Soundform Move PAC001(3).jpg', 1094);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (183, N'True wireless Belkin Soundform Move PAC001(4).jpg', 1094);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (184, N'True wireless Belkin Soundform Move PAC001(5).jpg', 1094);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (185, N'True wireless Belkin Soundform Move PAC001(6).jpg', 1094);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (186, N'True wireless Belkin Soundform Move PAC001.jpg', 1094);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (187, N'True Wireless Mozard TS13(3).jpg', 1095);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (188, N'True Wireless Mozard TS13(4).jpg', 1095);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (189, N'True Wireless Mozard TS13.jpg', 1095);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (190, N'True Wireless Rezo T206(3).jpg', 1096);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (191, N'True Wireless Rezo T206(4).jpg', 1096);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (192, N'True Wireless Rezo T206(5).jpg', 1096);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (193, N'True Wireless Rezo T206(6).jpg', 1096);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (194, N'True Wireless Rezo T206.jpg', 1096);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (195, N'Bluetooth Cosano HD-P7(3).jpg', 1099);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (196, N'Bluetooth Cosano HD-P7(4).jpg', 1099);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (197, N'Bluetooth Cosano HD-P7(5).jpg', 1099);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (198, N'Bluetooth Cosano HD-P7(6).jpg', 1099);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (199, N'Bluetooth Cosano HD-P7.jpg', 1099);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (200, N'Bluetooth Tripod Xmobile K06(3).jpg', 1100);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (201, N'Bluetooth Tripod Xmobile K06(4).jpg', 1100);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (202, N'Bluetooth Tripod Xmobile K06(5).jpg', 1100);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (203, N'Bluetooth Tripod Xmobile K06(6).jpg', 1100);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (204, N'Bluetooth Tripod Xmobile K06.jpg', 1100);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (205, N'Mini Cosano CW1(3).jpg', 1101);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (206, N'Mini Cosano CW1(4).jpg', 1101);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (207, N'Mini Cosano CW1.jpg', 1101);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (208, N'Osmia OW2(3).jpg', 1102);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (209, N'Osmia OW2(4).jpg', 1102);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (210, N'Osmia OW2.jpg', 1102);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (211, N'Osmia OW4(3).jpg', 1103);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (212, N'Osmia OW4(4).jpg', 1103);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (213, N'Osmia OW4(5).jpg', 1103);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (214, N'Osmia OW4(6).jpg', 1103);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (215, N'Osmia OW4.jpg', 1103);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (216, N'Cosano PH-Z1(3).jpg', 1105);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (217, N'Cosano PH-Z1(4).jpg', 1105);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (218, N'Cosano PH-Z1(5).jpg', 1105);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (219, N'Cosano PH-Z1.jpg', 1105);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (220, N'Esaver JHD -278(3).jpg', 1106);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (221, N'Esaver JHD -278(4).jpg', 1106);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (222, N'Esaver JHD -278(5).jpg', 1106);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (224, N'Esaver JHD -278.jpg', 1106);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (225, N'Esaver JHD-40HD12(3).jpg', 1107);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (226, N'Esaver JHD-40HD12(4).jpg', 1107);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (227, N'Esaver JHD-40HD12(5).jpg', 1107);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (228, N'Esaver JHD-40HD12(6).jpg', 1107);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (229, N'Esaver JHD-40HD12.jpg', 1107);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (230, N'Esaver JHD-171(3).jpg', 1108);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (231, N'Esaver JHD-171(4).jpg', 1108);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (232, N'Esaver JHD-171(5).jpg', 1108);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (233, N'Esaver JHD-171.jpg', 1108);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (234, N'Harman Kardon Aura Studio 3(3).jpg', 1109);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (235, N'Harman Kardon Aura Studio 3.jpg', 1109);
 
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (236, N'Loa JBL Clip 4(3).jpg', 1110);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (237, N'Loa JBL Clip 4(4).jpg', 1110);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (238, N'Loa JBL Clip 4.jpg', 1110);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (239, N'Loa JBL   3(3).jpg', 1112);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (240, N'Loa JBL   3.jpg', 1112);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (241, N'Loa JBL Gred(4).jpg', 1112);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (242, N'Sony SRS-XB13(2).jpg', 1113);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (243, N'Sony SRS-XB13(3).jpg', 1113);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (244, N'Sony SRS-XB13(4).jpg', 1113);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (245, N'Sony SRS-XB13(5).jpg', 1113);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (246, N'Sony SRS-XB13.jpg', 1113);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (247, N'Anker PowerCore Slim A1231(3).jpg', 1114);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (248, N'Anker PowerCore Slim A1231.jpg', 1114);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (249, N'AVA+ PB100S(3).jpg', 1115);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (250, N'AVA+ PB100S.jpg', 1115);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (251, N'Belkin Pocket Power BPB001(2).jpg', 1116);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (252, N'Belkin Pocket Power BPB001(3).jpg', 1116);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (253, N'Belkin Pocket Power BPB001(4).jpg', 1116);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (254, N'Belkin Pocket Power BPB001(5).jpg', 1116);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (255, N'Energizer UE10054BK(3).jpg', 1117);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (256, N'Energizer UE10054BK(4).jpg', 1117);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (257, N'Energizer UE10054BK(5).jpg', 1117);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (258, N'Energizer UE10054BK.jpg', 1117);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (259, N'eValu PA Croco(3).jpg', 1118);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (260, N'eValu PA Croco(4).jpg', 1118);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (261, N'eValu PA Croco.jpg', 1118);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (262, N'Xmobile PowerSlim PJ JP213(3).jpg', 1119);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (263, N'Xmobile PowerSlim PJ JP213(4).jpg', 1119);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (264, N'Xmobile PowerSlim PJ JP213(5).jpg', 1119);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (265, N'Xmobile PowerSlim PJ JP213.jpg', 1119);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (266, N'iphone 12 xanh dương(2).jpg', 9);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (267, N'iphone 12 xanh dương(3).jpg', 9);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (268, N'iphone 12 xanh dương(4).jpg', 9);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (269, N'iphone 12 xanh dương(5).jpg', 9);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (270, N'iPhone 12 Pro xanh dương(2).jpg', 10);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (271, N'iPhone 12 Pro xanh dương(3).jpg', 10);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (272, N'iPhone 12 Pro xanh dương(4).jpg', 10);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (273, N'iPhone 12 Pro xanh dương(5).jpg', 10);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (274, N'iPhone 12 Pro bạc(2).jpg', 12);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (275, N'iPhone 12 Pro bạc(3).jpg', 12);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (276, N'iPhone 12 Pro bạc(4).jpg', 12);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (277, N'iPhone 12 Pro bạc(5).jpg', 12);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (278, N'iphone-12-mini-den-2-org.jpg', 13);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (279, N'iphone-12-mini-den-3-org(2).jpg', 13);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (280, N'iphone-12-mini-den-5-1-org(3).jpg', 13);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (281, N'iphone-12-mini-den-7-org(4).jpg', 13);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (282, N'iphone-12-mini-den-10-org(5).jpg', 13);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (283, N'iPhone XR 64GB(2).jpg', 16);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (284, N'iPhone XR 64GB(3).jpg', 16);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (285, N'iPhone XR 64GB(4).jpg', 16);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (286, N'iPhone XR 64GB(5).jpg', 16);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (287, N'iPhone SE 128GB(2).jpg', 17);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (288, N'iPhone SE 128GB(3).jpg', 17);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (289, N'iPhone SE 128GB(4).jpg', 17);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (290, N'iPhone SE 128GB(5).jpg', 17);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (291, N'iPhone SE 256GB(2).jpg', 19);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (292, N'iPhone SE 256GB(3).jpg', 19);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (293, N'iPhone SE 256GB(4).jpg', 19);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (294, N'iPhone SE 256GB(5).jpg', 19);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (295, N'iPhone 11 64GB(2).jpg', 20);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (296, N'iPhone 11 64GB(3).jpg', 20);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (297, N'iPhone 11 64GB(4).jpg', 20);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (298, N'iPhone 11 64GB(5).jpg', 20);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (299, N'OPPO Reno6 Z 5G(2).jpg', 58);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (300, N'OPPO Reno6 Z 5G(3).jpg', 58);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (301, N'OPPO Reno6 Z 5G(4).jpg', 58);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (302, N'OPPO Reno6 Z 5G(5).jpg', 58);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (303, N'OPPO Reno6 5G(2).jpg', 59);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (304, N'OPPO Reno6 5G(3).jpg', 59);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (305, N'OPPO Reno6 5G(4).jpg', 59);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (306, N'OPPO Reno6 5G(5).jpg', 59);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (307, N'OPPO A74(2).jpg', 60);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (308, N'OPPO A74(3).jpg', 60);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (309, N'OPPO A74(4).jpg', 60);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (310, N'OPPO A74(5).jpg', 60);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (311, N'OPPO Find X3 Pro 5G(2).jpg', 61);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (312, N'OPPO Find X3 Pro 5G(3).jpg', 61);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (313, N'OPPO Find X3 Pro 5G(4).jpg', 61);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (314, N'OPPO Find X3 Pro 5G(5).jpg', 61);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (315, N'OPPO Reno5 5G(2).jpg', 62);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (316, N'OPPO Reno5 5G(3).jpg', 62);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (317, N'OPPO Reno5 5G(4).jpg', 62);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (318, N'OPPO Reno5 5G(5).jpg', 62);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (319, N'Realme C21Y(2).jpg', 28);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (320, N'Realme C21Y(3).jpg', 28);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (321, N'Realme C25s(2).jpg', 31);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (322, N'Realme C25s(3).jpg', 31);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (323, N'Realme 8 Pro Vàng(2).jpg', 34);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (324, N'Realme 8 Pro Vàng(3).jpg', 34);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (325, N'Realme 8 Pro(2).jpg', 35);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (327, N'Realme 8 Pro(3).jpg', 35);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (329, N'Realme 8 Pro(4).jpg', 35);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (330, N'Realme 8 Pro(5).jpg', 35);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (331, N'Realme 7 Pro(2).jpg', 37);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (332, N'Realme 7 Pro(3).jpg', 37);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (333, N'Realme 7 Pro(4).jpg', 37);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (334, N'Realme 7 Pro(5).jpg', 37);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (335, N'Samsung Galaxy Z Fold3 bạc(2).jpg', 23);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (336, N'Samsung Galaxy Z Fold3 bạc(3).jpg', 23);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (337, N'Samsung Galaxy Z Fold3 bạc(4).jpg', 23);
 
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (338, N'Samsung Galaxy Z Fold3 bạc(5).jpg', 23);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (339, N'Samsung Galaxy A52(2).jpg', 24);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (340, N'Samsung Galaxy A52(3).jpg', 24);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (341, N'Samsung Galaxy A52(4).jpg', 24);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (342, N'Samsung Galaxy A52(5).jpg', 24);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (343, N'Samsung Galaxy Z Fold2(2).jpg', 26);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (344, N'Samsung Galaxy Z Fold2(3).jpg', 26);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (345, N'Samsung Galaxy Z Fold2(4).jpg', 26);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (346, N'Samsung Galaxy Z Fold2(5).jpg', 26);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (347, N'Samsung Galaxy Z Fold2(6).jpg', 26);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (348, N'Samsung Galaxy Z Fold3 xanh(2).jpg', 25);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (349, N'Samsung Galaxy Z Fold3 xanh(3).jpg', 25);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (350, N'Samsung Galaxy Z Fold3 xanh(4).jpg', 25);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (351, N'Samsung Galaxy Z Fold3 xanh(5).jpg', 25);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (352, N'Vivo Y12s(2).jpg', 38);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (353, N'Vivo Y12s(3).jpg', 38);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (354, N'Vivo Y12s(4).jpg', 38);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (355, N'Vivo Y12s(5).jpg', 38);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (356, N'Vivo Y53s(2).jpg', 39);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (357, N'Vivo Y53s(3).jpg', 39);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (358, N'Vivo Y53s(4).jpg', 39);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (359, N'Vivo Y53s(5).jpg', 39);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (360, N'Vivo V21(2).jpg', 41);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (361, N'Vivo V21(3).jpg', 41);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (362, N'Vivo V21(4).jpg', 41);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (363, N'Vivo V21(5).jpg', 41);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (364, N'Vivo V20 đen(2).jpg', 42);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (365, N'Vivo V20 đen(3).jpg', 42);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (366, N'Vivo V20 đen(4).jpg', 42);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (367, N'Vivo V20 đen(5).jpg', 42);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (368, N'Vivo V20(2).jpg', 44);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (369, N'Vivo V20(3).jpg', 44);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (370, N'Vivo V20(3).jpg', 44);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (371, N'Vivo V20(4).jpg', 44);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (372, N'Vivo V20(5).jpg', 44);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (373, N'Harman Kardon Aura Studio 3(3).jpg', 1120);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (374, N'Harman Kardon Aura Studio 3.jpg', 1120);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (375, N'Loa JBL Clip 4(3).jpg', 1122);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (376, N'Loa JBL Clip 4(4).jpg', 1122);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (377, N'Loa JBL Clip 4.jpg', 1122);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (378, N'Loa JBL   3(3).jpg', 1123);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (379, N'Loa JBL   3.jpg', 1123);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (380, N'Loa JBL Gred(4).jpg', 1123);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (381, N'Sony SRS-XB13(3).jpg', 1124);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (382, N'Sony SRS-XB13(4).jpg', 1124);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (383, N'Sony SRS-XB13(5).jpg', 1124);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (384, N'Sony SRS-XB13.jpg', 1124);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (385, N'Anker PowerCore Slim A1231(3).jpg', 1125);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (386, N'Anker PowerCore Slim A1231.jpg', 1125);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (387, N'AVA+ PB100S(3).jpg', 1126);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (388, N'AVA+ PB100S.jpg', 1126);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (389, N'Belkin Pocket Power BPB001(2).jpg', 1127);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (390, N'Belkin Pocket Power BPB001(3).jpg', 1127);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (391, N'Belkin Pocket Power BPB001(4).jpg', 1127);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (392, N'Belkin Pocket Power BPB001(5).jpg', 1127);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (393, N'Energizer UE10054BK(3).jpg', 1128);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (394, N'Energizer UE10054BK(4).jpg', 1128);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (395, N'Energizer UE10054BK(5).jpg', 1128);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (396, N'Energizer UE10054BK.jpg', 1128);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (397, N'eValu PA Croco(3).jpg', 1129);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (398, N'eValu PA Croco(4).jpg', 1129);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (399, N'eValu PA Croco.jpg', 1129);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (400, N'Xmobile PowerSlim PJ JP213(2).jpg', 1130);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (401, N'Xmobile PowerSlim PJ JP213(3).jpg', 1130);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (402, N'Xmobile PowerSlim PJ JP213(4).jpg', 1130);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (403, N'Xmobile PowerSlim PJ JP213(5).jpg', 1130);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (404, N'AirPods Pro Wireless Charge Apple MWP22(3).jpg', 1133);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (405, N'AirPods Pro Wireless Charge Apple MWP22(4).jpg', 1133);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (406, N'AirPods Pro Wireless Charge Apple MWP22.jpg', 1133);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (407, N'Beats Flex MYMC2 MYMD2(3).jpg', 1134);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (408, N'Beats Flex MYMC2 MYMD2(4).jpg', 1134);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (409, N'Beats Flex MYMC2 MYMD2(5).jpg', 1134);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (410, N'Beats Flex MYMC2 MYMD2.jpg', 1134);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (411, N'True wireless Belkin Soundform Move PAC001(3).jpg', 1135);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (412, N'True wireless Belkin Soundform Move PAC001(4).jpg', 1135);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (413, N'True wireless Belkin Soundform Move PAC001(5).jpg', 1135);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (414, N'True wireless Belkin Soundform Move PAC001(6).jpg', 1135);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (415, N'True wireless Belkin Soundform Move PAC001.jpg', 1135);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (416, N'True Wireless Mozard TS13(3).jpg', 1136);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (417, N'True Wireless Mozard TS13(4).jpg', 1136);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (418, N'True Wireless Mozard TS13.jpg', 1136);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (419, N'True Wireless Rezo T206(3).jpg', 1137);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (420, N'True Wireless Rezo T206(4).jpg', 1137);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (421, N'True Wireless Rezo T206(5).jpg', 1137);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (422, N'True Wireless Rezo T206(6).jpg', 1137);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (423, N'True Wireless Rezo T206.jpg', 1137);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (424, N'Vsmart Star 5(2).jpg', 45);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (425, N'Vsmart Star 5(3).jpg', 45);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (426, N'Vsmart Star 5(4).jpg', 45);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (427, N'Vsmart Star 5(5).jpg', 45);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (428, N'Vsmart Aris Pro(2).jpg', 46);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (429, N'Vsmart Aris Pro(3).jpg', 46);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (430, N'Vsmart Aris Pro(4).jpg', 46);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (431, N'Vsmart Aris Pro(5).jpg', 46);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (432, N'Vsmart Aris(2).jpg', 47);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (433, N'Vsmart Aris(3).jpg', 47);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (434, N'Vsmart Aris(4).jpg', 47);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (435, N'Vsmart Aris(5).jpg', 47);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (436, N'Vsmart Live 4(2).jpg', 48);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (437, N'Vsmart Live 4(3).jpg', 48);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (438, N'Vsmart Live 4(4).jpg', 48);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (439, N'Vsmart Live 4(5).jpg', 48);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (440, N'Vsmart Joy 4(2).jpg', 50);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (441, N'Vsmart Joy 4(3).jpg', 50);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (442, N'Vsmart Joy 4(4).jpg', 50);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (443, N'Vsmart Joy 4(5).jpg', 50);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (444, N'Xiaomi Mi 11 Lite(2).jpg', 52);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (445, N'Xiaomi Mi 11 Lite(3).jpg', 52);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (446, N'Xiaomi Mi 11 Lite(4).jpg', 52);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (447, N'Xiaomi Mi 11 Lite(5).jpg', 52);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (448, N'Xiaomi Redmi Note 10(2).jpg', 54);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (449, N'Xiaomi Redmi Note 10(3).jpg', 54);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (450, N'Xiaomi Redmi Note 10(4).jpg', 54);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (451, N'Xiaomi Redmi Note 10(5).jpg', 54);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (452, N'Xiaomi Mi 11 Lite(2).jpg', 55);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (453, N'Xiaomi Mi 11 Lite(3).jpg', 55);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (454, N'Xiaomi Mi 11 Lite(4).jpg', 55);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (455, N'Xiaomi Mi 11 Lite(5).jpg', 55);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (456, N'Xiaomi Mi 10T Pro(2).jpg', 56);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (457, N'Xiaomi Mi 10T Pro(3).jpg', 56);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (458, N'Xiaomi Mi 10T Pro(4).jpg', 56);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (459, N'Xiaomi Mi 10T Pro(5).jpg', 56);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (460, N'Xiaomi Redmi Note 10 Pro(2).jpg', 57);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (461, N'Xiaomi Redmi Note 10 Pro(3).jpg', 57);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (462, N'Xiaomi Redmi Note 10 Pro(4).jpg', 57);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (463, N'Xiaomi Redmi Note 10 Pro(5).jpg', 57);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (464, N'Apple Watch S3 GPS2.jpg', 63);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (465, N'Apple Watch S3 GPS3.jpg', 63);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (466, N'Apple Watch S3 GPS4.jpg', 63);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (467, N'Apple Watch S3 GPS5.jpg', 63);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (468, N'Apple Watch S5 LTE 44mm viền thép dây thép bạc.jpg', 64);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (470, N'Apple Watch S5 LTE 44mm viền  thép bạc2.jpg', 64);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (471, N'Apple Watch S5 LTE 44mm viền  thép bạc3.jpg', 64);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (472, N'Apple Watch S6 LTE2.jpg', 65);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (473, N'Apple Watch S6 LTE3.jpg', 65);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (474, N'Apple Watch SE2.jpeg', 66);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (475, N'Apple Watch SE3.jpg', 66);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (476, N'Apple Watch SE LTE2.jpg', 67);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (477, N'Apple Watch SE LTE3.jpg', 67);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (478, N'Apple Watch SE2.jpeg', 68);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (479, N'Apple Watch SE3.jpg', 68);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (480, N'BeU Active 1(2).jpg', 69);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (481, N'BeU Active 1(3).jpg', 69);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (482, N'BeU Active 1(4).jpg', 69);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (483, N'BeU Active 1(5).jpg', 69);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (484, N'BeU Active 1(6).jpg', 69);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (485, N'BeU PT1(2).jpg', 70);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (486, N'BeU PT1(3).jpg', 70);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (487, N'BeU PT1(4).jpg', 70);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (488, N'BeU PT2(2).jpg', 72);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (489, N'BeU PT2(3).jpg', 72);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (490, N'BeU PT2(4).jpg', 72);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (491, N'BeU Sporty 1(2).jpg', 73);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (492, N'BeU Sporty 1(3).jpg', 73);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (493, N'BeU Sporty 1(4).jpg', 73);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (494, N'BeU Sporty 1(5).jpg', 73);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (495, N'BeU Watch KW09(2).jpg', 74);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (496, N'BeU Watch KW09(3).jpg', 74);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (497, N'BeU B2(2).jpg', 75);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (498, N'BeU B2(3).jpg', 75);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (499, N'BeU B2(4).jpg', 75);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (500, N'Garmin Enduro2.jpg', 76);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (501, N'Garmin Enduro3.jpg', 76);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (502, N'Garmin Enduro4.jpg', 76);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (503, N'Garmin Enduro5.jpg', 76);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (504, N'Garmin Enduro6.jpg', 76);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (505, N'Garmin Fenix 6 Pro Solar2.jpg', 77);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (506, N'Garmin Fenix 6 Pro Solar3.jpg', 77);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (507, N'Garmin Fenix 6 Pro Solar4.jpg', 77);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (508, N'Garmin Fenix 6 Pro Solar5.jpg', 77);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (509, N'Garmin Fenix 6 Pro Solar6.jpg', 77);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (510, N'Garmin Fenix 6(2).jpg', 78);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (511, N'Garmin Fenix 6(3).jpg', 78);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (512, N'Garmin Fenix 6(4).jpg', 78);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (513, N'Garmin Fenix 6(5).jpg', 78);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (514, N'Garmin Fenix 6(6).jpg', 78);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (515, N'Garmin Fenix 6X Sapphire2.jpg', 79);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (516, N'Garmin Fenix 6X Sapphire3.jpg', 79);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (517, N'Garmin Fenix 6X Sapphire4.jpg', 79);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (518, N'Garmin Fenix 6X Sapphire5.jpg', 79);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (519, N'Garmin Fenix 6X Sapphire6.jpg', 79);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (520, N'Garmin Forerunner 945(2).jpg', 80);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (521, N'Garmin Forerunner 945(3).jpg', 80);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (522, N'Garmin Forerunner 945(4).jpg', 80);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (523, N'Garmin Forerunner 945(5).jpg', 80);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (524, N'Garmin Forerunner 945(6).jpg', 80);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (525, N'Garmin Lily2.jpg', 81);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (526, N'Garmin Lily3.jpg', 81);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (527, N'Garmin Lily5.jpg', 81);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (528, N'Kidcare 06S(2).jpg', 82);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (529, N'Kidcare 06S(3).jpg', 82);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (530, N'Kidcare 06S(4).jpg', 82);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (531, N'Kidcare 06S(5).jpg', 82);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (532, N'Kidcare 06S(6).jpg', 82);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (533, N'Kidcare 08S(2).jpg', 83);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (534, N'Kidcare 08S(3).jpg', 83);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (535, N'Kidcare 08S(4).jpg', 83);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (536, N'Kidcare 08S(5).jpg', 83);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (537, N'Kidcare 08S(6).jpg', 83);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (538, N'Kidcare 26(2).jpg', 84);
 
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (539, N'Kidcare 26(3).jpg', 84);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (540, N'Kidcare 26(4).jpg', 84);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (541, N'Kidcare 26(5).jpg', 84);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (542, N'Kidcare 26(6).jpg', 84);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (543, N'Kidcare S6 Xanh2.jpg', 85);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (544, N'Kidcare S6 Xanh3.jpg', 85);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (545, N'Kidcare S6 Xanh4.jpg', 85);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (546, N'Kidcare S6 Xanh5.jpg', 85);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (547, N'Kidcare S6 Xanh6.jpg', 85);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (548, N'Kidcare S6(2).jpg', 86);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (549, N'Kidcare S6(3).jpg', 86);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (551, N'Kidcare S6(4).jpg', 86);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (552, N'Kidcare S6(5).jpg', 86);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (553, N'Kidcare S6(6).jpg', 86);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (554, N'Kidcare S8(2).jpg', 87);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (555, N'Kidcare S8(3).jpg', 87);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (556, N'Kidcare S8(4).jpg', 87);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (557, N'Kidcare S8(5).jpg', 87);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (558, N'Kidcare S8(6).jpg', 87);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (559, N'Oppo Band2.jpg', 88);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (560, N'Oppo Band3.jpg', 88);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (561, N'Oppo Band4.jpg', 88);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (562, N'Oppo Watch 41mm dây silicone đen2.jpg', 89);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (563, N'Oppo Watch 41mm dây silicone đen3.jpg', 89);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (564, N'Oppo Watch 41mm dây silicone đen4.jpg', 89);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (565, N'Oppo Watch 41mm dây silicone đen5.jpg', 89);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (566, N'Oppo Watch 41mm dây silicone đen6.jpg', 89);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (567, N'Oppo Watch 41mm dây silicone2.png', 90);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (568, N'Oppo Watch 41mm dây silicone3.png', 90);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (569, N'Oppo Watch 41mm dây silicone4.png', 90);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (570, N'Oppo Watch 41mm(2).jpg', 91);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (571, N'Oppo Watch 41mm(3).jpg', 91);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (572, N'Oppo Watch 41mm(4).jpg', 91);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (573, N'Oppo Watch 41mm(5).jpg', 91);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (574, N'Oppo Watch 41mm(6).jpg', 91);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (575, N'Oppo Watch 46mm dây silicone đen2.jpg', 92);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (576, N'Oppo Watch 46mm dây silicone đen3.jpg', 92);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (577, N'Oppo Watch 46mm dây silicone đen4.jpg', 92);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (578, N'Oppo Watch 46mm dây silicone đen5.jpg', 92);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (579, N'Oppo Watch 46mm dây silicone đen6.jpg', 92);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (580, N'Oppo Watch 46mm(2).jpg', 93);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (581, N'Oppo Watch 46mm(3).jpg', 93);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (582, N'Oppo Watch 46mm(4).jpg', 93);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (583, N'Oppo Watch 46mm(5).jpg', 93);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (584, N'Oppo Watch 46mm(6).jpg', 93);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (585, N'Oppo Watch 46mm.jpg', 93);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (586, N'a2.jpg', 1141);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (587, N'a3.jpg', 1141);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (588, N'a4.jpg', 1141);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (589, N'a5.jpg', 1141);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (590, N'a6.jpg', 1141);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (591, N'a8.jpg', 1142);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (592, N'a9.jpg', 1142);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (593, N'a10.jpg', 1142);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (594, N'a11.jpg', 1142);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (595, N'a12.jpg', 1142);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (596, N'a14.jpg', 1143);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (597, N'a15.jpg', 1143);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (598, N'a16.jpg', 1143);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (599, N'a17.jpg', 1143);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (600, N'a18.jpg', 1143);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (601, N'a20.jpg', 1144);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (602, N'a21.jpg', 1144);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (603, N'a22.jpg', 1144);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (604, N'a23.jpg', 1144);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (605, N'a24.jpg', 1144);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (606, N'a25.jpg', 1144);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (608, N'a27.jpg', 1146);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (609, N'a28.jpg', 1146);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (610, N'a29.jpg', 1146);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (611, N'a30.jpg', 1146);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (612, N'a31.jpg', 1146);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (613, N'b2.jpg', 1147);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (614, N'b3.jpg', 1147);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (615, N'b4.jpg', 1147);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (616, N'b5.jpg', 1147);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (617, N'b7.jpg', 1148);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (618, N'b8.jpg', 1148);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (619, N'b9.jpg', 1148);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (620, N'b10.jpg', 1148);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (621, N'b12.jpg', 1149);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (622, N'b13.jpg', 1149);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (623, N'b14.jpg', 1149);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (624, N'b15.jpg', 1149);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (625, N'b17.jpg', 1150);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (626, N'b18.jpg', 1150);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (627, N'b19.jpg', 1150);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (628, N'b21.jpg', 1151);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (629, N'b22.jpg', 1151);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (630, N'b23.jpg', 1151);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (631, N'b24.jpg', 1151);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (632, N'b25.jpg', 1151);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (633, N'c2.jpg', 1152);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (634, N'c3.jpg', 1152);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (635, N'c4.jpg', 1152);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (636, N'c5.jpg', 1152);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (637, N'c6.jpg', 1152);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (638, N'c8.jpg', 1157);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (639, N'c9.jpg', 1157);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (640, N'c10.jpg', 1157);
 
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (641, N'c12.jpg', 1158);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (642, N'c13.jpg', 1158);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (643, N'c14.jpg', 1158);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (644, N'c15.jpg', 1158);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (645, N'c16.jpg', 1158);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (646, N'c18.jpg', 1159);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (647, N'c19.jpg', 1159);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (648, N'c20.jpg', 1159);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (649, N'c21.jpg', 1159);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (650, N'c22.jpg', 1159);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (651, N'c24.jpg', 1160);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (652, N'c25.jpg', 1160);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (653, N'c26.jpg', 1160);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (654, N'c27.jpg', 1160);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (655, N'c28.jpg', 1160);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (656, N'c29.jpg', 1160);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (657, N'c30.jpg', 1160);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (658, N'd2.jpg', 1163);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (659, N'd3.jpg', 1163);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (660, N'd4.jpg', 1163);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (661, N'd5.jpg', 1163);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (662, N'd6.jpg', 1163);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (663, N'd8.jpg', 1164);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (664, N'd9.jpg', 1164);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (665, N'd10.jpg', 1164);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (666, N'd11.jpg', 1164);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (667, N'd12.jpg', 1164);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (668, N'd14.jpg', 1165);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (669, N'd15.jpg', 1165);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (670, N'd16.jpg', 1165);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (671, N'd17.jpg', 1165);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (672, N'd18.jpg', 1165);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (673, N'd19.jpg', 1165);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (674, N'd21.jpg', 1169);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (675, N'd22.jpg', 1169);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (676, N'd23.jpg', 1169);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (677, N'd24.jpg', 1169);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (678, N'd25.jpg', 1169);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (679, N'd27.jpg', 1170);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (680, N'd28.jpg', 1170);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (681, N'd29.jpg', 1170);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (682, N'd30.jpg', 1170);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (683, N'd31.jpg', 1170);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (684, N'e2.jpg', 1171);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (686, N'e3.jpg', 1171);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (687, N'e4.jpg', 1171);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (688, N'e5.jpg', 1171);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (689, N'e6.jpg', 1171);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (690, N'e8.jpg', 1172);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (691, N'e9.jpg', 1172);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (692, N'e10.jpg', 1172);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (693, N'e12.jpg', 1173);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (694, N'e13.jpg', 1173);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (695, N'e14.jpg', 1173);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (696, N'e15.jpg', 1173);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (697, N'e17.jpg', 1175);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (699, N'e18.jpg', 1175);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (700, N'e20.jpg', 1175);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (701, N'e21.jpg', 1175);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (702, N'e23.jpg', 1176);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (703, N'e24.jpg', 1176);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (704, N'e25.jpg', 1176);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (705, N'e26.jpg', 1176);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (706, N'1.jpg', 102);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (707, N'2.jpg', 102);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (708, N'3.jpg', 102);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (710, N'4.jpg', 102);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (711, N'5.jpg', 102);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (712, N'6.jpg', 102);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (713, N'7.jpg', 102);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (714, N'8.jpg', 102);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (715, N'9.jpg', 102);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (716, N'1.1.jpg', 103);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (717, N'1.2.jpg', 103);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (718, N'1.3.jpg', 103);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (719, N'1.4.jpg', 103);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (720, N'1.5.jpg', 103);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (721, N'1.6.jpg', 103);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (722, N'1.7.jpg', 103);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (723, N'1.8.jpg', 103);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (724, N'1.9.jpg', 103);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (725, N'1.10.jpg', 103);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (726, N'1.11.jpg', 104);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (727, N'1.12.jpg', 104);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (728, N'1.13.jpg', 104);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (729, N'1.14.jpg', 104);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (730, N'1.15.jpg', 104);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (731, N'1.16.jpg', 104);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (732, N'1.17.jpg', 104);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (733, N'1.18.jpg', 104);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (734, N'1.19.jpg', 104);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (735, N'1.20.jpg', 105);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (736, N'1.21.jpg', 105);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (737, N'1.22.jpg', 105);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (738, N'1.23.jpg', 105);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (739, N'1.24.jpg', 105);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (740, N'1.25.jpg', 105);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (741, N'1.26.jpg', 105);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (742, N'1.27.jpg', 106);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (743, N'1.28.jpg', 106);
 
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (744, N'1.29.jpg', 106);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (745, N'1.30.jpg', 106);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (746, N'1.31.jpg', 106);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (747, N'1.32.jpg', 106);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (748, N'1.33.jpg', 106);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (749, N'1.34.jpg', 106);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (750, N'1.35.jpg', 106);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (751, N'2.1.jpg', 108);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (752, N'2.2.jpg', 108);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (753, N'2.3.jpg', 108);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (754, N'2.4.jpg', 108);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (755, N'2.5.jpg', 108);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (756, N'2.6.jpg', 108);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (757, N'2.7.jpg', 108);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (758, N'2.8.jpg', 108);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (759, N'2.9.jpg', 108);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (760, N'2.10.jpg', 109);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (761, N'2.11.jpg', 109);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (762, N'2.12.jpg', 109);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (763, N'2.13.jpg', 109);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (764, N'2.14.jpg', 109);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (765, N'2.15.jpg', 109);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (766, N'2.16.jpg', 109);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (767, N'2.17.jpg', 109);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (768, N'2.18.jpg', 109);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (769, N'2.19.jpg', 110);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (771, N'2.20.jpg', 110);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (772, N'2.21.jpg', 110);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (773, N'2.22.jpg', 110);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (774, N'2.23.jpg', 110);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (775, N'2.24.jpg', 110);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (776, N'2.25.jpg', 110);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (777, N'2.26.jpg', 110);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (778, N'2.27.jpg', 110);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (779, N'2.28.jpg', 111);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (780, N'2.29.jpg', 111);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (781, N'2.30.jpg', 112);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (782, N'2.31.jpg', 111);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (783, N'2.32.jpg', 111);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (784, N'2.33.jpg', 111);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (785, N'2.34.jpg', 111);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (786, N'2.35.jpg', 111);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (787, N'2.36.jpg', 111);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (788, N'2.37.jpg', 112);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (789, N'2.38.jpg', 112);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (790, N'2.39.jpg', 112);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (791, N'2.40.jpg', 112);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (792, N'2.41.jpg', 112);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (793, N'2.42.jpg', 112);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (794, N'2.43.jpg', 112);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (795, N'2.44.jpg', 112);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (796, N'2.45.jpg', 112);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (797, N'2.46.jpg', 112);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (798, N'3.1.jpg', 113);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (800, N'3.2.jpg', 113);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (801, N'3.3.jpg', 113);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (802, N'3.4.jpg', 113);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (803, N'3.5.jpg', 113);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (804, N'3.6.jpg', 113);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (806, N'3.7.jpg', 113);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (807, N'3.8.jpg', 113);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (808, N'3.9.jpg', 113);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (809, N'3.10.jpg', 114);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (810, N'3.11.jpg', 114);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (811, N'3.12.jpg', 114);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (812, N'3.13.jpg', 114);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (813, N'3.14.jpg', 114);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (814, N'3.15.jpg', 114);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (815, N'3.16.jpg', 114);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (816, N'3.17.jpg', 114);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (818, N'3.18.jpg', 114);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (819, N'3.19.jpg', 115);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (820, N'3.20.jpg', 115);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (821, N'3.21.jpg', 115);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (822, N'3.22.jpg', 115);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (823, N'3.23.jpg', 115);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (824, N'3.24.jpg', 115);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (825, N'3.25.jpg', 115);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (826, N'3.26.jpg', 116);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (827, N'3.27.jpg', 116);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (828, N'3.28.jpg', 116);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (829, N'3.29.jpg', 116);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (830, N'3.30.jpg', 116);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (831, N'3.31.jpg', 116);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (832, N'3.32.jpg', 116);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (833, N'3.33.jpg', 116);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (835, N'3.34.jpg', 116);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (836, N'3.35.jpg', 116);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (837, N'3.36.jpg', 117);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (838, N'3.37.jpg', 117);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (839, N'3.38.jpg', 117);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (841, N'3.39.jpg', 117);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (842, N'3.40.jpg', 117);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (843, N'3.41.jpg', 117);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (844, N'3.42.jpg', 117);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (845, N'4.1.jpg', 118);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (846, N'4.2.jpg', 118);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (847, N'4.3.jpg', 118);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (848, N'4.4.jpg', 118);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (849, N'4.5.jpg', 118);
 
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (850, N'4.6.jpg', 118);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (851, N'4.7.jpg', 118);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (852, N'4.8.jpg', 118);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (853, N'4.9.jpg', 118);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (854, N'4.10.jpg', 119);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (855, N'4.11.jpg', 119);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (856, N'4.12.jpg', 119);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (857, N'4.13.jpg', 119);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (858, N'4.14.jpg', 119);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (859, N'4.15.jpg', 119);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (860, N'4.16.jpg', 119);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (861, N'4.17.jpg', 120);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (862, N'4.18.jpg', 120);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (863, N'4.19.jpg', 120);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (864, N'4.20.jpg', 120);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (865, N'4.21.jpg', 120);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (866, N'4.21.jpg', 120);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (867, N'4.22.jpg', 120);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (868, N'4.23.jpg', 120);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (869, N'4.24.jpg', 120);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (870, N'4.25.jpg', 120);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (871, N'4.26.jpg', 121);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (872, N'4.27.jpg', 121);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (873, N'4.28.jpg', 121);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (874, N'4.29.jpg', 121);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (875, N'4.30.jpg', 121);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (876, N'4.31.jpg', 121);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (877, N'4.32.jpg', 121);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (878, N'4.33.jpg', 121);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (879, N'4.34.jpg', 121);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (880, N'4.35.jpg', 121);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (882, N'4.36.jpg', 121);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (883, N'4.37.jpg', 121);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (884, N'4.38.jpg', 122);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (885, N'4.39.jpg', 122);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (886, N'4.40.jpg', 122);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (887, N'4.41.jpg', 122);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (888, N'4.42.jpg', 122);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (890, N'4.43.jpg', 122);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (891, N'4.44.jpg', 122);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (892, N'4.45.jpg', 122);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (893, N'4.46.jpg', 122);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (894, N'4.47.jpg', 122);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (895, N'5.1.jpg', 123);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (896, N'5.2.jpg', 123);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (897, N'5.3.jpg', 123);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (898, N'5.4.jpg', 123);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (899, N'5.5.jpg', 123);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (900, N'5.6.jpg', 123);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (901, N'5.7.jpg', 123);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (902, N'5.8.jpg', 123);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (903, N'5.9.jpg', 123);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (904, N'5.10.jpg', 123);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (905, N'5.11.jpg', 124);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (906, N'5.12.jpg', 124);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (907, N'5.13.jpg', 124);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (908, N'5.14.jpg', 124);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (909, N'5.15.jpg', 124);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (910, N'5.16.jpg', 124);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (911, N'5.17.jpg', 124);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (912, N'5.18.jpg', 124);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (913, N'5.19.jpg', 124);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (914, N'5.20.jpg', 124);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (915, N'5.21.jpg', 125);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (916, N'5.22.jpg', 125);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (917, N'5.23.jpg', 125);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (918, N'5.24.jpg', 125);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (919, N'5.25.jpg', 125);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (920, N'5.26.jpg', 125);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (921, N'5.27.jpg', 125);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (922, N'5.28.jpg', 125);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (923, N'5.29.jpg', 125);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (924, N'5.30.jpg', 129);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (925, N'5.31.jpg', 129);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (926, N'5.32.jpg', 129);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (927, N'5.33.jpg', 129);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (928, N'5.34.jpg', 129);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (929, N'5.35.jpg', 129);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (930, N'5.36.jpg', 129);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (931, N'5.37.jpg', 129);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (932, N'5.38.jpg', 129);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (933, N'5.39.jpg', 129);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (934, N'5.40.jpg', 129);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (935, N'5.41.jpg', 130);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (936, N'5.42.jpg', 130);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (937, N'5.43.jpg', 130);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (938, N'5.44.jpg', 130);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (939, N'5.45.jpg', 130);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (940, N'5.46.jpg', 130);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (941, N'5.47.jpg', 130);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (942, N'5.48.jpg', 130);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (943, N'5.49.jpg', 130);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (944, N'5.50.jpg', 130);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (945, N'5.51.jpg', 130);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (946, N'5.52.jpg', 130);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (948, N'5.53.jpg', 130);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (949, N'6.1.jpg', 133);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (950, N'6.2.jpg', 133);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (951, N'6.3.jpg', 133);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (952, N'6.4.jpg', 133);
 
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (953, N'6.5.jpg', 133);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (954, N'6.6.jpg', 133);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (955, N'6.7.jpg', 133);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (956, N'6.8.jpg', 133);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (957, N'6.9.jpg', 133);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (958, N'6.10.jpg', 133);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (959, N'6.11.jpg', 133);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (960, N'6.12.jpg', 1007);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (961, N'6.13.jpg', 1007);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (962, N'6.14.jpg', 1007);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (963, N'6.15.jpg', 1007);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (964, N'6.16.jpg', 1007);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (965, N'6.17.jpg', 1007);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (966, N'6.18.jpg', 1007);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (967, N'6.19.jpg', 1007);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (968, N'6.20.jpg', 1007);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (969, N'6.21.jpg', 1007);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (970, N'6.23.jpg', 1008);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (971, N'6.24.jpg', 1008);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (972, N'6.25.jpg', 1008);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (973, N'6.26.jpg', 1008);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (974, N'6.27.jpg', 1008);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (975, N'6.28.jpg', 1008);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (976, N'6.29.jpg', 1008);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (977, N'6.30.jpg', 1008);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (978, N'6.31.jpg', 1008);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (979, N'6.32.jpg', 1009);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (980, N'6.33.jpg', 1009);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (981, N'6.34.jpg', 1009);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (982, N'6.35.jpg', 1009);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (983, N'6.36.jpg', 1009);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (984, N'6.37.jpg', 1009);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (985, N'6.38.jpg', 1009);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (986, N'6.39.jpg', 1009);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (987, N'6.40.jpg', 1009);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (988, N'6.41.jpg', 1009);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (989, N'7.1.jpg', 1010);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (990, N'7.2.jpg', 1010);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (991, N'7.3.jpg', 1010);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (992, N'7.4.jpg', 1010);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (993, N'7.5.jpg', 1010);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (994, N'7.6.jpg', 1010);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (995, N'7.7.jpg', 1010);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (996, N'7.8.jpg', 1011);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (997, N'7.9.jpg', 1011);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (998, N'7.10.jpg', 1011);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (999, N'7.11.jpg', 1011);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1000, N'7.12.jpg', 1011);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1001, N'7.13.jpg', 1011);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1002, N'7.14.jpg', 1013);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1003, N'7.15.jpg', 1013);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1004, N'7.16.jpg', 1013);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1005, N'7.17.jpg', 1013);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1006, N'7.18.jpg', 1013);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1007, N'7.19.jpg', 1014);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1008, N'7.20.jpg', 1014);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1009, N'7.21.jpg', 1014);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1010, N'7.22.jpg', 1014);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1011, N'7.23.jpg', 1014);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1012, N'7.24.jpg', 1014);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1013, N'7.25.jpg', 1015);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1014, N'7.26.jpg', 1015);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1015, N'7.27.jpg', 1015);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1016, N'7.28.jpg', 1015);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1017, N'7.29.jpg', 1015);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1018, N'8.1.jpg', 1016);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1019, N'8.2.jpg', 1016);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1020, N'8.3.jpg', 1016);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1021, N'8.4.jpg', 1016);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1022, N'8.5.jpg', 1016);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1023, N'8.6.jpg', 1016);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1024, N'8.7.jpg', 1016);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1025, N'8.8.jpg', 1016);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1026, N'8.9.jpg', 1016);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1027, N'8.10.jpg', 1016);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1028, N'8.11.jpg', 1017);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1029, N'8.12.jpg', 1017);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1030, N'8.13.jpg', 1017);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1031, N'8.14.jpg', 1017);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1032, N'8.15.jpg', 1017);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1033, N'8.16.jpg', 1017);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1034, N'8.17.jpg', 1017);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1035, N'8.18.jpg', 1017);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1036, N'8.19.jpg', 1017);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1037, N'8.20.jpg', 1017);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1038, N'8.21.jpg', 1018);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1039, N'8.22.jpg', 1018);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1040, N'8.23.jpg', 1018);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1041, N'8.24.jpg', 1018);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1042, N'8.25.jpg', 1018);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1043, N'8.26.jpg', 1018);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1044, N'8.27.jpg', 1018);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1045, N'8.28.jpg', 1018);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1046, N'8.29.jpg', 1019);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1047, N'8.30.jpg', 1019);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1048, N'8.31.jpg', 1019);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1049, N'8.32.jpg', 1019);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1050, N'8.33.jpg', 1019);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1051, N'8.34.jpg', 1019);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1052, N'8.35.jpg', 1019);
 
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1053, N'8.36.jpg', 1019);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1054, N'8.37.jpg', 1019);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1055, N'8.38.jpg', 1019);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1056, N'8.39.jpg', 1020);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1057, N'8.40.jpg', 1020);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1058, N'8.41.jpg', 1020);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1059, N'8.42.jpg', 1020);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1060, N'8.43.jpg', 1020);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1061, N'8.44.jpg', 1020);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1062, N'8.45.jpg', 1020);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1063, N'8.46.jpg', 1020);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1064, N'8.47.jpg', 1020);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1065, N'8.48.jpg', 1020);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1066, N'8.49.jpg', 1021);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1067, N'8.50.jpg', 1021);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1068, N'8.51.jpg', 1021);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1070, N'8.52.jpg', 1021);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1071, N'8.53.jpg', 1021);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1072, N'8.54.jpg', 1021);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1073, N'8.55.jpg', 1021);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1074, N'8.56.jpg', 1021);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1075, N'8.57.jpg', 1021);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1076, N'8.58.jpg', 1021);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1077, N'8.59.jpg', 1022);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1078, N'8.60.jpg', 1022);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1079, N'8.61.jpg', 1022);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1080, N'8.62.jpg', 1022);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1081, N'8.63.jpg', 1022);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1082, N'8.64.jpg', 1022);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1083, N'8.65.jpg', 1022);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1084, N'8.66.jpg', 1022);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1086, N'8.67.jpg', 1022);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1088, N'8.68.jpg', 1022);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1089, N'9.1.jpg', 1023);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1090, N'9.2.jpg', 1023);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1091, N'9.3.jpg', 1023);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1092, N'9.4.jpg', 1023);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1093, N'9.5.jpg', 1023);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1094, N'9.6.jpg', 1023);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1095, N'9.7.jpg', 1024);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1096, N'9.8.jpg', 1024);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1097, N'9.9.jpg', 1024);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1098, N'9.10.jpg', 1024);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1099, N'9.11.jpg', 1024);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1100, N'9.12.jpg', 1024);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1101, N'9.13.jpg', 1024);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1102, N'9.14.jpg', 1024);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1103, N'9.15.jpg', 1024);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1104, N'9.16.jpg', 1025);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1105, N'9.17.jpg', 1025);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1106, N'9.18.jpg', 1025);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1107, N'9.19.jpg', 1025);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1108, N'9.20.jpg', 1025);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1109, N'9.21.jpg', 1025);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1110, N'9.22.jpg', 1025);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1111, N'9.23.jpg', 1025);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1112, N'9.24.jpg', 1025);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1113, N'9.25.jpg', 1026);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1114, N'9.26.jpg', 1026);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1115, N'9.27.jpg', 1026);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1116, N'9.28.jpg', 1026);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1117, N'9.29.jpg', 1026);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1118, N'9.30.jpg', 1026);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1119, N'10.1.jpg', 1027);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1120, N'10.2.jpg', 1027);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1121, N'10.3.jpg', 1027);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1122, N'10.4.jpg', 1027);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1123, N'10.5.jpg', 1027);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1124, N'10.6.jpg', 1027);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1125, N'10.7.jpg', 1028);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1126, N'10.8.jpg', 1028);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1127, N'10.9.jpg', 1028);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1128, N'10.10.jpg', 1028);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1129, N'10.11.jpg', 1028);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1130, N'10.12.jpg', 1028);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1131, N'10.13.jpg', 1028);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1132, N'10.14.jpg', 1028);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1133, N'10.15.jpg', 1029);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1134, N'10.16.jpg', 1029);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1135, N'10.17.jpg', 1029);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1136, N'10.18.jpg', 1029);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1137, N'10.19.jpg', 1029);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1138, N'10.20.jpg', 1029);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1139, N'10.21.jpg', 1030);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1140, N'10.22.jpg', 1030);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1141, N'10.23.jpg', 1030);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1142, N'10.24.jpg', 1030);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1143, N'10.25.jpg', 1030);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1144, N'10.26.jpg', 1031);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1145, N'10.27.jpg', 1031);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1146, N'10.28.jpg', 1031);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1147, N'10.29.jpg', 1031);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1148, N'10.30.jpg', 1031);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1149, N'10.31.jpg', 1031);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1150, N'10.32.jpg', 1032);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1151, N'10.33.jpg', 1032);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1152, N'10.34.jpg', 1032);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1153, N'10.35.jpg', 1032);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1154, N'10.36.jpg', 1032);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1155, N'10.37.jpg', 1032);
 
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1156, N'10.38.jpg', 1032);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1157, N'10.39.jpg', 1034);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1158, N'10.40.jpg', 1034);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1159, N'10.41.jpg', 1034);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1160, N'10.42.jpg', 1034);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1161, N'10.43.jpg', 1034);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1162, N'10.44.jpg', 1034);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1163, N'11.1.jpg', 1035);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1164, N'11.2.jpg', 1035);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1165, N'11.3.jpg', 1035);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1166, N'11.4.jpg', 1035);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1167, N'11.5.jpg', 1035);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1168, N'11.6.jpg', 1035);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1169, N'11.7.jpg', 1035);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1170, N'11.8.jpg', 1035);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1171, N'11.9.jpg', 1035);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1172, N'11.10.jpg', 1035);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1173, N'11.11.jpg', 1035);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1175, N'11.12.jpg', 1035);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1176, N'11.13.jpg', 1036);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1177, N'11.14.jpg', 1036);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1178, N'11.15.jpg', 1036);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1179, N'11.16.jpg', 1036);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1180, N'11.17.jpg', 1036);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1181, N'11.18.jpg', 1036);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1182, N'11.19.jpg', 1037);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1183, N'11.20.jpg', 1037);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1184, N'11.21.jpg', 1037);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1185, N'11.22.jpg', 1037);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1186, N'11.23.jpg', 1037);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1187, N'11.24.jpg', 1037);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1188, N'11.25.jpg', 1038);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1189, N'11.26.jpg', 1038);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1190, N'11.27.jpg', 1038);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1191, N'11.28.jpg', 1038);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1192, N'11.29.jpg', 1038);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1193, N'11.30.jpg', 1038);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1194, N'11.31.jpg', 1038);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1195, N'11.32.jpg', 1039);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1196, N'11.33.jpg', 1039);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1197, N'11.34.jpg', 1039);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1198, N'11.35.jpg', 1039);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1199, N'11.36.jpg', 1039);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1200, N'11.37.jpg', 1039);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1201, N'12.1.jpg', 1040);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1202, N'12.2.jpg', 1040);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1203, N'12.3.jpg', 1040);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1204, N'12.4.jpg', 1040);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1205, N'12.5.jpg', 1040);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1206, N'12.6.jpg', 1040);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1207, N'12.7.jpg', 1040);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1208, N'12.8.jpg', 1040);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1209, N'12.9.jpg', 1041);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1210, N'12.10.jpg', 1041);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1211, N'12.11.jpg', 1041);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1212, N'12.12.jpg', 1041);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1213, N'12.13.jpg', 1041);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1214, N'12.14.jpg', 1041);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1215, N'12.15.jpg', 1041);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1216, N'12.16.jpg', 1041);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1217, N'12.17.jpg', 1042);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1218, N'12.18.jpg', 1042);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1219, N'12.19.jpg', 1042);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1220, N'12.20.jpg', 1042);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1221, N'12.21.jpg', 1042);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1222, N'12.22.jpg', 1042);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1223, N'12.23.jpg', 1042);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1224, N'13.1.jpg', 1043);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1225, N'13.2.jpg', 1043);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1226, N'13.3.jpg', 1043);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1227, N'13.4.jpg', 1043);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1228, N'13.5.jpg', 1043);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1229, N'13.6.jpg', 1043);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1230, N'13.7.jpg', 1044);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1231, N'13.8.jpg', 1044);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1232, N'13.9.jpg', 1044);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1233, N'13.10.jpg', 1044);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1234, N'13.11.jpg', 1044);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1235, N'13.12.jpg', 1044);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1236, N'13.13.jpg', 1044);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1237, N'13.14.jpg', 1044);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1238, N'13.15.jpg', 1045);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1239, N'13.16.jpg', 1045);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1240, N'13.17.jpg', 1045);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1241, N'13.18.jpg', 1045);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1242, N'13.19.jpg', 1045);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1243, N'13.20.jpg', 1045);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1244, N'13.21.jpg', 1045);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1245, N'13.22.jpg', 1046);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1246, N'13.23.jpg', 1046);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1247, N'13.24.jpg', 1046);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1248, N'13.25.jpg', 1046);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1249, N'13.26.jpg', 1046);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1250, N'13.27.jpg', 1046);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1251, N'13.28.jpg', 1046);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1253, N'13.29.jpg', 1046);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1254, N'13.30.jpg', 1047);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1255, N'13.31.jpg', 1047);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1256, N'13.32.jpg', 1047);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1257, N'13.33.jpg', 1047);
 
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1258, N'13.34.jpg', 1047);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1259, N'13.35.jpg', 1047);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1260, N'13.36.jpg', 1047);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (1261, N'13.37.jpg', 1047);


INSERT INTO Introduce (Id, ProductId, data) VALUES (1, 118, N'Hiệu năng làm việc và học tập mạnh mẽ đến từ HP Pavilion 15 eg0505TU i5 1135G7 (46M02PA) cùng kiểu dáng thanh lịch là bạn đồng hành lý tưởng, đáp ứng mọi nhu cầu hàng ngày của người dùng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (2, 119, N'Laptop HP 15s fq2559TU i5 (46M27PA) sở hữu n ại hình thanh lịch và vi xử lý Intel thế hệ 11 hiện đại, kết hợp công nghệ màn hình cao cấp cho hiệu năng ổn định và chất lượng hình ảnh tuyệt vời.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (3, 120, N'HP Omen 15 ek0078TX i7 (26Y68PA) là chiếc laptop gaming mang trong mình sức mạnh siêu phàm nhờ sở hữu cấu hình gồm con chip Intel Core i7 mạnh mẽ và vi xử lý đồ họa cực mượt mà nhưng vẫn giữ n ại hình tương đối mỏng nhẹ, đây chính là công cụ đắc lực, đồng hành cùng bạn trong mọi cuộc chiến.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (4, 121, N'Đẳng cấp và ấn tượng hơn bao giờ hết cùng laptop HP EliteBook X360 1040 G8 i7 (3G1H4PA) với thiết kế sang trọng, bản lề gập xoay 360 độ cùng khả năng vận hành và xử lý mọi tác vụ mạnh mẽ mang đến những trải nghiệm trọn vẹn, khó quên cho người dùng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (5, 122, N'Laptop HP Envy 13 ba1030TU i7 (2K0B6PA) sở hữu thiết kế mỏng nhẹ cùng cấu hình cực mạnh mẽ đáp ứng đa dạng nhu cầu làm việc, giúp bạn đạt được hiệu suất làm việc tốt nhất.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (6, 123, N'Sở hữu thiết kế mỏng nhẹ và thanh lịch, Lenovo IdeaPad Slim 5 15ITL05 i5 1135G7 (82FG001PVN) không chỉ là một mẫu laptop thời trang, mà còn mang trên mình sức mạnh vô cùng mạnh mẽ đến từ bộ vi xử lý Intel Core i5 thế hệ thứ 11 giúp bạn hoàn thành xuất sắc mọi công việc.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (7, 124, N'Laptop Lenovo IdeaPad 3 15ITL6 i5 (82H80042VN) với thiết kế mỏng nhẹ đẹp mắt cùng hiệu năng ổn định giúp bạn hoàn thành công việc một cách nhanh chóng, hiệu quả.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (8, 125, N'Laptop Lenovo Ideapad 5 15ITL05 i5 1135G7 (82FG00P5VN) là một sản phẩm “hoàn hảo" từ thiết kế thông minh, tinh tế đến cấu hình mạnh mẽ của Intel thế hệ 11, đáp ứng mọi nhu cầu cho bạn từ tác vụ văn phòng đến đồ họa chuyên nghiệp, giải trí, chơi game đơn giản, rất xứng đáng để bạn sở hữu ngay.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (9, 129, N'Laptop Lenovo Ideapad Gaming 3 15IMH05 i7 (81Y4013UVN) là dòng laptop gaming tầm trung với thiết kế tối giản, vẻ n ài không quá hầm hố nhưng vẫn sở hữu hiệu năng cao đáp ứng tốt từ nhu cầu làm việc đến giải trí.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (10, 130, N'Sang trọng, đẳng cấp, mạnh mẽ là những mỹ từ tóm gọn giá trị mà laptop Lenovo Yoga 9 14ITL5 (82BG006EVN) mang lại cho bạn. Nếu đang tìm 1 chiếc laptop mỏng nhẹ, linh hoạt, cấu hình ấn tượng hỗ trợ các tác vụ nặng, trải nghiệm ngay phiên bản cao cấp này từ Lenovo.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (11, 133, N'LG Gram 16 2021 i7 (16Z90P-G.AH73A5) với thiết kế siêu mỏng cùng cấu hình mạnh với chip Intel thế hệ 11, card đồ họa Intel Iris Xe Graphics đáp ứng mọi nhu cầu người dùng từ văn phòng đến đồ họa chuyên nghiệp.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (12, 1007, N'Với tính chất công việc cần di chuyển nhiều hay phải mang laptop đi làm thường xuyên, LG Gram 16 2021 i7 (16Z90P-G.AH75A5) vừa mỏng nhẹ vừa có hiệu năng mạnh mẽ từ bộ vi xử lý Intel thế hệ 11 tân tiến sẽ là cộng sự tuyệt vời mà bạn luôn tìm kiếm bấy lâu nay.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (13, 1008, N'LG Gram 14 2021 i7 (14Z90P-G.AH75A5) tự tin đồng hành cùng bạn di chuyển khắp mọi nơi với thiết kế siêu gọn nhẹ và sang trọng cùng bộ vi xử lý mạnh mẽ đạt chuẩn Intel Evo.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (14, 1009, N'Laptop LG Gram 14 i5 (14Z90N-V.AR52A5) là phiên bản laptop siêu gọn nhẹ tiện lợi cho mọi nhu cầu dịch chuyển của bạn. Không chỉ đem đến thiết kế ấn tượng, LG còn trang bị cho đứa con tinh thần của mình nhiều tính năng hiện đại cùng độ bền đạt chuẩn quân đội.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (15, 1010, N'Apple Macbook Pro M1 2020 được nâng cấp với bộ vi xử lý mới cực kỳ mạnh mẽ, chiếc laptop này sẽ phục vụ tốt cho công việc của bạn, đặc biệt cho lĩnh vực đồ họa, kỹ thuật.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (16, 1011, N'Apple MacBook Air M1 sở hữu các tính năng hiện đại cùng với hiệu năng mạnh mẽ từ Chip Apple M1 độc quyền từ Apple, chiếc laptop nhỏ gọn này rất phù hợp với sinh viên, nhân viên văn phòng không chỉ xử lý tốt các tác vụ văn phòng mà còn giải quyết ổn định thiết kế đồ hoạ.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (17, 1013, N'Laptop Apple MacBook Air M1 2020 có thiết kế đẹp, sang trọng với CPU M1 độc quyền từ Apple cho hiệu năng đồ họa cao, màn hình Retina hiển thị siêu nét cùng với hệ thống bảo mật tối ưu.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (18, 1014, N'Apple Macbook Pro M1 2020 được nâng cấp với bộ vi xử lý mới cực kỳ mạnh mẽ, chiếc laptop này sẽ phục vụ tốt cho công việc của bạn, đặc biệt cho lĩnh vực đồ họa, kỹ thuật.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (19, 1015, N'Laptop Apple Macbook Pro M1 2020 (Z11C000CJ) với chip M1 dành riêng cho MacBook đưa hiệu năng của MacBook Pro 2020 lên một tầm cao mới. Màn hình Retina siêu nét, thời lượng pin ấn tượng và hàng loạt các tính năng hiện đại giúp bạn có được trải nghiệm làm việc chuyên nghiệp nhất.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (20, 1016, N'Laptop MSI GF65 10UE i7 (228VN) sở hữu thiết kế đẳng cấp cùng hiệu năng mạnh mẽ, đặc biệt hiệu suất chơi game được nâng cấp đáng kể mang đến cho bạn những giờ phút giải trí bất tận.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (21, 1017, N'Laptop MSI Katana GF66 11UC i7 (224VN) mang vẻ n ài cơ động cùng cấu hình mạnh mẽ, đẩy nhanh quá trình xử lý mọi tác vụ hay sẵn sàng đồng hành cùng bạn chiến mọi thể loại game đầy kịch tính.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (22, 1018, N'Laptop MSI GP76 11UG i7 (435VN) thiết kế cực ngầu, cấu hình cực mạnh với bộ vi xử lý Gen 11 từ nhà Intel, không những thoả sức trở thành game thủ trên mọi tựa game mà còn có thể đáp ứng các tác vụ đồ hoạ, kỹ thuật chuyên nghiệp.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (23, 1019, N'Khi nhắc tới MSI chắc chắn mọi người sẽ nghĩ ngay đến dòng laptop gaming cực nổi tiếng của hãng, nhưng MSI đã từng ngày thay đổi quan niệm này bằng cách cho ra mắt các mẫu laptop mỏng nhẹ với cấu hình mạnh mẽ như chiếc MSI Summit E13 Flip Evo i7 (211VN) này.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (24, 1020, N'Laptop MSI Gaming Leopard 10SDRK GL65 i7 (242VN) là chiếc laptop gaming với thiết kế chuẩn hiện đại, hiệu năng mạnh mẽ với CPU thế hệ mới mang lại sức mạnh chiến game đỉnh cao cho các game thủ lựa chọn lí tưởng trong tầm giá.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (25, 1021, N'Tối ưu hóa cho mọi hoạt động từ đồ họa đến chiến game, MSI GF65 Thin 10UE i5 (286VN) sẽ là người cộng sự đắc lực với thiết kế độc đáo và cấu hình mạnh mẽ, cùng bạn xông pha trên mọi chiến trường ảo.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (26, 1022, N'MSI GL65 Leopard 10SCXK i7 (217VN) sở hữu thiết kế gaming hiện đại và sức mạnh vượt trội của bộ vi xử lý Intel Core i7 dòng H sẵn sàng đồng hành cùng bạn trong mọi cuộc chiến.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (27, 1023, N'Chiếc máy tính bảng của Huawei, Huawei MatePad T10s cũng đã chính thức được chào sân. Với vi xử lý 8 nhân mở ra một thế giới giải trí mượt mà, sống động từng khoảnh khắc với màn hình cực lớn, hé lộ một chiếc máy tính bảng tốt trong tầm giá mà bất kỳ ai cũng đều yêu thích.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (28, 1024, N'Huawei cho ra mắt máy tính bảng Huawei MatePad có mức giá dễ tiếp cận. Được thiết kế mỏng nhẹ và đầy đủ các tính năng cần thiết, Huawei MatePad là sự lựa chọn tuyệt vời cho những ai yêu thích màn hình lớn nhưng lại thuận tiện dễ dàng di chuyển mang theo.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (29, 1025, N'Sở hữu thiết kế cao cấp, giải trí bùng nổ với màn hình siêu lớn và dàn âm thanh vòm 4 loa cực kỳ sống động, được tùy chọn bộ nhớ trong siêu khủng 128 GB, máy tính bảng Huawei MatePad sẽ là một lựa rchọn hoàn hảo cho mọi nhu cầu của bạn dù công việc hay vui chơi.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (30, 1026, N'Huawei MatePad T8 là một trong những mẫu máy tính bảng giá rẻ của Huawei có thiết kế nguyên khối cùng một cấu hình cơ bản, đủ dùng cho các tác vụ hằng ngày của mọi người dùng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (31, 1027, N'iPad Pro M1 12.9 inch Wifi 256GB (2021) là dòng máy tính bảng cao cấp của Apple với nhiều nâng cấp đáng chú ý như chip Apple M1 giống trên MacBook và màn hình mini-LED mới cùng nhiều đột phá công nghệ dẫn đầu khác mang đến trải nghiệm làm việc và giải trí đỉnh cao.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (32, 1028, N'Apple gây ấn tượng khi cho ra mắt dòng laptop MacBook trang bị chip Apple M1, đem đến một hiệu năng xử lý vượt trội. Giờ đây nó đã xuất hiện trên chiếc máy tính bảng iPad Pro M1 11 inch Wifi 256GB (2021) chắc chắn sẽ tiếp nối sự thành công từ dòng laptop ra mắt trước đó.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (33, 1029, N'Máy tính bảng iPad Pro M1 12.9 inch Wifi Cellular 256GB (2021) trang bị con chip vô cùng mạnh mẽ M1 cùng công nghệ màn hình mới mini-LED được rất nhiều người dùng đón nhận nồng nhiệt và đánh giá rất tốt sản phẩm này đến từ Apple.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (34, 1030, N'Dù trên thị trường có khá nhiều các dòng máy tính bảng, nhưng iPad của thương hiệu Apple vẫn được đánh giá là vua trong lĩnh vực này. iPad Pro M1 11 inch Wifi Cellular 256GB (2021) khi được cho ra mắt, đã nhanh chóng “khuấy đảo” giới công nghệ bởi những tính năng ưu việt mà thiết bị sở hữu.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (35, 1031, N'iPad Air 4 khi được cho ra mắt đã gây ra một cơn sốt cho giới công nghệ toàn cầu, khi sử dụng chipset A14 Bionic với hiệu năng cực khủng, bên cạnh một thiết kế cao cấp và những công nghệ hàng đầu.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (36, 1032, N'Nhiều người đồn đoán rằng Apple đã khai tử dòng iPad Mini của mình khi đã 4 năm kể từ thế hệ mới nhất không có thêm bất cứ nâng cấp nào. Tuy nhiên iPad Mini 7.9 inch Wifi 2019 (iPad Mini 5) ra mắt và đánh dấu sự trở lại của một chiếc máy tính bảng nhỏ gọn như ngày nào.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (37, 1034, N'Sau iPad 7 thì Apple đã tung ra thế hệ máy tính bảng tiếp theo với iPad Wifi 8 Cellular 128 GB (2020). Mặc dù không có quá nhiều nâng cấp nổi bật, nhưng iPad 8 vẫn ghi điểm với người dùng nhờ vào hiệu năng mạnh mẽ đến từ vi xử lý A12 Bionic, iPadOS mượt mà tối ưu cho giải trí và công việc.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (38, 1035, N'Lenovo Tab M10 chính là chiếc máy tính bảng với màn hình sắc nét kích thước lớn cùng thời lượng pin trâu đáp ứng tốt nhu cầu sử dụng cơ bản như xem phim, lướt web hằng ngày.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (39, 1036, N'Lenovo Tab M10 Gen 2 từ nhà Lenovo nổi bật trong phân khúc tầm trung khi sở hữu thiết kế gọn nhẹ, hiện đại cùng khả năng kết nối mạnh mẽ, viên pin ấn tượng và cấu hình ổn định trong tầm giá.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (40, 1037, N'Lenovo Tab M8 chiếc máy tính bảng giá rẻ, cấu hình ổn, thiết kế cao cấp trong tầm giá, hoàn toàn phù hợp với các nhu cầu cơ bản như đọc báo, xem phim, lướt web hằng ngày.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (41, 1038, N'Lenovo ra mắt dòng máy tính bảng mang tên Lenovo Tab M7 là sự lựa chọn rất đáng để cân nhắc cho người dùng phổ thông với thiết kế tinh tế, cứng cáp cùng một cấu hình mạnh mẽ và nhiều tính năng hữu ích.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (42, 1039, N'Lenovo đã tung ra chiếc máy tính bảng Lenovo Tab E7 TB-7104I với cấu hình đáp ứng khá mượt mà các tác vụ cơ bản của người dùng như lướt web, giải trí, chụp ảnh,... và máy tính bảng Lenovo rất đáng được cân nhắc trong phân khúc phổ thông.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (43, 1040, N'Masstel Tab 10 Ultra được cho là phiên bản được cải tiến từ các phiên bản tiền nhiệm trước đó là Tab 10 Pro, có mức giá tầm trung nhưng vẫn đảm bảo chất lượng. Hãy cùng tìm hiểu đứa “con cưng” mới nhất của Masstel tính tới tháng 10/2020.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (44, 1041, N'Thiết kế mỏng nhẹ, thời lượng pin cực lâu, màn hình rộng, Masstel Tab 10 4G dòng máy tính bảng giá rẻ đến từ thương hiệu Masstel sẽ là sự chọn lựa phù hợp để giải trí, học tập, tra cứu thông tin của người dùng, cùng kết nối 4G cho tốc độ mạng nhanh chóng mọi lúc mọi nơi.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (45, 1042, N'Masstel Tab10 Pro là một lựa chọn khá hợp lý dành cho các bạn học sinh, sinh viên, những người muốn có một thiết bị giá rẻ nhưng vẫn có một màn hình lớn để học tập hay giải trí.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (46, 1043, N'Samsung chính thức trình làng mẫu máy tính bảng có tên Galaxy Tab S7 FE, máy trang bị cấu hình mạnh mẽ, màn hình giải trí siêu lớn và điểm ấn tượng nhất là viên pin siêu khủng được tích hợp bên trong, giúp tăng hiệu suất làm việc nhưng vẫn có tính di động cực cao.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (47, 1044, N'Galaxy Tab A7 Lite là phiên bản rút gọn của dòng máy tính bảng "ăn khách" Galaxy Tab A7 thuộc thương hiệu Samsung, đáp ứng nhu cầu giải trí của khách hàng thuộc phân khúc bình dân với màn hình lớn nhưng vẫn gọn nhẹ hợp túi tiền.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (48, 1045, N'Samsung Galaxy Tab S7 chiếc máy tính bảng có thiết kế tuyệt đẹp, màn hình 120 Hz siêu mượt, camera kép ấn tượng, bút S Pen cùng một hiệu năng mạnh mẽ thuộc top đầu thị trường máy tính bảng Android.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (49, 1046, N'Samsung Galaxy Tab A8 8 inch T295 (2019) là một chiếc máy tính bảng gọn nhẹ với màn hình vừa đủ có thể giúp bạn giải trí hay hỗ trợ trẻ nhỏ trong việc học tập.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (50, 1047, N'Sau thành công của Galaxy Tab S6, Samsung tiếp tục chinh phục người dùng với Galaxy Tab S6 Lite có phân khúc giá rẻ hơn. Thiết bị vẫn hỗ trợ bút S Pen thần thánh, thiết kế kim loại cao cấp và màn hình, âm thanh giải trí đỉnh cao.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (51, 1091, N'AirPods Pro với thiết kế gọn gàng, đẹp và tinh tế, tai nghe được thiết kế theo dạng In-ear thay vì Earbuds như AirPods 2, cho phép chống ồn tốt hơn, khó rớt khi đeo và đặc biệt là êm tai hơn.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (52, 77, N'Đồng hồ thông minh Garmin Fenix 6 Pro Solar trang bị màn hình có độ phân giải 260 x 260 pixels và kích thước 1.3 inch, giúp hình ảnh hiển thị được sắc nét 
ngay cả khi có ánh nắng mặt trời. Dây đeo silicone cho cảm giác vô cùng mềm mại với cổ tay người đeo.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (53, 1092, N'Tai nghe Bluetooth ghi dấu ấn với các tín đồ tai nghe Beats (Apple) với kiểu dáng gọn nhẹ, có 2 phiên bản màu đen và vàng Yuzu thuần khiết, đẹp mắt, giúp tạo phong cách năng động, thời thượng cho cả phái mạnh và phái đẹp.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (54, 1094, N'Belkin Soundform Move PAC001 được đặt trong hộp sạc hình thoi thon gọn, tinh tế, tạo cảm giác mềm mại, trang trọng và rất bắt mặt, đặt gọn tay cầm và tiện mang theo. Bề mặt hộp sạc chất liệu nhựa nhám chống trầy, chống trượt tốt, hạn chế bám vân tay.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (55, 1095, N'Tai nghe True Wireless sành điệu, màu đen cá tính là mẫu tai nghe không dây thời thượng, Mozard TS13 tạo ấn tượng mạnh với củ tai nhỏ nhẹ, cho thao tác đeo, sử dụng cực thoải mái, tiện lợi. Trọng lượng chỉ 39 gam nên vô cùng thích hợp để mang theo bên mình đi bất kỳ đâu.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (56, 1096, N'Thiết kế tai nghe Rezo vừa vặn với tai người dùng, tạo cảm giác thoải mái khi đeo, không gây đau trong trường hợp sử dụng liên tục nhiều giờ liền, đáp ứng nhu cầu sử dụng tần suất cao cho cả mục đích giải trí và làm việc.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (57, 82, N'Đồng hồ định vị trẻ em Kidcare với nhiều tính năng tiện lợi vừa là chiếc đồng hồ có thiết kế năng động dành cho cả bé trai và gái, vừa giúp phụ huynh 
quản lí lịch trình, sức khỏe của bé dễ dàng hơn đảm bảo sự an toàn của trẻ.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (58, 1099, N'Gậy chụp ảnh Bluetooth Cosano HD-P7 giúp kết nối điện thoại bằng bluetooth để chụp ảnh, chỉ với nữa tiếng sạc cho hơn 20 tiếng sử dụng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (59, 1100, N'Gậy chụp ảnh Bluetooth Tripod Xmobile K06 đen có thiết kế đơn giản, thu gọn chỉ dài 19.5 cm, cho bạn dễ dàng cầm nắm và mang theo trong các chuyến đi');
INSERT INTO Introduce (Id, ProductId, data) VALUES (60, 85, N'Đồng hồ Kidcare S6 sở hữu màn hình rộng, với kích thước màn hình 1.3 inch. Công nghệ màn hình TFT giúp bé xem được hình ảnh to và rõ ràng với chất 
lượng tốt. Dây đeo làm từ chất liệu silicone êm ái và nhẹ nhàng, chống thấm nước rất tốt, cho bé thoải mái khi vận động.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (61, 1101, N'Gậy chụp ảnh Mini Cosano CW1 thiết kế nhỏ gọn cùng màu sắc trẻ trung, dễ dàng kéo dài đến 60 cm thoải mái chụp hình, lấy được nhiều góc, nhiều cảnh đẹp hoặc thu gọn lại chỉ với độ dài 16 cm cho người dùng dễ dàng bỏ vào túi xách, balo mang theo khi đi chơi, đi du lịch.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (62, 1102, N'Gậy chụp ảnh Osmia OW2 trở thành phụ kiện giúp người dùng selfie dễ dàng mà không cần sự hỗ trợ từ người khác, lưu giữ khoảnh khắc của bản thân mọi lúc mọi nơi.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (63, 1103, N'Gậy chụp ảnh Osmia OW4 có kích thước nhỏ gọn chỉ 16 cm nhưng lại có kiểu dáng khá chuyên nghiệp và lạ mắt.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (64, 1104, N'Gậy chụp ảnh Osmia OW5 có vỏ n ài bằng kim loại, nhỏ gọn đẹp mắt, có thể gắn vào tripod để cố định khung hình khi chụp.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (65, 1105, N'Đế điện thoại trên xe Cosano PH-Z1 thiết kế với khung kẹp chắc chắn, phù hợp với hầu hết các thiết bị điện thoại thông minh hiện nay.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (66, 1106, N'Đế điện thoại Esaver JHD -278 Đen với kiểu dáng nhỏ gọn, dễ sử dụng, cho bạn những chuyến đi an toàn hơn.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (67, 1107, N'Đế điện thoại trên xe máy Esaver JHD-40HD12 Đen có thiết kế chắc chắn, giúp giữ điện thoại tốt, người dùng sẽ yên tâm hơn khi gắn điện thoại trên xe thay vì phải cầm tay.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (68, 1108, N'Đế điện thoại Esaver JHD-171 Xanh trắng là sản phẩm vừa ra mắt của Esaver có thiết kế nhỏ gọn, tiện lợi, chất liệu cao cấp, chắc chắn giúp người dùng tiện dụng trong thời đại ngày nay.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (69, 1109, N'Loa Harman Kardon Aura Studio 3 làm bằng nhựa Acrylic trong suốt, tối màu, phần dưới bọc vải màu xám đen cho thiết kế tinh tế, tôn vinh mọi không gian nội thất. Chất liệu nhựa Acrylic trong đẹp cho bạn tiện quan sát cấu tạo loa bên trong và hỗ trợ đèn LED hắt ánh sáng ra n ài thêm sinh động.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (70, 1110, N'Loa JBL Clip 4 mang tính di động cao nhờ kích thước rất nhỏ gọn với chiều dài 134 mm, chiều rộng 86 mm, độ dày 46 mm và trọng lượng chỉ 230 gram. Nhờ được bao bọc bởi màng vải Fabric và khung viền kim loại, loa có được sự chắc chắn cần thiết và được bảo vệ hiệu quả khỏi các va chạm, rơi rớt thông thường trong quá trình sử dụng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (71, 1112, N'Loa bluetooth JBL   3 phong cách trẻ trung, thiết kế nhỏ gọn, sang trọng, dễ mang theo. Được phủ bằng lớp nhựa bền bỉ và lớp cao su đàn hồi tốt, loa JBL được bảo vệ an toàn khỏi các va chạm và bám dính tốt trên mặt bàn');
INSERT INTO Introduce (Id, ProductId, data) VALUES (72, 1113, N'Thiết kế loa Bluetooth Sony đơn giản, gọn nhẹ chỉ 0.4 kg, đi kèm dây treo cho bạn dễ dàng đeo vào cổ tay của mình hoặc treo móc vào balo mang theo khi đi chơi, du lịch, đi học,... Chất liệu vỏ nhựa có thêm lớp UV coating cho độ bền cao, chống trầy xước, làm sạch nhẹ nhàng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (73, 1114, N'Thiết kế tối giản, gọn gàng dễ mang theo. Pin sạc dự phòng Polymer 10.000mAh Type C PowerCore Slim PD Anker A1231 có thiết kế gọn gàng trọng lượng chỉ 212 g, bạn có thể dễ dàng để vào balo hay túi xách mang theo bên mình để sạc các thiết bị điện tử khi cần.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (74, 1115, N'Sạc điện thoại của bạn nhiều lần với dung lượng sạc dự phòng 10.000 mAh. Kết hợp với hiệu suất sạc ấn tượng 65%, AVA+ PB100S có thể sạc được cho iPhone 11 Pro Max tầm 1.6 lần. Thiết bị có độ tương thích cao với nhiều dòng máy nên bạn có thể cấp năng lượng được cho đa dạng thiết bị từ điện thoại, máy tính bảng đến quạt mini, tai nghe Bluetooth.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (75, 1116, N'Vẻ n ài sang trọng với gam màu đen thời thượng. Belkin Pocket Power BPB001 sở hữu lớp vỏ nhựa chất lượng tốt vừa chống trơn, vừa chống trầy, bảo vệ hiệu quả lõi pin và rất dễ để cầm nắm.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (76, 1117, N'Energizer UE10054BK thiết kế sang trọng, màu đen lịch lãm, mỏng chỉ 16 mm. Chế tác các góc uốn cong, bề mặt có đường sọc đen bóng in lo  thương hiệu màu trắng sáng nổi bật cho tổng thể thiết kế gọn đẹp, sành điệu, dễ dàng khi di chuyển, sử dụng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (77, 1118, N'Pin sạc dự phòng Polymer 10.000 mAh eValu PA Croco Đen có thiết kế đẹp mắt, chắc chắn. Các cạnh bo tròn giúp cầm nắm dễ dàng, thoải mái hơn. Vỏ nhựa vân carbon bảo vệ pin hiệu quả, trọng lượng nhẹ, cầm nắm thoải mái.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (78, 1119, N'Sạc dự phòng Xmobile hình khối chữ nhật nhỏ gọn, có 2 phiên bản màu xanh rêu và xanh Navy thời trang. Pin sạc dự phòng nhìn có vẻ hơi dày với mức 2.5 cm nhưng với chiều rộng 5 cm, chiều dài 10.5 cm thì thiết bị vẫn rất nhỏ nhắn, gọn gàng, cầm vừa tay, tiện cho vào túi xách, balo đồng hành cùng bạn đến bất cứ nơi đâu.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (79, 1120, N'Loa Harman Kardon Aura Studio 3 làm bằng nhựa Acrylic trong suốt, tối màu, phần dưới bọc vải màu xám đen cho thiết kế tinh tế, tôn vinh mọi không gian nội thất. Chất liệu nhựa Acrylic trong đẹp cho bạn tiện quan sát cấu tạo loa bên trong và hỗ trợ đèn LED hắt ánh sáng ra n ài thêm sinh động.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (80, 1122, N'Loa JBL Clip 4 mang tính di động cao nhờ kích thước rất nhỏ gọn với chiều dài 134 mm, chiều rộng 86 mm, độ dày 46 mm và trọng lượng chỉ 230 gram. Nhờ được bao bọc bởi màng vải Fabric và khung viền kim loại, loa có được sự chắc chắn cần thiết và được bảo vệ hiệu quả khỏi các va chạm, rơi rớt thông thường trong quá trình sử dụng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (81, 1123, N'Loa bluetooth JBL   3 phong cách trẻ trung, thiết kế nhỏ gọn, sang trọng, dễ mang theo. Được phủ bằng lớp nhựa bền bỉ và lớp cao su đàn hồi tốt, loa JBL được bảo vệ an toàn khỏi các va chạm và bám dính tốt trên mặt bàn');
INSERT INTO Introduce (Id, ProductId, data) VALUES (82, 1124, N'Thiết kế loa Bluetooth Sony đơn giản, gọn nhẹ chỉ 0.4 kg, đi kèm dây treo cho bạn dễ dàng đeo vào cổ tay của mình hoặc treo móc vào balo mang theo khi đi chơi, du lịch, đi học,... Chất liệu vỏ nhựa có thêm lớp UV coating cho độ bền cao, chống trầy xước, làm sạch nhẹ nhàng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (83, 1125, N'Với tính chất công việc cần di chuyển nhiều hay phải mang laptop đi làm thường xuyên, LG Gram 16 2021 i7 (16Z90P-G.AH75A5) vừa mỏng nhẹ vừa có hiệu năng mạnh mẽ từ bộ vi xử lý Intel thế hệ 11 tân tiến sẽ là cộng sự tuyệt vời mà bạn luôn tìm kiếm bấy lâu n');
INSERT INTO Introduce (Id, ProductId, data) VALUES (84, 1126, N'Sạc điện thoại của bạn nhiều lần với dung lượng sạc dự phòng 10.000 mAh. Kết hợp với hiệu suất sạc ấn tượng 65%, AVA+ PB100S có thể sạc được cho iPhone 11 Pro Max tầm 1.6 lần. Thiết bị có độ tương thích cao với nhiều dòng máy nên bạn có thể cấp năng lượng được cho đa dạng thiết bị từ điện thoại, máy tính bảng đến quạt mini, tai nghe Bluetooth.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (85, 1127, N'Vẻ n ài sang trọng với gam màu đen thời thượng. Belkin Pocket Power BPB001 sở hữu lớp vỏ nhựa chất lượng tốt vừa chống trơn, vừa chống trầy, bảo vệ hiệu quả lõi pin và rất dễ để cầm nắm.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (86, 1128, N'Energizer UE10054BK thiết kế sang trọng, màu đen lịch lãm, mỏng chỉ 16 mm. Chế tác các góc uốn cong, bề mặt có đường sọc đen bóng in lo  thương hiệu màu trắng sáng nổi bật cho tổng thể thiết kế gọn đẹp, sành điệu, dễ dàng khi di chuyển, sử dụng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (87, 1129, N'Pin sạc dự phòng Polymer 10.000 mAh eValu PA Croco Đen có thiết kế đẹp mắt, chắc chắn. Các cạnh bo tròn giúp cầm nắm dễ dàng, thoải mái hơn. Vỏ nhựa vân carbon bảo vệ pin hiệu quả, trọng lượng nhẹ, cầm nắm thoải mái.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (88, 1130, N'Sạc dự phòng Xmobile hình khối chữ nhật nhỏ gọn, có 2 phiên bản màu xanh rêu và xanh Navy thời trang. Pin sạc dự phòng nhìn có vẻ hơi dày với mức 2.5 cm nhưng với chiều rộng 5 cm, chiều dài 10.5 cm thì thiết bị vẫn rất nhỏ nhắn, gọn gàng, cầm vừa tay, tiện cho vào túi xách, balo đồng hành cùng bạn đến bất cứ nơi đâu.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (89, 1133, N'AirPods Pro với thiết kế gọn gàng, đẹp và tinh tế, tai nghe được thiết kế theo dạng In-ear thay vì Earbuds như AirPods 2, cho phép chống ồn tốt hơn, khó rớt khi đeo và đặc biệt là êm tai hơn.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (90, 1134, N'Tai nghe Bluetooth ghi dấu ấn với các tín đồ tai nghe Beats (Apple) với kiểu dáng gọn nhẹ, có 2 phiên bản màu đen và vàng Yuzu thuần khiết, đẹp mắt, giúp tạo phong cách năng động, thời thượng cho cả phái mạnh và phái đẹp.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (91, 1135, N'Belkin Soundform Move PAC001 được đặt trong hộp sạc hình thoi thon gọn, tinh tế, tạo cảm giác mềm mại, trang trọng và rất bắt mặt, đặt gọn tay cầm và tiện mang theo. Bề mặt hộp sạc chất liệu nhựa nhám chống trầy, chống trượt tốt, hạn chế bám vân tay.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (92, 1136, N'Tai nghe True Wireless sành điệu, màu đen cá tính là mẫu tai nghe không dây thời thượng, Mozard TS13 tạo ấn tượng mạnh với củ tai nhỏ nhẹ, cho thao tác đeo, sử dụng cực thoải mái, tiện lợi. Trọng lượng chỉ 39 gam nên vô cùng thích hợp để mang theo bên mình đi bất kỳ đâu.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (93, 1137, N'Thiết kế tai nghe Rezo vừa vặn với tai người dùng, tạo cảm giác thoải mái khi đeo, không gây đau trong trường hợp sử dụng liên tục nhiều giờ liền, đáp ứng nhu cầu sử dụng tần suất cao cho cả mục đích giải trí và làm việc.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (94, 9, N'iPhone 12 đã mang tới cho người sử dung không chỉ một thiết kế mới cực kỳ ấn tượng với màn hình tràn viền và cạnh phẳng kim loại tái 
hiện thế hệ iPhone 4S mà còn mang tới những màu sắc cực kỳ độc và iPhone 12 xanh mint là một trong số đó, nó mang tới cho chị em 
phụ nữ một lựa chọn màu cực kỳ trẻ trung và dễ thương.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (95, 10, N'Ấn tượng hơn nữa, màn hình iPhone 12 Pro siêu sắc nét với công nghệ Super Retina XDR. Tấm nền OLED mang tới hình ảnh trong trẻo, 
màu sắc chính xác, độ tương phản lên tới 2.000.000:1, độ sáng tối đa 1200 nits. Các công nghệ khác như HDR hay True Tone khiến cho chất 
lượng hiển thị của iPhone 12 Pro thêm phần hoàn hảo.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (96, 12, N'Điện thoại iPhone 12 Pro 128GB Bạc với cạnh khung vuông vắn. Với thiết kế này sẽ tạo được độ chắc chắn khi người dùng cầm nắm thiết bị 
hơn so với khung bo tròn như trước đây, mang đến độ bền vượt trội và diện mạo bóng bẩy sang trọng hơn. Màu Bạc tinh tế mang lại nét hiện 
đại cho người dùng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (97, 13, N'iPhone 12 series hiện nay đang là thế hệ smartphone hiện đại nhất của Apple, vẻ đẹp từ thiết kế, và sức hấp dẫn của các tính năng hiện đại mà 
dòng máy này sở hữu khiến người dùng công nghệ toàn cầu ‘đứng ngồi không yên”. iPhone 12 Mini tuy là phiên bản thấp nhất, nhưng chiếc 
smartphone này vẫn sở hữu những ưu điểm vượt trội về sự tiện lợi, linh động khi sử dụng và tính năng sạc nhanh cùng camera chất lượng cao.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (98, 16, N'Là chiếc điện thoại iPhone có mức giá dễ chịu, phù hợp với nhiều khách hàng hơn, iPhone Xr vẫn được ưu ái trang bị chip Apple A12 mạnh mẽ, 
màn hình tai thỏ cùng khả năng chống nước chống bụi.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (99, 17, N'iPhone SE 2020 khi được cho ra mắt đã làm thỏa mãn triệu tín đồ Táo khuyết. Máy sở hữu thiết kế siêu nhỏ gọn như iPhone 8, chip A13 Bionic cho 
hiệu năng khủng như iPhone 11, nhưng iPhone SE 2020 lại có một mức giá tốt đến bất ngờ.');
 
INSERT INTO Introduce (Id, ProductId, data) VALUES (100, 19, N'Điện thoại iPhone SE 64GB Trắng (2020) sở hữu con chip A13 Bionic nhanh nhất và mạnh mẽ nhất hứa hẹn sẽ mang đến cho bạn những trải 
nghiệm xem phim, chạy ứng dụng, chơi các trò chơi mới nhất một cách mượt mà và ổn định. Hiệu năng mạnh mẽ từ chiếc điện thoại iPhone 11 
Pro nay đã được gắn lên iPhone SE nhỏ gọn và tiết kiệm chi phí. Với những ai đang tìm kiếm một chiếc điện thoại hiệu năng mạnh mẽ nhưng vừa 
với túi tiền thì đây là một sự lựa chọn rất đang được cân nhắc.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (101, 20, N'Điện thoại iPhone 11 64GB Xanh lá sở hữu thiết kế tinh xảo tỉ mỉ đến từng chi tiết với khung nhôm bền bỉ, mặt kính cường lực chắc chắn. Bên cạnh 
đó màn hình tràn viền Liquid Retina 6.1 inch sắc nét mang lại cho bạn những trải nghiệm chân thực và sống động.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (102, 23, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng 
cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (103, 24, N'Galaxy A52s 5G mang đến trải nghiệm đa nhiệm mượt mà và hiệu suất mạnh mẽ vượt trội nhờ vi xử lý 8 nhân Snapdra n 778G 5G và RAM 8GB. 
Thoải mái mọi dữ liệu với bộ nhớ trong 128/256GB hoặc mở rộng không gian lưu trữ với thẻ microSD lên đến 1TB ấn tượng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (104, 25, N'Samsung đã chính thức trình làng Galaxy Z Flip3 5G trong buổi ra mắt cách đây không lâu. Để các bạn hiểu rõ hơn về chiếc smartphone này, 
24h Công Nghệ sẽ tổng hợp lại cho các bạn những điểm mới, những nâng cấp của Galaxy Z Flip3 5G so với Z Flip 5G.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (105, 26, N'Galaxy Z Fold 2 là tên gọi chính thức của điện thoại màn hình gập cao cấp của Samsung. Với nhiều nâng cấp tiên phong về thiết kế, hiệu năng và 
camera, hứa hẹn đây sẽ là một siêu phẩm thành công tiếp theo đến từ “ông trùm” sản xuất điện thoại lớn nhất thế giới. ');
INSERT INTO Introduce (Id, ProductId, data) VALUES (106, 27, N'Ẩn đằng sau thiết kế tuyệt tác của siêu phẩm Galaxy S21+ 5G là cả một kỳ quan công nghệ, mà ở đó bạn có thể trải nghiệm hiệu năng mạnh mẽ 
nhất, những công nghệ tiên phong, dẫn đầu trào lưu với cụm camera đỉnh cao đến từ Samsung.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (107, 28, N'Realme C21Y chiếc điện thoại với thiết kế đẹp mắt, tinh tế hướng đến đối tượng người dùng phổ thông đang tìm kiếm một sản phẩm với cấu hình 
tốt, đầy đủ tính năng hấp dẫn và đặc biệt là pin khủng cho một ngày làm việc sử dụng lâu dài. ');
INSERT INTO Introduce (Id, ProductId, data) VALUES (108, 31, N'Nối tiếp thành công của Realme C25, Realme đã cho ra mắt mẫu smartphone mang tên Realme C25s với nhiều tính năng vượt trội về camera, 
dung lượng pin, con chip mạnh mẽ và hơn hết là được bán ra với mức giá giá vô cùng tốt.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (109, 34, N'Realme 8 Pro Vàng Rực Rỡ là sản phẩm được kết hợp giữa sức mạnh đáng ngưỡng mộ của Realme 8 Pro và màu vàng đầy sang trọng. Chiếc 
điện thoại hứa hẹn sẽ đem lại sự hài lòng đáng mong đợi cho người dùng bởi sự hoàn hảo của nó.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (110, 35, N'Bên cạnh Realme 8, Realme 8 Pro cũng được giới thiệu đến người tiêu dùng với điểm nhấn chính là sự xuất hiện của camera 108 MP siêu nét cùng 
công nghệ sạc SuperDart 50 W và đi kèm mức giá bán tầm trung rất lý tưởng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (111, 37, N'Điện thoại Realme 8 được ra mắt nằm trong phân khúc tầm trung, có thiết kế đẹp mắt đặc trưng của Realme, smartphone trang bị hiệu năng bên 
trong đầy mạnh mẽ và có dung lượng pin tương đối lớn.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (112, 38, N'Vivo Y12s, chiếc điện thoại đến từ nhà sản xuất Vivo, sở hữu một mức giá dễ tiếp cận, hiệu năng mạnh mẽ cùng viên pin dung lượng khủng giúp 
bạn tha hồ trải nghiệm giải trí, chơi game suốt ngày dài.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (113, 39, N'Vivo mang đến niềm vui cho mọi người tin dùng khi hãng chính thức tung ra chiếc điện thoại Vivo Y53s với những tính năng tiên tiến đi cùng hiệu 
năng mạnh mẽ. Đặc biệt, smartphone lại còn sở hữu mức giá hấp dẫn trong phân khúc tầm trung đầy hứa hẹn.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (114, 41, N'Chụp selfie bùng nổ trong đêm, thiết kế mới hiện đại đón đầu xu hướng, cùng với đó là tốc độ kết nối mạng 5G hàng đầu, tất cả những tính năng ấn 
tượng này đều có trong Vivo V21 5G mẫu điện thoại cận cao cấp đến từ Vivo.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (115, 42, N'Điện thoại Vivo màu đen có màn hình 5 inch vừa tầm cùng độ phân giải HD mang đến trải nghiệm dễ chịu cho người dùng so với các sản phẩm 
trong cùng phân khúc điện thoại tầm trung. Thiết kế thân máy mỏng cùng các đường viền được bo tròn, sản phẩm mang đến vẻ đẹp tối giản nhưng 
hiện đại, đồng thời tạo cảm giác dễ chịu, tiện lợi cho người dùng khi sử dụng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (116, 44, N'Điện thoại Vivo V20 (8GB/128GB) Xanh hồng sở hữu thiết kế hiện đại, khung viền làm bằng kim loại với 2 bề mặt được phủ kính cường lực viền bo 
cong mềm mại dễ dàng cầm nắm. Máy nhẹ chỉ 170g, dễ dàng sử dụng mà không bị nặng tay. Mặt lưng của Vivo được thiết kế theo phong cách 
gradient chuyển màu linh hoạt, lớp kính mờ chống bám vân tay mang đến vẻ ấn tượng cho người dùng. ');
INSERT INTO Introduce (Id, ProductId, data) VALUES (117, 45, N'Vsmart Star 5 mẫu smartphone giá rẻ đến từ thương hiệu Vsmart nhận được nhiều sự quan tâm nhờ sở hữu những nâng cấp đáng kể về hiệu năng, 
camera, dung lượng pin khủng và một mức giá không thể nào tốt hơn.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (118, 46, N'Được trang bị một cấu hình mạnh mẽ đi cùng với công nghệ camera ẩn dưới màn hình ấn tượng, Vsmart Aris Pro hứa hẹn sẽ là chiếc điện thoại 
“bom tấn” tại thị trường di động Việt cuối năm nay, mang tới những trải nghiệm khác lạ và độc đáo nhất tới cho người dùng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (119, 47, N'Vsmart luôn biết cách thu hút sự chú ý của người dùng bởi những chiếc smartphone của họ, để tiếp nối điều đó, hãng đã cho ra mắt chiếc điện thoại 
thông minh đẳng cấp mang tên Vsmart Aris với nhiều đặc điểm, tính năng nổi bật.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (120, 48, N'Nối tiếp thành công Vsmart Live, hãng giới thiệu đến người dùng mẫu Vsmart Live 4 nhằm đem lại cho người dùng thêm sự lựa chọn trong phân 
khúc, kế thừa các ưu điểm từ đàn anh, sản phẩm hứa hẹn sẽ mang lại thêm thành công cho điện thoại thương hiệu Việt.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (121, 50, N'Vsmart Joy 4, một sản phẩm đáng tự hào được sản xuất từ thương hiệu Việt Vsmart với nhiều tính năng nổi bật từ hiệu năng mạnh mẽ, cụm 4 camera 
đa tính năng cho đến pin khủng 5000 mAh, hứa hẹn sẽ được nhiều người dùng săn đón.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (122, 52, N'Xiaomi 11 Lite 5G NE sẽ được giới thiệu với 4 phiên bản màu bao gồm Đen trân châu, Xanh kẹo ngọt, Hồng thanh đào và Trắng băng tuyết. Xiaomi 11 
Lite 5G NE sẽ được mở bán từ ngày 08/10/2021 tại các hệ thống bán lẻ của Xiaomi trên toàn quốc.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (123, 54, N'Xiaomi đã trình làng chiếc điện thoại mang tên gọi là Xiaomi Redmi Note 10 với điểm nhấn chính là cụm 4 camera 48 MP, chip rồng Snapdra n 678 
mạnh mẽ cùng nhiều nâng cấp như dung lượng pin 5.000 mAh và hỗ trợ sạc nhanh 33 W tiện lợi.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (124, 55, N'Xiaomi Mi 11 một siêu phẩm đến từ Xiaomi, máy cho trải nghiệm hiệu năng hàng đầu với vi xử lý Qualcomm Snapdra n 888, cùng loạt công 
nghệ đỉnh cao, khiến bất kỳ ai cũng sẽ choáng ngợp về smartphone này.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (125, 56, N'Mi 10T Pro 5G mẫu smartphone cao cấp của Xiaomi trong năm 2020 cuối cùng cũng được trình làng với loạt những thông số gây “choáng ngợp”: Màn 
hình tần số quét 144 Hz, vi xử lý Snapdra n 865 và cụm camera khủng 108 MP kèm theo đó là một mức giá dễ chịu cho người dùng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (126, 57, N'Kế thừa và nâng cấp từ thế hệ trước, Xiaomi đã cho ra mắt Xiaomi Redmi Note 10 Pro (8GB/128GB) sở hữu một thiết kế cao cấp, sang trọng bên cạnh 
cấu hình vô cùng mạnh mẽ, hứa hẹn mang đến sự cạnh tranh lớn trong phân khúc smartphone tầm trung.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (127, 58, N'OPPO Reno6 Pro 5G - một sản phẩm thuộc dòng Reno6 của OPPO, thỏa mãn những gì người tiêu dùng đã trông đợi với cấu hình khủng cùng hệ 
thống camera cực ấn tượng và n ại hình bắt mắt, thật hào hứng mong chờ để được trải nghiệm.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (128, 59, N'Reno6 Pro 5G trang bị bộ vi xử lý mạnh mẽ Snapdra n 870 đến từ Qualcomm, đạt tốc độ xử lý cao trên xung nhịp lên đến 3.2 GHz, hiệu suất CPU tăng 
lên 12% và GPU 10% so với thế hệ chipset tiền nhiệm, mang đến trải nghiệm ấn tượng trên từng tác vụ giải trí lẫn công việc.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (129, 60, N'OPPO luôn đa dạng hoá các sản phẩm của mình từ giá rẻ cho đến cao cấp. Trong đó, điện thoại OPPO A74 4G được nằm trong phân khúc tầm trung rất 
đáng chú ý với nhiều tính năng và smartphone cũng chính là bản nâng cấp của OPPO A73 ra mắt trước đó.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (130, 61, N'OPPO đã làm khuynh đảo thị trường smartphone khi cho ra đời chiếc điện thoại OPPO Find X3 Pro 5G. Đây là một sản phẩm có thiết kế độc đáo, sở hữu 
cụm camera khủng, cấu hình thuộc top đầu trong thế giới Android.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (131, 62, N'OPPO đã trình làng OPPO Reno5 5G phiên bản kết nối 5G internet siêu nhanh ra thị trường. Chiếc điện thoại với hàng loạt các tính năng nổi bật cùng vẻ 
n ài thời thượng giúp tôn lên vẻ sang trọng cho người sở hữu.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (132, 63, N'Về mặt tổng thể Apple Watch S3 42 mm có kích thước tương tự như Apple Watch Series 2. Sản phẩm chú trọng thêm về mặt thẩm mỹ với thiết kế sang 
trọng, năng động, dây đeo có nhiều màu sắc khác nhau.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (133, 64, N'Apple Watch S5 LTE là phiên bản nâng cấp với phiên bản Apple Watch S5 . Lần đầu tiên Apple Watch sẽ được trang bị màn hình OLED luôn bật, tính năng 
la bàn và khả năng cảnh báo khẩn cấp trên nhiều quốc gia hơn và đặc biệt chiếc Apple Watch phiên bản LTE có tích hợp tính năng nghe gọi độc lập như
một chiếc điện thoại...');
INSERT INTO Introduce (Id, ProductId, data) VALUES (134, 65, N'Apple Watch S6 mang đến những nâng cấp hữu ích để hỗ trợ người dùng một cách tối ưu nhất. Nổi bật trong số đó là chip xử lý S6 cải thiện hiệu năng, hệ 
điều hành watchOS 7 với nhiều tính năng mới hứa hẹn sẽ mang đến những trải nghiệm tốt hơn, thú vị hơn');
INSERT INTO Introduce (Id, ProductId, data) VALUES (135, 66, N'Apple Watch S6 LTE là phiên bản nâng cấp với phiên bản Apple Watch S6 . Lần đầu tiên Apple Watch sẽ được trang bị màn hình OLED luôn bật, tính năng 
la bàn và khả năng cảnh báo khẩn cấp trên nhiều quốc gia hơn và đặc biệt chiếc Apple Watch phiên bản LTE có tích hợp tính năng nghe gọi độc lập như
một chiếc điện thoại...');
INSERT INTO Introduce (Id, ProductId, data) VALUES (136, 67, N'Apple Watch SE LTE là phiên bản nâng cấp với phiên bản Apple Watch SE . Lần đầu tiên Apple Watch sẽ được trang bị màn hình OLED luôn bật, tính năng 
la bàn và khả năng cảnh báo khẩn cấp trên nhiều quốc gia hơn và đặc biệt chiếc Apple Watch phiên bản LTE có tích hợp tính năng nghe gọi độc lập như
một chiếc điện thoại...');
INSERT INTO Introduce (Id, ProductId, data) VALUES (137, 68, N'Apple Watch SE là phiên bản nâng cấp với phiên bản Apple Watch S5 . Lần đầu tiên Apple Watch sẽ được trang bị màn hình OLED luôn bật, tính năng 
la bàn và khả năng cảnh báo khẩn cấp trên nhiều quốc gia hơn và đặc biệt chiếc Apple Watch phiên bản LTE có tích hợp tính năng nghe gọi độc lập như
một chiếc điện thoại...');
INSERT INTO Introduce (Id, ProductId, data) VALUES (138, 69, N'Đồng hồ thông minh BeU Active 1 sở hữu một vẻ n ài đơn giản cùng gam màu đen cá tính, đây là phong cách khá được ưa chuộng đặc biệt là đối với 
các bạn trẻ hiện nay. Khung viền được làm từ hợp kim nhôm để đảm bảo độ chắc chắn và trọng lượng nhẹ cần có ở một chiếc SmartWatch, đi kèm với dây 
đeo silicone êm nhẹ, co dãn tốt và chống thấm mồ hôi giúp mang lại sự thoải mái khi đeo.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (139, 70, N'Đồng hồ thông minh BeU PT1 đen ấn tượng với vẻ n ài bắt mắt, cá tính với đường kính mặt đồng hồ 50 mm, được nhà sản xuất trang bị dây đeo silicone 
êm ái và dẻo dai, khung viền hợp kim chắc chắn, bóng bẩy. Chiếc đồng hồ sẽ là một sự lựa chọn đáng tin cậy dành cho bạn.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (140, 72, N'Đồng hồ thông minh BeU PT2 đen ấn tượng với vẻ n ài bắt mắt, cá tính với đường kính mặt đồng hồ 50 mm, được nhà sản xuất trang bị dây đeo silicone 
êm ái và dẻo dai, khung viền hợp kim chắc chắn, bóng bẩy. Chiếc đồng hồ sẽ là một sự lựa chọn đáng tin cậy dành cho bạn.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (141, 73, N'Đồng hồ thông minh BeU Sporty 1 mang kiểu dáng cá tính, hiện đại cùng tông màu đen mạnh mẽ, trẻ trung. Đồng hồ sở hữu khung viền hợp kim nhôm 
có trọng lượng nhẹ, bền bỉ, bảo vệ an toàn các chi tiết bên trong. Dây đeo silicone êm nhẹ, độ đàn hồi tốt, không thấm nước, cho bạn thoải mái đeo suốt 
ngày dài.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (142, 74, N'Đồng hồ thông minh BeU KW09 sở hữu màn hình 1.2 inch cùng độ phân giải 240 x 240 pixels hiển thị rõ hình ảnh và thời gian. Mẫu đồng hồ thông minh này 
được trang bị màn hình TFT giúp hiển thị thông tin và hình ảnh được sắc nét. Dây đeo silicone tạo cảm giác thoải mái khi đeo trong thời gian dài. N ài ra, 
người dùng có thể thay loại dây đeo khác theo ý muốn.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (143, 75, N'Đồng hồ thông minh BeU tự hào là dòng sản phẩm mang thương hiệu Việt Nam, sở hữu đầy đủ những tính năng hữu ích và cần thiết như: theo dõi giấc ngủ, 
đo nhịp tim, trang bị nhiều bài luyện tập thể thao,... đi kèm với giá thành rẻ, phù hợp với thị trường người tiêu dùng Việt');
INSERT INTO Introduce (Id, ProductId, data) VALUES (144, 76, N'Đồng hồ thông minh Garmin Enduro tự tin sẽ là một trợ thủ đắc lực luôn bên bạn trên mọi nẻo đường với kích thước 1.4 inch cùng độ phân giải 280 x 280 
pixels cho khả năng hiển thị tối ưu ngay cả khi đang di chuyển. Nổi bật với dòng đồng hồ này là khung viền đồng hồ làm từ thép không gỉ kết hợp cùng dây 
đeo bằng vải dù siêu nhẹ và mặt kính cường lực cho độ bền cao cùng khả năng chống chịu dưới nhiều điều kiện thời tiết.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (145, 78, N'Đồng hồ thông minh Garmin Fenix 6 trang bị màn hình tròn có độ phân giải 260 x 260 pixels và kích thước 1.3 inch, giúp hình ảnh hiển thị rõ nét ngay cả khi 
dưới ánh nắng của mặt trời. Dây đeo silicone mang cảm giác vô cùng mềm mại cho cổ tay, không bị đau khi đeo lâu dài. Mẫu đồng hồ này không có thao tác 
cảm ứng mà sử dụng 5 phím cơ để điều khiển, cạnh phải gồm 2 nút (Start, Back-lap) và cạnh trái gồm 3 nút (Light, up-menu, down).');
INSERT INTO Introduce (Id, ProductId, data) VALUES (146, 79, N'Đồng hồ thông minh Garmin Fenix 6X Sapphire có màn hình độ phân giải 280 x 280 pixels, kích thước 1.4 inch, giúp hiển thị hình ảnh và thông tin trên đồng 
hồ được rõ nét. Dây đeo silicone thiết kế ôm trọn cổ tay người đeo nhưng tạo cảm giác thoải mái, không bị đau cổ tay khi dùng lâu. Garmin Fenix 6X sử dụng 
5 phím cứng để điều khiển và không có thao tác cảm ứng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (147, 80, N'Forerunner 945 sở hữu Dây đồng hồ silicone mềm mại, nhẹ tay, không gây khó chịu khi tập thể thao trong thời gian dài, màn hình màu MIP 1.2 inch chóng 
chói và hiển thị tốt dưới ánh sáng mặt trời. ');
INSERT INTO Introduce (Id, ProductId, data) VALUES (148, 81, N'Đồng hồ Garmin Lily ấn tượng với thiết kế khá nhỏ nhắn, đường kính mặt 35 mm cùng trọng lượng khoảng 24g. Khung viền polyme bền chắc, chịu va đập tốt 
cùng dây silicone êm nhẹ, thoải mái khi đeo. Đây chính xác là chiếc đồng hồ đáng tin cậy dành cho phái nữ hiện đại, đầy năng động.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (149, 83, N'Đồng hồ thông minh trẻ em Kidcare 08S có thiết kế màn hình 1.3 Inch, độ phân giải 240 x 240 Pixels cùng với dây đeo làm từ silicone mang đến cảm giác 
êm ái khi đeo. Tính năng nổi trội ở mẫu đồng hồ này là khả năng định vị chuẩn xác, cảnh báo vùng nguy hiểm và gọi điện khẩn cấp, giúp phụ huynh của bé 
có thể yên tâm theo dõi bé từ xa.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (150, 84, N'Đồng hồ định vị trẻ em Kidcare 26 được thiết kế năng động dành cho các bé. Đây vừa là chiếc đồng hồ thời trang mà phụ huynh trang bị cho con em mình, 
vừa là công cụ để phụ huynh thuận tiện trong việc theo dõi lịch trình hằng ngày của các bé.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (151, 86, N'Đồng hồ định vị trẻ em Kidcare S6 có màn hình 1.3 inch cùng độ phân giải 240 x 240 Pixels giúp hiển thị đầy đủ hình ảnh và thông tin. Dây đeo làm từ silicone 
tạo cảm giác thoải mái khi đeo. Điểm nổi bậc ở mẫu đồng hồ này là khả năng định vị chuẩn xác, cảnh báo khu vực nguy hiểm và gọi điện khẩn cấp khi gặp 
nguy hiểm.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (152, 87, N'Đồng hồ định vị trẻ em Kidcare S4 có màn hình 1.3 inch cùng độ phân giải 240 x 240 Pixels giúp hiển thị đầy đủ hình ảnh và thông tin. Dây đeo làm từ silicone 
tạo cảm giác thoải mái khi đeo. Điểm nổi bậc ở mẫu đồng hồ này là khả năng định vị chuẩn xác, cảnh báo khu vực nguy hiểm và gọi điện khẩn cấp khi gặp 
nguy hiểm.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (153, 88, N'Vòng đeo tay thông minh Oppo Band mang đến một diện mạo mới - đầy cá tính và năng động. Dây đeo silicone nhẹ nhàng, không thấm nước, cho bạn thỏa 
sức hoạt động suốt cả ngày mà không lo tù bí, nặng tay. Màn hình AMOLED 1.1 inch vừa phải, tạo cảm giác thanh lịch khi đeo trên tay nhưng cũng vừa đủ 
để bạn quan sát thông tin hiển thị một cách dễ dàng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (154, 89, N'Đồng hồ thông minh Oppo Watch màu đen phiên bản 41mm sử dụng mặt đồng hồ dạng hình vuông với 4 góc bo tròn nhẹ, màn hình AMOLED 1.6 inch 
(320 x 360 pixels) cùng mật độ điểm ảnh 326ppi cho chất lượng hiển thị cực kì rõ nét. Dây đeo silicone tạo cảm giác vô cùng mềm mại, không bị đau khi đeo lâu.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (155, 90, N'Đồng hồ thông minh Oppo Watch màu hồng phiên bản 41mm trang bị màn hình AMOLED 1.6 inch cùng độ phân giải là 320 x 360 pixels, mật độ điểm ảnh 
326ppi cho chất lượng hiển thị cực kì sắc nét. Dây đeo làm từ silicone với thiết kế mang lại cảm giác vô cùng mềm mại, không bị đau khi đeo lâu.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (156, 91, N'Màn hình cong tràn thời trang, thời lượng pin lên tới 21 ngày, sạc nhanh Watch VOOC, hỗ trợ đầy đủ các tính năng tập luyện và theo dõi sức khỏe, OPPO Watch 
41mm wifi chính là tất cả những gì bạn cần cho một cuộc sống năng động.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (157, 92, N'Đồng hồ thông minh Oppo Watch màu đen phiên bản 46mm sử dụng mặt đồng hồ vuông, bo cong nhẹ ở 4 cạnh, cùng với mặt kính bo cong 2D sang hai bên 
có chiều sâu tạo cảm giác như mặt kính cong 3D, màn hình AMOLED 1.91 inch độ phân giải 402 x 476 pixels, mật độ điểm ảnh 326 ppi và dải màu rộng chuẩn 
DCI-P3 cho chất lượng hiển thị sắc nét, sống động. Dây đeo silicone cho cảm giác mang được dễ chịu và thoải mái.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (158, 93, N'Mặt đồng hồ lớn được làm cong tràn tuyệt đẹp, hiển thị mượt mà cùng loạt tính năng hỗ trợ tập luyện và theo dõi sức khỏe hữu ích, OPPO Watch 46mm wifi là 
chiếc đồng hồ thông minh cao cấp, cho bạn những trải nghiệm thú vị.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (159, 95, N'Đồng hồ Samsung Galaxy Watch 3 45mm titanium được trang bị dây đeo thép không gỉ sang trọng, kết hợp cùng lớp màu Mystic Black độc quyền với nét đẹp 
huyền bí, tinh tế giúp cho mẫu Samsung Galaxy Watch 3 này trở nên cao cấp và đặc biệt hơn hẳn những phiên bản khác.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (160, 97, N'Theo Strategy Analytics, Galaxy A là Smartphone Android Bán Chạy Nhất Thế Giới Quý 1/2020, máy sở hữu cụm 4 camera, bao gồm camera macro chụp cận 
cảnh lần đầu xuất hiện trên smartphone Samsung, màn hình tràn viền vô cực cùng mặt lưng họa tiết kim cương nổi bật.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (161, 98, N'Samsung Galaxy Watch 3 45mm viền thép bạc dây da với tấm nền Super AMOLED 1.4 inch và độ phân giải 360x360 pixels, đồng hồ có khả năng hiển thị xuất 
sắc với màu sắc rực rỡ, thông tin hiển thị đầy đủ, rõ ràng. Khung viền của đồng hồ được làm bằng thép không gỉ chắc chắn và chống ăn mòn.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (162, 99, N'Mang trên mình “chiếc áo” màu đen sang trọng, huyền bí cùng phong cách hiện đại, chiếc đồng hồ thông minh Samsung Galaxy Watch 4 LTE sẽ là phụ kiện 
đem đến sự thời thượng cho người đeo. Sở hữu khung viền nhôm có trọng lượng nhẹ, bền chắc ở mọi điều kiện thời tiết và dây đeo silicone rộng 2.2 cm, cho 
khả năng không thấm nước, đàn hồi, mềm mại, ôm trọn cổ tay. ');
INSERT INTO Introduce (Id, ProductId, data) VALUES (163, 100, N'Samsung Galaxy Watch 4 sở hữu thiết kế quen thuộc với khung viền nhôm bền bỉ, dây đeo silicone. Phiên bản 44mm này dành cho các chàng trai có cổ tay 
to nhưng vẫn giữ được nét thanh lịch vốn có nhờ kiểu thiết kế mặt đồng hồ tròn cổ điển.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (164, 101, N'Đồng hồ thông minh Samsung Galaxy Watch Active 2 nổi bật với màn hình rộng 1.2 Inch với độ phân giải 360 x 360 Pixels và mặt kính cường lực giúp người 
đeo an tâm khi mang ra n ài. Giao diện mặt đồng hồ có thể thay đổi tuỳ ý theo phòng cách người dùng. Dây đeo Silicone hạn chế bị trầy xước và dễ lau khô 
khi tiếp xúc với nước hay mồ hôi.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (165, 102, N'Acer Aspire 7 A715 41G R150 R7 (NH.Q8SSV.004) được thiết kế  ̣n gàng với cấu hình mạnh mẽ nhờ CPU AMD Ryzen 7 và card đồ hoạ NVIDIA GeForce 
GTX 1650Ti giúp tối ưu trải nghiệm chơi game, đáp ứng đa dạng nhu cầu sử dụng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (166, 103, N'Laptop Acer Aspire A315 56 308N i3 (NX.HS5SV.00C) là mẫu laptop học tập văn phòng thuộc phân khúc giá thấp. Máy trang bị vi xử lý thế hệ mới của Intel, cho 
hiệu năng đủ dùng đối với các nhu cầu cơ bản, phù hợp với học sinh và sinh viên.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (167, 104, N'Acer Swift 3 SF314 511 56G1 (NX.ABLSV.002) xứng đáng trở thành một trong những lựa chọn hàng đầu cho người dùng trong phân khúc laptop học tập - văn 
phòng với thiết kế gọn nhẹ, sang trọng cùng hiệu năng vượt trội đên từ CPU Intel thế hệ 11 tân tiến.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (168, 105, N'Acer Aspire 7 A715 41G R150 R7 (NH.Q8SSV.004) được thiết kế  ̣n gàng với cấu hình mạnh mẽ nhờ CPU AMD Ryzen 7 và card đồ hoạ NVIDIA GeForce 
GTX 1650Ti giúp tối ưu trải nghiệm chơi game, đáp ứng đa dạng nhu cầu sử dụng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (169, 106, N'Laptop Acer Nitro 5 Gaming AN515 56 5256 i5 (NH.QBZSV.005) dễ dàng chinh phục người dùng với thiết kế “cực ngầu” đậm chất gaming cùng hiệu năng bền 
bỉ đáp ứng tốt nhu cầu chiến game và học tập giải trí của người dùng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (170, 108, N'Với sự mạnh mẽ, bền bỉ từ thiết kế vẻ n ài lẫn bên trong cấu hình, Asus TUF Gaming FX506LH (HN002T) sẽ là một trợ thủ đắc lực của bạn trong trò chơi yêu 
thích và cả những tác vụ nặng khác.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (171, 109, N'Laptop Asus VivoBook A515EA i3 (BQ975T) sở hữu cấu hình ổn định đến từ chip Intel thế hệ 11 cho bạn xử lý các công việc văn phòng hoặc đồ hoạ trơn tru 
cùng với n ại hình ưa nhìn, thanh lịch đây sẽ là sản phẩm mà đáng để bạn quan tâm.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (172, 110, N'Chiếc laptop 2 trong 1 Asus ZenBook UX371EA i7 (HL701TS) vừa là laptop vừa là máy tính bảng cực kỳ tiện dụng, cấu hình mạnh mẽ ổn định nhờ CPU Intel 
hế hệ 11 cùng màn hình OLED đem đến sức mạnh vượt trội, xử lý trơn tru mọi công việc và giải trí tuyệt hảo.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (173, 111, N'Laptop Asus TUF Gaming FX516PM i7 (HN023T) sở hữu dòng chip CPU Intel hế hệ 11 mạnh mẽ mang đến hiệu năng ấn tượng cho nhu cầu thiết kế đồ họa, 
làm việc văn phòng và cả chiến game cực chất.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (174, 112, N'Laptop Asus VivoBook A515EP i5 (BN334) là chiếc laptop đa năng phù hợp với đa dạng người dùng bởi nó thuộc phân khúc tầm trung nhưng lại đem đến trải 
nghiệm hiệu năng khá ấn tượng từ chip Intel thế hệ 11 mạnh mẽ, thỏa mãn mọi nhu cầu học tập, làm việc và giải trí.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (175, 113, N'Laptop Dell G3 15 i7 (P89F002G3500C) là chiếc laptop trong phân khúc gaming nhận được nhiều sự quan tâm đặc biệt bởi thiết kế phổ thông, đơn giản cùng 
hiệu năng tối ưu mạnh mẽ phù hợp với đa dạng người dùng cho cả nhu cầu học tập, làm việc và giải trí.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (176, 114, N'Laptop Dell G3 15 i7 (P89F002G3500C) là chiếc laptop trong phân khúc gaming nhận được nhiều sự quan tâm đặc biệt bởi thiết kế phổ thông, đơn giản cùng 
hiệu năng tối ưu mạnh mẽ phù hợp với đa dạng người dùng cho cả nhu cầu học tập, làm việc và giải trí.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (177, 115, N'Laptop Dell XPS 13 9310 i5 (70231343) sở hữu một cấu hình mạnh mẽ đáng gờm trong thân máy siêu mỏng nhẹ, màn hình tràn viền cùng với độ sáng 500 nits 
rực rỡ đáp ứng trọn vẹn mọi nhu cầu của dân văn phòng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (178, 116, N'Laptop Dell G5 15 5500 i7 (70225485) là mẫu laptop gaming được thiết kế theo phong cách lịch lãm đầy mạnh mẽ. Cấu hình mạnh, hiệu suất đồ họa cao cùng 
màn hình lý tưởng cho việc chơi game là những ưu điểm khiến chiếc laptop này trở nên nổi bật trong phân khúc. ');
INSERT INTO Introduce (Id, ProductId, data) VALUES (179, 117, N'Dell Inspiron 7501 i5 (N5I5012W) sở hữu thiết kế trẻ trung, hiện đại cùng hiệu năng mạnh mẽ, đáp ứng mượt mà các tác vụ văn phòng đến đồ họa chuyên 
nghiệp là sản phẩm tuyệt vời dành cho bạn.');

INSERT INTO Likes (Id, ProductId, Username, date, Likes) VALUES (44, 75, N'hsang', CAST(N'2021-11-30' AS Date), 1);
INSERT INTO Likes (Id, ProductId, Username, date, Likes) VALUES (46, 34, N'hsang', CAST(N'2021-12-01' AS Date), 1);
INSERT INTO Likes (Id, ProductId, Username, date, Likes) VALUES (47, 45, N'hsang', CAST(N'2021-12-06' AS Date), 1);
INSERT INTO Likes (Id, ProductId, Username, date, Likes) VALUES (48, 10, N'hsang', CAST(N'2021-12-06' AS Date), 1);
INSERT INTO Likes (Id, ProductId, Username, date, Likes) VALUES (49, 13, N'hsang', CAST(N'2021-12-06' AS Date), 1);
INSERT INTO Likes (Id, ProductId, Username, date, Likes) VALUES (50, 16, N'hsang', CAST(N'2021-12-06' AS Date), 1);
INSERT INTO Likes (Id, ProductId, Username, date, Likes) VALUES (51, 9, N'5', CAST(N'2021-12-06' AS Date), 1);


INSERT INTO OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (253, 274, 70, 833000, 1);
INSERT INTO OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (254, 275, 69, 1390000, 1);
INSERT INTO OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (255, 275, 72, 792000, 1);
INSERT INTO OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (256, 276, 1099, 75000, 1);
INSERT INTO OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (257, 276, 1096, 500000, 1);
INSERT INTO OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (258, 276, 1094, 1299000, 1);
INSERT INTO OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (259, 276, 1091, 6790000, 1);
INSERT INTO OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (260, 277, 1103, 70000, 1);
INSERT INTO OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (261, 277, 1101, 50000, 1);
INSERT INTO OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (262, 277, 1102, 70000, 1);
INSERT INTO OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (263, 278, 1102, 70000, 1);
INSERT INTO OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (264, 278, 1103, 70000, 1);
INSERT INTO OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (265, 279, 17, 11990000, 1);
INSERT INTO OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (266, 280, 13, 16490000, 1);
INSERT INTO OrderDetails (Id, OrderId, ProductId, Price, Quantity) VALUES (267, 281, 13, 16490000, 1);


INSERT INTO Orders (Id, Username, CreateDate, Address, NguoiNhan, SDT, DiaChiNN, TrangThai, Codeid, CHid, TongTien, hoanthanh) VALUES (274, N'hsang', CAST(N'2021-12-05 13:04:17.867' AS DateTime), N'Đông Hòa', N'Sang', N'0388848519', N'Kiên Giang', N'Đã đặt hàng', 4, 4, 749700, 1);
INSERT INTO Orders (Id, Username, CreateDate, Address, NguoiNhan, SDT, DiaChiNN, TrangThai, Codeid, CHid, TongTien, hoanthanh) VALUES (275, N'hsang', CAST(N'2020-12-05 13:04:17.903' AS DateTime), N'Đông Hòa', N'Sang', N'0388848519', N'Kiên Giang', N'Đã đặt hàng', NULL, 1, 2182000, 1);
INSERT INTO Orders (Id, Username, CreateDate, Address, NguoiNhan, SDT, DiaChiNN, TrangThai, Codeid, CHid, TongTien, hoanthanh) VALUES (276, N'hsang', CAST(N'2020-12-05 19:15:22.250' AS DateTime), N'123', N'Sang', N'0388848519', N'kien giang', N'Đã đặt hàng', 5, 1, 7797600, 1);
INSERT INTO Orders (Id, Username, CreateDate, Address, NguoiNhan, SDT, DiaChiNN, TrangThai, Codeid, CHid, TongTien, hoanthanh) VALUES (277, N'hsang', CAST(N'2021-11-06 19:18:15.407' AS DateTime), N'22', N'222', N'222', N'22', N'Đã đặt hàng', NULL, 1, 190000, 1);
INSERT INTO Orders (Id, Username, CreateDate, Address, NguoiNhan, SDT, DiaChiNN, TrangThai, Codeid, CHid, TongTien, hoanthanh) VALUES (278, N'hsang', CAST(N'2021-01-05 19:18:55.877' AS DateTime), N'123', N'123', N'123', N'123', N'Đã đặt hàng', NULL, 1, 140000, 1);
INSERT INTO Orders (Id, Username, CreateDate, Address, NguoiNhan, SDT, DiaChiNN, TrangThai, Codeid, CHid, TongTien, hoanthanh) VALUES (279, N'hsang', CAST(N'2021-12-05 19:20:52.737' AS DateTime), N'22', N'12', N'22', N'222', N'Đã đặt hàng', 4, 4, 10791000, 1);
INSERT INTO Orders (Id, Username, CreateDate, Address, NguoiNhan, SDT, DiaChiNN, TrangThai, Codeid, CHid, TongTien, hoanthanh) VALUES (280, N'hsang', CAST(N'2021-12-06 11:54:07.160' AS DateTime), N'123', N'sang', N'123', N'123', N'Đã đặt hàng', NULL, 4, 16490000, 1);
INSERT INTO Orders (Id, Username, CreateDate, Address, NguoiNhan, SDT, DiaChiNN, TrangThai, Codeid, CHid, TongTien, hoanthanh) VALUES (281, N'hsang', CAST(N'2000-12-07 09:57:04.440' AS DateTime), N'dđ', N'Sang', N'0388848519', N'dd', N'Đã đặt hàng', NULL, 4, 16490000, 1);


INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (9, N'Iphone12_Xanh', 20490000, 10, CAST(N'2021-09-25' AS Date), N'iphone-12-xanh-duong-600x600.jpg', 1, 3, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (10, N'Iphone12_Pro_Mau_Xanh_Duong', 30990000, 10, CAST(N'2021-09-25' AS Date), N'iphone-12-pro-max-xanh-duong-new.jpg', 1, 3, 4);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (12, N'Iphone 12 pro bac', 27990000, 11, CAST(N'2021-09-25' AS Date), N'iphone-12-pro-bac-new.jpg', 0, 3, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (13, N'Iphone 12 mimi den', 16490000, 8, CAST(N'2021-09-25' AS Date), N'iphone-12-mini-den-15-600x600.jpg', 1, 3, 4);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (16, N'Iphone xr hop mau den', 12490000, 10, CAST(N'2021-09-25' AS Date), N'iphone-xr-hopmoi-den-600x600.jpg', 1, 3, 4);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (17, N'Iphone se 128gb 2020 do', 11990000, 10, CAST(N'2021-09-26' AS Date), N'iphone-se-128gb-2020-do-600x600.jpg', 1, 3, 4);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (19, N'Iphone-se 2020 trang', 10490000, 10, CAST(N'2021-09-26' AS Date), N'iphone-se-2020-trang-600x600-600x600.jpg', 1, 3, 4);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (20, N'Iphone xi xanh la', 14990000, 10, CAST(N'2021-09-26' AS Date), N'iphone-xi-xanhla-600x600.jpg', 1, 3, 4);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (23, N'SamSung galaxy z fold 3 silver', 41990000, 10, CAST(N'2021-09-26' AS Date), N'samsung-galaxy-z-fold-3-silver-600x600.jpg', 1, 4, 4);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (24, N'SamSung galaxy a52 5g thumb black', 9990000, 11, CAST(N'2021-09-26' AS Date), N'samsung-galaxy-a52-5g-thumb-black.jpg', 1, 4, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (25, N'SamSung galaxy z flip cream 6', 24990000, 10, CAST(N'2021-09-26' AS Date), N'samsung-galaxy-z-flip-3-cream-600x600.jpg', 1, 4, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (26, N'SamSung galaxy z fold 2 den', 50000000, 11, CAST(N'2021-09-26' AS Date), N'samsung-galaxy-z-fold-2-den-600x600.jpg', 1, 4, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (27, N'SamSung galaxy s21 tim', 14990000, 11, CAST(N'2021-09-26' AS Date), N'samsung-galaxy-s21-tim-600x600.jpg', 1, 4, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (28, N'realme-c21y-black-600x600', 3690000, 11, CAST(N'2021-09-26' AS Date), N'realme-c21y-black-600x600.jpg', 1, 5, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (31, N'realme-c25s-grey-7-600x600', 4990000, 11, CAST(N'2021-09-26' AS Date), N'realme-c25s-grey-7-600x600.jpg', 1, 5, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (34, N'realme-8-pro-vang-600x600', 8690000, 11, CAST(N'2021-09-26' AS Date), N'realme-8-pro-vang-600x600.jpg', 1, 5, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (35, N'realme-8-pro-balck-600x600', 8690000, 10, CAST(N'2021-09-26' AS Date), N'realme-8-pro-balck-600x600.jpg', 1, 5, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (37, N'realme-8-silver-600x600', 7290000, 11, CAST(N'2021-09-26' AS Date), N'realme-8-silver-600x600.jpg', 1, 5, 4);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (38, N'Vivo y12s den new', 3790000, 1, CAST(N'2021-09-26' AS Date), N'vivo-y12s-den-new-600x600-600x600.jpg', 1, 8, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (39, N'Vivo y53s xanh 600', 6990000, 10, CAST(N'2021-09-26' AS Date), N'vivo-y53s-xanh-600x600.jpg', 1, 8, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (41, N'Vivo v21 5g xanh den', 9490000, 1, CAST(N'2021-09-26' AS Date), N'vivo-v21-5g-xanh-den-600x600.jpg', 1, 8, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (42, N'Vivo den', 7790000, 1, CAST(N'2021-09-26' AS Date), N'vivov202021den-600x600.jpg', 1, 8, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (44, N'Vivo v20 600 xanh hong', 7790000, 1, CAST(N'2021-09-26' AS Date), N'vivo-v20-600-xanh-hong-2-600x600.jpg', 1, 8, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (45, N'Vsmart star 5 black', 279000, 1, CAST(N'2021-09-26' AS Date), N'vsmart-star-5-thumb-black-600x600.jpg', 1, 9, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (46, N'Vsmart aris pro green', 5990000, 1, CAST(N'2021-09-26' AS Date), N'vsmart-aris-pro-green-600jpg-600x600.jpg', 1, 9, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (47, N'Vsmart aris xam', 5190000, 1, CAST(N'2021-09-26' AS Date), N'vsmart-aris-xam-600x600-600x600.jpg', 1, 9, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (48, N'Vsmart live 4 xanh la', 3590000, 1, CAST(N'2021-09-26' AS Date), N'vsmart-live-4-xanh-la-600x600.jpg', 1, 9, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (50, N'Vsmart joy 4-6gb trang', 3290000, 1, CAST(N'2021-09-26' AS Date), N'vsmart-joy-4-6gb-trang-600x600-600x600.jpg', 1, 9, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (52, N'Xiaomi 11 lite 4g blue', 7590000, 1, CAST(N'2021-09-26' AS Date), N'xiaomi-mi-11-lite-4g-blue-600x600.jpg', 1, 10, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (54, N'Xiaomi redmi note xanh bong dem', 5990000, 1, CAST(N'2021-09-26' AS Date), N'xiaomi-redmi-note-10-5g-xanh-bong-dem.jpg', 1, 10, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (55, N'Xiaomi 11 xanh duong', 16990000, 1, CAST(N'2021-09-26' AS Date), N'xiaomi-mi-11-xanhduong.jpg', 1, 10, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (56, N'Xiaomi 10t pro den', 12490000, 1, CAST(N'2021-09-26' AS Date), N'xiaomi-mi-10t-pro-den-600x600.jpg', 1, 10, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (57, N'Xiaomi redmi note pro xam', 7490000, 1, CAST(N'2021-09-26' AS Date), N'xiaomi-redmi-note-10-pro-thumb-xam.jpg', 1, 10, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (58, N'Oppo reno6 aurora', 9490000, 1, CAST(N'2021-09-26' AS Date), N'oppo-reno6-z-5g-aurora-1-600x600.jpg', 1, 11, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (59, N'Oppo reno6 5g aurora', 12990000, 1, CAST(N'2021-09-26' AS Date), N'oppo-reno6-5g-aurora-600x600.jpg', 1, 11, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (60, N'Oppo a74 blue 9', 6690000, 1, CAST(N'2021-09-26' AS Date), N'oppo-a74-blue-9-600x600.jpg', 1, 11, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (61, N'Oppo find x3 pro black', 26990000, 1, CAST(N'2021-09-26' AS Date), N'oppo-find-x3-pro-black-001-1-600x600.jpg', 1, 11, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (62, N'Oppo reno5 5g thumb', 11390000, 1, CAST(N'2021-09-26' AS Date), N'oppo-reno5-5g-thumb-600x600.jpg', 1, 11, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (63, N'Apple Watch s3 GPS', 20000000, 0, CAST(N'2021-09-26' AS Date), N'Apple Watch S3 GPS.jpg', 1, 12, 4);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (64, N'Apple Watch S5 LTE', 19541000, 0, CAST(N'2021-09-26' AS Date), N'Apple Watch S5 LTE 44mm viền thép dây thép bạc.jpg', 1, 12, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (65, N'Apple Watch S6 40mm', 10191000, 0, CAST(N'2021-09-26' AS Date), N'Apple Watch S6 40mm viền nhôm dây cao su hồng.jpg', 1, 12, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (66, N'Apple Watch S6 LTE', 18691000, 0, CAST(N'2021-09-26' AS Date), N'Apple Watch S6 LTE.jpg', 1, 12, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (67, N'Apple Watch SE LTE', 10191000, 0, CAST(N'2021-09-26' AS Date), N'Apple Watch SE LTE.jpg', 1, 12, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (68, N'Apple Watch SE', 7641000, 0, CAST(N'2021-09-26' AS Date), N'Apple Watch SE.jpg', 1, 12, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (69, N'BeU Active', 1390000, 0, CAST(N'2021-09-26' AS Date), N'BeU Active 1.jpg', 1, 13, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (70, N'BeU PT1', 833000, 0, CAST(N'2021-09-26' AS Date), N'BeU PT1.jpg', 1, 13, 4);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (72, N'BeU PT2', 792000, 0, CAST(N'2021-09-26' AS Date), N'BeU PT2.jpg', 1, 13, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (73, N'BeU Sporty 1', 159000, 1, CAST(N'2021-09-26' AS Date), N'BeU Sporty 1.jpg', 1, 13, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (74, N'BeU Watch KW09', 1752000, 1, CAST(N'2021-09-26' AS Date), N'BeU Watch KW09.jpg', 1, 13, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (75, N'BeU B2', 552000, 1, CAST(N'2021-09-26' AS Date), N'Đồng hồ thông minh BeU B2.jpg', 1, 13, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (76, N'Garmin Enduro', 19990000, 1, CAST(N'2021-09-26' AS Date), N'Garmin Enduro.jpg', 1, 14, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (77, N'Garmin Fenix 6 Pro Solar', 21490000, 1, CAST(N'2021-09-26' AS Date), N'Garmin Fenix 6 Pro Solar.jpg', 1, 14, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (78, N'Garmin Fenix 6', 22490000, 1, CAST(N'2021-09-26' AS Date), N'Garmin Fenix 6.jpg', 1, 14, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (79, N'Garmin Fenix 6x Sapphire', 21490000, 1, CAST(N'2021-09-26' AS Date), N'Garmin Fenix 6X Sapphire.jpg', 1, 14, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (80, N'Garmin Forerunner 945', 14990000, 1, CAST(N'2021-09-26' AS Date), N'Garmin Forerunner 945.jpg', 1, 14, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (81, N'Garmin Lily', 4990000, 1, CAST(N'2021-09-26' AS Date), N'Garmin Lily.jpg', 1, 14, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (82, N'Kidcare', 792000, 1, CAST(N'2021-09-26' AS Date), N'Kidcare 06S.jpg', 1, 15, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (83, N'Kidcare 08S', 1112000, 11, CAST(N'2021-09-26' AS Date), N'Kidcare 08S.jpg', 1, 15, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (84, N'Kidcare 26', 1032000, 11, CAST(N'2021-09-26' AS Date), N'Kidcare 26.jpg', 1, 15, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (85, N'Kidcare S6 Xanh', 1432000, 11, CAST(N'2021-09-26' AS Date), N'Kidcare S6 Xanh.jpg', 1, 15, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (86, N'Kidcare S6', 1432000, 11, CAST(N'2021-09-26' AS Date), N'Kidcare S6.jpg', 1, 15, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (87, N'Kidcare S4', 1832000, 1, CAST(N'2021-09-26' AS Date), N'Kidcare S8.jpg', 1, 15, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (88, N'Oppo Band', 711000, 1, CAST(N'2021-09-26' AS Date), N'Oppo Band.jpg', 1, 16, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (89, N'Oppo Watch 41mm day silicone den', 4312000, 1, CAST(N'2021-09-26' AS Date), N'Oppo Watch 41mm dây silicone đen.jpg', 1, 16, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (90, N'Oppo Watch 41mm day silicone', 4752000, 1, CAST(N'2021-09-26' AS Date), N'Oppo Watch 41mm dây silicone.jpg', 1, 16, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (91, N'Oppo Watch 41mm', 4312000, 1, CAST(N'2021-09-26' AS Date), N'Oppo Watch 41mm.jpg', 1, 16, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (92, N'Oppo Watch 46mm day silicone den', 7990000, 1, CAST(N'2021-09-26' AS Date), N'Oppo Watch 46mm dây silicone đen.jpg', 1, 16, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (93, N'Oppo Watch 46mm', 5752000, 1, CAST(N'2021-09-26' AS Date), N'Oppo Watch 46mm.jpg', 1, 16, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (95, N'Samsung Galaxy Watch 3 45mm titanium', 1149000, 1, CAST(N'2021-09-26' AS Date), N'Samsung Galaxy Watch 3 45mm titanium.jpg', 1, 17, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (97, N'Samsung Galaxy', 6990000, 1, CAST(N'2021-09-26' AS Date), N'Samsung Galaxy Watch 3 LTE.jpg', 1, 17, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (98, N'Samsung Galaxy Watch 3', 4990000, 1, CAST(N'2021-09-26' AS Date), N'Samsung Galaxy Watch 3.jpg', 1, 17, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (99, N'Samsung Galaxy Watch 4 LTE', 9490000, 1, CAST(N'2021-09-26' AS Date), N'Samsung Galaxy Watch 4 LTE.jpg', 1, 17, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (100, N'Samsung Galaxy Watch 4', 8990000, 1, CAST(N'2021-09-26' AS Date), N'Samsung Galaxy Watch 4.jpg', 1, 17, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (101, N'Samsung Galaxy Watch Active 2', 5990000, 1, CAST(N'2021-09-26' AS Date), N'Samsung Galaxy Watch Active 2.jpg', 1, 17, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (102, N'Laptop Acer Aspire 7 Gaming', 20490000, 1, CAST(N'2021-09-26' AS Date), N'20.490.000.jpg', 1, 18, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (103, N'Laptop Acer Aspire A315', 11690000, 1, CAST(N'2021-09-26' AS Date), N'11.690.000.jpg', 1, 18, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (104, N'Laptop Acer Swift 3 SF314', 20690000, 1, CAST(N'2021-09-26' AS Date), N'20.690.000.jpg', 1, 18, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (105, N'Laptop Acer Aspire 7 Gaming A715', 18990000, 1, CAST(N'2021-09-26' AS Date), N'18.990.000.jpg', 1, 18, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (106, N'Laptop Acer Nitro 5 Gaming An515', 28990000, 1, CAST(N'2021-09-26' AS Date), N'28.990.000.jpg', 1, 18, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (108, N'Laptop Asus TUF Gaming FX506LH', 21490000, 1, CAST(N'2021-09-26' AS Date), N'Asus TUF Gaming FX506LH i5.jpg', 1, 19, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (109, N'Laptop Asus VivoBook A515EA i3 ', 16190000, 1, CAST(N'2021-09-26' AS Date), N'Asus VivoBook A515EA i3.jpg', 1, 19, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (110, N'Laptop Asus ZenBook UX371EA i7', 39490000, 1, CAST(N'2021-09-26' AS Date), N'39.490.000Đ.jpg', 1, 19, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (111, N'Laptop Asus TUF Gaming FX516PM i7', 32490000, 1, CAST(N'2021-09-26' AS Date), N'32.490.000Đ.jpg', 1, 19, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (112, N'Laptop Asus VivoBook A515EP i5', 20390000, 1, CAST(N'2021-09-26' AS Date), N'20.390.000Đ.jpg', 1, 19, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (113, N'Laptop Dell Gaming G3 15 i7', 31290000, 1, CAST(N'2021-09-26' AS Date), N'31.290.000.jpg', 1, 20, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (114, N'Laptop Dell Gaming G3 15 i7', 27290000, 1, CAST(N'2021-09-26' AS Date), N'27.290.000.jpg', 1, 20, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (115, N'Laptop Dell XPS 13 9310 i5', 41490000, 1, CAST(N'2021-09-26' AS Date), N'41.490.000.jpg', 1, 20, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (116, N'Laptop Dell Gaming G5 15 5500 i7', 30590000, 1, CAST(N'2021-09-26' AS Date), N'30.590.000.jpg', 1, 20, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (117, N'Laptop Dell Inspiron 7501 i5', 29990000, 1, CAST(N'2021-09-26' AS Date), N'29.990.000.jpg', 1, 20, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (118, N'Laptop HP Pavilion 15 eg0505TU i5', 18590000, 1, CAST(N'2021-09-26' AS Date), N'18.590.000Đ.jpg', 1, 21, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (119, N'Laptop HP 15s fq2559TU i5', 17590000, 1, CAST(N'2021-09-26' AS Date), N'17.590.000Đ.jpg', 1, 21, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (120, N'Laptop HP Omen 15 ek0078TX i7', 51740000, 1, CAST(N'2021-09-26' AS Date), N'51.740.000Đ.jpg', 1, 21, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (121, N'Laptop HP EliteBook X360 1040 G8 i7', 49090000, 1, CAST(N'2021-09-26' AS Date), N'49.090.000.jpg', 1, 21, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (122, N'Laptop HP Envy 13 ba1030TU i7', 28890000, 1, CAST(N'2021-09-26' AS Date), N'28.890.000.jpg', 1, 21, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (123, N'Laptop Lenovo IdeaPad Slim 5 15ITL05 i5', 18090000, 1, CAST(N'2021-09-26' AS Date), N'18.090.000.jpg', 1, 22, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (124, N'Laptop Lenovo IdeaPad 3 15ITL6 i5', 17590000, 1, CAST(N'2021-09-26' AS Date), N'17.590.000.jpg', 1, 22, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (125, N'Laptop Lenovo Ideapad 5 15ITL05 i5', 20590000, 1, CAST(N'2021-09-26' AS Date), N'20.590.000.jpg', 1, 22, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (129, N'Laptop Lenovo Ideapad Gaming 3 15IMH05 i7', 24990000, 1, CAST(N'2021-09-26' AS Date), N'24.990.000.jpg', 1, 22, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (130, N'Laptop Lenovo Yoga 9 14ITL5 i7', 47990000, 1, CAST(N'2021-09-26' AS Date), N'47.990.000.jpg', 1, 22, 1);
 
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (133, N'Laptop LG Gram 16 2021 i7', 50890000, 1, CAST(N'2021-09-26' AS Date), N'50.890.000.jpg', 1, 24, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1007, N'Laptop LG Gram 16 2021 i7', 48890000, 1, CAST(N'2021-09-26' AS Date), N'48.890.000.jpg', 1, 24, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1008, N'Laptop LG Gram 14 2021 i7', 48890000, 1, CAST(N'2021-09-26' AS Date), N'28.990.000.jpg', 1, 24, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1009, N'Laptop LG Gram 14 i5', 28990000, 1, CAST(N'2021-09-26' AS Date), N'MacBook Pro M1 2020.jpg', 1, 24, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1010, N'MacBook Pro M1 2020', 33190000, 1, CAST(N'2021-09-26' AS Date), N'MacBook Air M1 2020.jpg', 1, 25, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1011, N'MacBook Air M1', 7490000, 1, CAST(N'2021-09-26' AS Date), N'MacBook Air M1 2020 8GB512GBSilver.jpg', 1, 25, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1013, N'MacBook Air M1 2020 ', 33190000, 1, CAST(N'2021-09-26' AS Date), N'MacBook Pro M1 2020 8GB512GBSilver.jpg', 1, 25, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1014, N'MacBook Pro M1 2020 Silver', 37990000, 1, CAST(N'2021-09-26' AS Date), N'MacBook Pro M1 2020 16GB1TB SSDSpace Grey.jpg', 1, 25, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1015, N'MacBook Pro M1 2020 16GB1TB SSDSpace Grey', 50290000, 1, CAST(N'2021-09-26' AS Date), N'31.990.000.jpg', 1, 25, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1016, N'Laptop MSI Gaming GF65 10UE i7', 31990000, 1, CAST(N'2021-09-26' AS Date), N'29.490.000.jpg', 1, 26, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1017, N'Laptop MSI Katana Gaming GF66 11UC i7', 29490000, 1, CAST(N'2021-09-26' AS Date), N'52.490.00.jpg', 1, 26, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1018, N'Laptop MSI Gaming GP76 11UG i7', 52490000, 1, CAST(N'2021-09-27' AS Date), N'39.490.000.jpg', 1, 26, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1019, N'Laptop MSI Summit E13 Flip i7', 39490000, 1, CAST(N'2021-09-27' AS Date), N'32.490.000.jpg', 1, 26, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1020, N'Laptop MSI Gaming Leopard 10SDK GL65 i7', 32490000, 1, CAST(N'2021-09-27' AS Date), N'28.590.000.jpg', 1, 26, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1021, N'Laptop MSI Gaming GF65 Thin 10UE i5', 28590000, 1, CAST(N'2021-09-27' AS Date), N'24.490.000.jpg', 1, 26, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1022, N'Laptop MSI Gaming GL65 Leopard 10SCXK i7', 24490000, 1, CAST(N'2021-09-27' AS Date), N'huawei-t10s-600x600-600x600.jpg', 1, 26, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1023, N'Máy tính bảng Huawei MatePad T10s ', 50140000, 1, CAST(N'2021-09-27' AS Date), N'huawei-matepad-xanh-600x600-600x600.jpg', 1, 1005, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1024, N'Máy tính bảng Huawei MatePad 64GB ', 6590000, 1, CAST(N'2021-09-27' AS Date), N'huawei-matepad-xam-128gb-600x600.jpg', 1, 1005, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1025, N'Máy tính bảng Huawei MatePad 128GB ', 7490000, 1, CAST(N'2021-09-27' AS Date), N'huawei-matepad-t8-xanh-600x600.jpg', 1, 1005, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1026, N'Máy tính bảng Huawei MatePad T8 ', 3090000, 1, CAST(N'2021-09-27' AS Date), N'ipad-pro-2021-129-inch-silver-600x600.jpg', 1, 1005, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1027, N'Máy tính bảng iPad Pro M1 ', 38490000, 1, CAST(N'2021-09-27' AS Date), N'ipad-pro-2021-11-inch-silver-600x600.jpg', 1, 1006, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1028, N'Máy tính bảng iPad Pro M1 11 inch ', 28990000, 1, CAST(N'2021-09-27' AS Date), N'ipad-pro-2021-11-inch-silver-600x600.jpg', 1, 1006, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1029, N'Máy tính bảng iPad Pro 12.9 inch ', 26790000, 1, CAST(N'2021-09-27' AS Date), N'ipad-pro-11-inch-wifi-cellular-128gb-2020-xam.jpg', 1, 1006, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1030, N'Máy tính bảng iPad Pro 11 inch ', 26290000, 1, CAST(N'2021-09-27' AS Date), N'ipad-air-4-wifi-64gb-2020-xanhla.jpg', 1, 1006, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1031, N'Máy tính bảng iPad Air 4 ', 21290000, 1, CAST(N'2021-09-27' AS Date), N'ipad-mini-79-inch-wifi-cellular-64gb-2019.jpg', 1, 1006, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1032, N'Máy tính bảng iPad mini 7.9 inch ', 15790000, 1, CAST(N'2021-09-27' AS Date), N'ipad-gen-8-cellular-vang-new.jpg', 1, 1006, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1034, N'Máy tính bảng iPad 8 Wifi Cellular 128GB ', 15790000, 1, CAST(N'2021-09-27' AS Date), N'tab-m10-fhd-plus-600-600x600.jpg', 1, 1006, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1035, N'Máy tính bảng Lenovo Tab M10 ', 5990000, 1, CAST(N'2021-09-27' AS Date), N'tab-m10-gen-2-600x600-600x600.jpg', 1, 1007, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1036, N'Máy tính bảng Lenovo Tab M10 - Gen 2', 4690000, 1, CAST(N'2021-09-27' AS Date), N'lenovo-tab-a22-xam-600x600.jpg', 1, 1007, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1037, N'Máy tính bảng Lenovo Tab M8 ', 3790000, 1, CAST(N'2021-09-27' AS Date), N'lenovo-tab-m7-600x600-1-600x600.jpg', 1, 1007, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1038, N'Máy tính bảng Lenovo Tab M7', 2240000, 1, CAST(N'2021-09-27' AS Date), N'lenovo-tab-e7-tb-7104i-600x600-600x600.jpg', 1, 1007, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1039, N'Máy tính bảng Lenovo Tab E7 ', 1990000, 1, CAST(N'2021-09-27' AS Date), N'masstel-tab-10-ultra-vangdong-600x600-600x600.jpg', 1, 1007, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1040, N'Máy tính bảng Masstel Tab 10 Ultra', 3590000, 1, CAST(N'2021-09-27' AS Date), N'masstel-tab-10-den-600x600-600x600.jpg', 1, 1008, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1041, N'Máy tính bảng Masstel Tab10 4G', 3290000, 1, CAST(N'2021-09-27' AS Date), N'masstel-tab10-pro-vang-new-600x600.jpg', 1, 1008, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1042, N'Máy tính bảng Masstel Tab 10 Pro', 2240000, 1, CAST(N'2021-09-27' AS Date), N'masstel-tab10-pro-vang-new-600x600.jpg', 1, 1008, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1043, N'Máy tính bảng Samsung Galaxy Tab S7 FE', 13990000, 1, CAST(N'2021-09-27' AS Date), N'samsung-galaxy-tab-s7-fe-green-600x600.jpg', 1, 1009, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1044, N'Máy tính bảng Samsung Galaxy Tab A7 Lite', 4490000, 1, CAST(N'2021-09-27' AS Date), N'samsung-galaxy-tab-a7-lite-sliver-600x600.jpg', 1, 1009, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1045, N'Máy tính bảng Samsung Galaxy Tab S7', 18990000, 1, CAST(N'2021-09-27' AS Date), N'samsung-galaxy-tab-s7- ld-new-600x600.jpg', 1, 1009, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1046, N'Máy tính bảng Samsung Galaxy Tab A8 ', 3690000, 1, CAST(N'2021-09-27' AS Date), N'samsung-galaxy-tab-a8-t295-2019-black-1.jpg', 1, 1009, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1047, N'Máy tính bảng Samsung Galaxy Tab S6 Lite', 9990000, 1, CAST(N'2021-09-27' AS Date), N'samsung-galaxy-tab-s6-lite-600x600-2-600x600.jpg', 1, 1009, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1091, N'AirPods Pro Wireless Charge Apple MWP22', 6790000, 0, CAST(N'2020-02-02' AS Date), N'AirPods Pro Wireless Charge Apple MWP22(2).jpg', 1, 1018, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1092, N'Beats Flex MYMC2 MYMD2', 1290000, -1, CAST(N'2021-10-10' AS Date), N'Beats Flex MYMC2 MYMD2(2).jpg', 1, 1018, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1094, N'True wireless Belkin Soundform Move PAC001', 1299000, 0, CAST(N'2021-10-11' AS Date), N'True wireless Belkin Soundform Move PAC001(2).jpg', 1, 1018, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1095, N'True Wireless Mozard TS13', 350000, -1, CAST(N'2021-10-11' AS Date), N'True Wireless Mozard TS13(2).jpg', 1, 1018, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1096, N'True Wireless Rezo T206', 500000, 0, CAST(N'2021-10-11' AS Date), N'True Wireless Rezo T206(2).jpg', 1, 1018, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1099, N'Bluetooth Cosano HD-P7', 75000, 0, CAST(N'2021-10-11' AS Date), N'Bluetooth Cosano HD-P7(2).jpg', 1, 1019, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1100, N'Bluetooth Tripod Xmobile K06', 150000, 1, CAST(N'2021-10-11' AS Date), N'Bluetooth Tripod Xmobile K06(2).jpg', 1, 1019, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1101, N'Mini Cosano CW1', 50000, 1, CAST(N'2021-10-11' AS Date), N'Mini Cosano CW1(2).jpg', 1, 1019, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1102, N'Osmia OW2', 70000, 1, CAST(N'2021-10-11' AS Date), N'Osmia OW2(2).jpg', 1, 1019, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1103, N'Osmia OW4', 70000, 1, CAST(N'2021-10-11' AS Date), N'Osmia OW4(2).jpg', 1, 1019, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1104, N'Osmia OW5', 70000, 1, CAST(N'2021-10-11' AS Date), N'Osmia OW5(2).jpg', 1, 1019, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1105, N'Cosano PH-Z1', 100000, 1, CAST(N'2021-10-11' AS Date), N'Cosano PH-Z1(2).jpg', 1, 1022, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1106, N'Esaver JHD -278', 160000, 1, CAST(N'2021-10-11' AS Date), N'Esaver JHD -278(2).jpg', 1, 1022, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1107, N'Esaver JHD-40HD12', 60000, 1, CAST(N'2021-10-11' AS Date), N'Esaver JHD-40HD12(2).jpg', 1, 1022, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1108, N'Esaver JHD-171', 50000, 1, CAST(N'2021-10-11' AS Date), N'Esaver JHD-171(2).jpg', 1, 1022, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1109, N'Harman Kardon Aura Studio 3', 6900000, 1, CAST(N'2021-10-11' AS Date), N'Harman Kardon Aura Studio 3(2).jpg', 1, 1023, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1110, N'Loa JBL Clip 4', 500000, 1, CAST(N'2021-10-11' AS Date), N'Loa JBL Clip 4(2).jpg', 1, 1023, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1112, N'Loa JBL   3', 500000, 1, CAST(N'2021-10-11' AS Date), N'Loa JBL   3(2).jpg', 1, 1023, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1113, N'Sony SRS-XB13', 1290000, 1, CAST(N'2021-10-11' AS Date), N'Sony SRS-XB13(2).jpg', 1, 1023, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1114, N'Anker PowerCore Slim A1231', 1000000, 1, CAST(N'2021-10-11' AS Date), N'Anker PowerCore Slim A1231(2).jpg', 1, 1024, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1115, N'AVA+ PB100S', 440000, 1, CAST(N'2021-10-11' AS Date), N'AVA+ PB100S(2).jpg', 1, 1024, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1116, N'Belkin Pocket Power BPB001', 760000, 1, CAST(N'2021-10-11' AS Date), N'Belkin Pocket Power BPB001.jpg', 1, 1024, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1117, N'Energizer UE10054BK', 330000, 1, CAST(N'2021-10-11' AS Date), N'Energizer UE10054BK(2).jpg', 1, 1024, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1118, N'eValu PA Croco', 600000, 1, CAST(N'2021-10-11' AS Date), N'eValu PA Croco(2).jpg', 1, 1024, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1119, N'Xmobile PowerSlim PJ JP213', 500000, 1, CAST(N'2021-10-11' AS Date), N'Xmobile PowerSlim PJ JP213(2).jpg', 1, 1024, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1120, N'Harman Kardon Aura Studio 3', 6900000, 1, CAST(N'2021-10-12' AS Date), N'Harman Kardon Aura Studio 3(2).jpg', 1, 1026, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1122, N'Loa JBL Clip 4', 500000, 1, CAST(N'2021-10-12' AS Date), N'Loa JBL Clip 4(2).jpg', 1, 1026, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1123, N'Loa JBL   3', 500000, 1, CAST(N'2021-10-12' AS Date), N'Loa JBL   3(2).jpg', 1, 1026, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1124, N'Sony SRS-XB13', 1290000, 1, CAST(N'2021-10-12' AS Date), N'Sony SRS-XB13(2).jpg', 1, 1026, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1125, N'Anker PowerCore Slim A1231', 1000000, 1, CAST(N'2021-10-12' AS Date), N'Anker PowerCore Slim A1231(2).jpg', 1, 1027, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1126, N'AVA+ PB100S', 440000, 1, CAST(N'2021-10-12' AS Date), N'AVA+ PB100S(2).jpg', 1, 1027, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1127, N'Belkin Pocket Power BPB001', 760000, 1, CAST(N'2021-10-12' AS Date), N'Belkin Pocket Power BPB001.jpg', 1, 1027, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1128, N'Energizer UE10054BK', 330000, 1, CAST(N'2021-10-12' AS Date), N'Energizer UE10054BK(2).jpg', 1, 1027, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1129, N'eValu PA Croco', 600000, 1, CAST(N'2021-10-12' AS Date), N'eValu PA Croco(2).jpg', 1, 1027, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1130, N'Xmobile PowerSlim PJ JP213', 500000, 1, CAST(N'2021-10-12' AS Date), N'Xmobile PowerSlim PJ JP213.jpg', 1, 1027, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1133, N'AirPods Pro Wireless Charge Apple MWP22', 6790000, 1, CAST(N'2021-10-12' AS Date), N'AirPods Pro Wireless Charge Apple MWP22(2).jpg', 1, 1028, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1134, N'Beats Flex MYMC2 MYMD2', 1290000, 1, CAST(N'2021-10-12' AS Date), N'Beats Flex MYMC2 MYMD2(2).jpg', 1, 1028, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1135, N'True wireless Belkin Soundform Move PAC001', 1299000, 1, CAST(N'2021-10-12' AS Date), N'True wireless Belkin Soundform Move PAC001(2).jpg', 1, 1028, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1136, N'True Wireless Mozard TS13', 350000, 1, CAST(N'2021-10-12' AS Date), N'True Wireless Mozard TS13(2).jpg', 1, 1028, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1137, N'True Wireless Rezo T206(2).jpg', 500000, 1, CAST(N'2021-10-12' AS Date), N'True Wireless Rezo T206(2).jpg', 1, 1028, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1141, N'Bàn Phím Cơ Có Dây Gaming Razer', 2912000, 1, CAST(N'2021-10-13' AS Date), N'a1.jpg', 1, 1029, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1142, N'Bàn Phím Cơ Có Dây Gaming Rapoo V500Pro Vàng Xanh', 990000, 1, CAST(N'2021-10-13' AS Date), N'a7.jpg', 1, 1029, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1143, N'Thông số kỹ thuật Bàn Phím Không Dây Logitech K580', 989000, 1, CAST(N'2021-10-13' AS Date), N'a13.jpg', 1, 1029, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1144, N'Bàn Phím Cơ Có Dây Gaming Corsair K63 ', 1575000, 1, CAST(N'2021-10-13' AS Date), N'a19.jpg', 1, 1029, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1146, N'Bàn Phím Cơ Có Dây Gaming Silent Razer Lite', 1912000, 1, CAST(N'2021-10-13' AS Date), N'a26.jpg', 1, 1029, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1147, N'Chuột Không Dây Bluetooth Rapoo M160 Đen', 220000, 1, CAST(N'2021-10-13' AS Date), N'b1.jpg', 1, 1030, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1148, N'Chuột Không Dây Gaming Razer Basilisk x HyperSpeed', 1064000, 1, CAST(N'2021-10-13' AS Date), N'b6.jpg', 1, 1030, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1149, N'Chuột Bluetooth Gaming Corsair Harpoon RGB Đen', 1251000, 1, CAST(N'2021-10-13' AS Date), N'b11.jpg', 1, 1030, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1150, N'Chuột Bluetooth Apple MLA02', 1992000, 1, CAST(N'2021-10-13' AS Date), N'b16.jpg', 1, 1030, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1151, N'Chuột không dây Logitech MX Anywhere 3', 1999000, 1, CAST(N'2021-10-13' AS Date), N'b20.jpg', 1, 1030, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1152, N'Tai nghe chụp tai Rapoo H100 Đen', 250000, 1, CAST(N'2021-10-13' AS Date), N'c1.jpg', 1, 1031, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1157, N'Tai nghe chụp tai Bluetooth AirPods Max Apple', 12311000, 1, CAST(N'2021-10-13' AS Date), N'c7.jpg', 1, 1031, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1158, N'Tai nghe chụp tai Beats Studio3 Wireless ', 6741000, 1, CAST(N'2021-10-13' AS Date), N'c11.jpg', 1, 1031, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1159, N'Tai nghe chụp tai Bluetooth Sony WH-XB900N', 5790000, 1, CAST(N'2021-10-13' AS Date), N'c17.jpg', 1, 1031, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1160, N'Tai nghe chụp tai Gaming MozardX G1 Đen', 472000, 1, CAST(N'2021-10-13' AS Date), N'c23.jpg', 1, 1031, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1163, N'Ổ cứng SSD 500GB WD My Passport   Xanh Dương', 2790000, 1, CAST(N'2021-10-13' AS Date), N'd1.jpg', 1, 1032, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1164, N'Ổ cứng HDD 2TB WD My Passport G0020BBK', 2790000, 1, CAST(N'2021-10-13' AS Date), N'd7.jpg', 1, 1032, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1165, N'Ổ cứng HDD 1TB WD My Passport G0010BRD ', 1521000, 1, CAST(N'2021-10-13' AS Date), N'd13.jpg', 1, 1032, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1169, N'Ổ cứng HDD 2TB Seagate Backup Plus Slim', 2750000, 1, CAST(N'2021-10-13' AS Date), N'd20.jpg', 1, 1032, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1170, N'Ổ cứng HDD 1TB Seagate Backup Plus Slim Xanh Dương', 1690000, 1, CAST(N'2021-10-13' AS Date), N'd26.jpg', 1, 1032, 1);
 
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1171, N'USB OTG 3.1 64GB Type C Sandisk SDDDC3 Đen', 337000, 1, CAST(N'2021-10-13' AS Date), N'e1.jpg', 1, 1033, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1172, N'USB 3.0 32 GB Sandisk CZ73', 187000, 1, CAST(N'2021-10-13' AS Date), N'e7.jpg', 1, 1033, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1173, N'USB 3.1 32 GB Apacer AH357', 187000, 1, CAST(N'2021-10-13' AS Date), N'e11.jpg', 1, 1033, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1175, N'USB 3.0 - 3.1 16 GB Transcend JetFlash 790', 144000, 1, CAST(N'2021-10-13' AS Date), N'e16.jpg', 1, 1033, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1176, N'USB 3.0 16 GB Apacer AH354', 144000, 1, CAST(N'2021-10-13' AS Date), N'e22.jpg', 1, 1033, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1177, N'1', 1, 14, CAST(N'2021-10-15' AS Date), N'5e90c782.jpg', 0, 14, 1);

INSERT INTO Roles (Id, Name) VALUES (N'AD', N'ADMIN');
INSERT INTO Roles (Id, Name) VALUES (N'CH', N'Chủ cửa hàng');
INSERT INTO Roles (Id, Name) VALUES (N'KH', N'Khách Hàng');


INSERT INTO Saleuser (Id, Username, Codeid, date) VALUES (18, N'hsang', 5, CAST(N'2021-12-05' AS Date));
INSERT INTO Saleuser (Id, Username, Codeid, date) VALUES (19, N'hsang', 4, CAST(N'2021-12-05' AS Date));


INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1, N'Màn hình', N'OLED', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (5, N'Hệ điều hành', N'iOS 14', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (6, N'Camera sau', N'2 camera 12 MP', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (7, N'Camera trước', N'12 MP', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (8, N'Chip xử lý', N'Apple A14 Bionic 6 nhân', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (9, N'RAM', N'4 GB', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (10, N'Bộ nhớ trong', N'64 GB', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (11, N'SIM', N'1 Nano SIM & 1 eSIM', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (12, N'Loại pin', N'Li-Ion', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (13, N'Dung lượng pin', N'2815 mAh', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (14, N'Hỗ trợ sạc tối đa', N'20 W', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (16, N'Màn hình', N'OLED', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (17, N'Hệ điều hành', N'iOS 14', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (18, N'Camera sau', N'3 camera 12 MP', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (19, N'Camera trước', N'12 MP', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (20, N'Chip xử lý', N'Apple A14 Bionic 6 nhân', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (21, N'RAM', N'6 GB', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (22, N'Bộ nhớ trong', N'128 GB', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (23, N'SIM', N'1 Nano SIM & 1 eSIM', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (24, N'Loại pin', N'Li-Ion', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (25, N'Dung lượng pin', N'3687 mAh', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (26, N'Hỗ trợ sạc tối đa', N'20 W', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (27, N'Màn hình', N'OLED', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (28, N'Hệ điều hành', N'iOS 14', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (29, N'Camera sau', N'3 camera 12 MP', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (31, N'Camera trước', N'12 MP', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (32, N'Chip xử lý ', N'Apple A14 Bionic 6 nhân', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (33, N'RAM', N'6 GB', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (34, N'Bộ nhớ trong', N'128 GB', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (35, N'SIM', N'1 Nano SIM & 1 eSIM', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (36, N'Loại pin', N'Li-Ion', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (37, N'Dung lượng pin', N'2815 mAh', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (38, N'Hỗ trợ sạc tối đa', N'20 W', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (39, N'Màn hình', N'OLED', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (40, N'Hệ điều hành', N'
iOS 14', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (41, N'Camera sau', N'2 camera 12 MP', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (42, N'Camera trước', N'12 MP', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (43, N'Chip xử lý', N'Apple A14 Bionic 6 nhân', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (44, N'RAM', N'4 GB', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (45, N'Bộ nhớ trong', N'64 GB', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (46, N'SIM', N'1 Nano SIM & 1 eSIM', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (47, N'Loại pin', N'
Li-Ion', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (48, N'Dung lượng pin', N'2227 mAh', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (49, N'Hỗ trợ sạc tối đa', N'20 W', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (50, N'Màn hình', N'828 x 1792 Pixels', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (51, N'Hệ điều hành', N'iOS 14', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (52, N'Camera sau', N'12 MP', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (53, N'Camera trước', N'7 MP', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (54, N'Chip xử lý', N'Apple A12 Bionic 6 nhân', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (55, N'RAM', N'3 GB', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (56, N'Bộ nhớ trong', N'64 GB', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (57, N'SIM', N'1 Nano SIM & 1 eSIM', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (58, N'Loại pin', N'Li-Ion', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (59, N'Dung lượng pin', N'2942 mAh', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (60, N'Hỗ trợ sạc tối đa:', N'15 W', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (61, N'Màn hình', N'IPS LCD', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (62, N'Hệ điều hành', N'iOS 14', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (63, N'Camera sau', N'12 MP', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (64, N'Camera trước', N'7 MP', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (65, N'RAM', N'3 GB', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (66, N'Bộ nhớ trong', N'128 GB', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (67, N'Chip xử lý ', N'Apple A13 Bionic 6 nhân', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (68, N'SIM', N'1 Nano SIM & 1 eSIM', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (69, N'Loại pin', N'Li-Ion', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (70, N'Dung lượng pin', N'1821 mAh', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (71, N'Hỗ trợ sạc tối đa', N'18 W', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (72, N'Màn hình', N'OLED', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (73, N'
Hệ điều hành', N'iOS 14', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (74, N'Camera sau', N'3 camera 12 MP', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (75, N'Camera trước', N'12 MP', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (77, N'Chip xử lý', N'Apple A14 Bionic 6 nhân', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (78, N'RAM', N'6 GB', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (79, N'Bộ nhớ trong', N'128 GB', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (80, N'SIM', N'1 Nano SIM & 1 eSIM', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (81, N'Loại pin', N'Li-Ion', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (82, N'Dung lượng pin', N'2815 mAh', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (83, N'Hỗ trợ sạc tối đa', N'20 W', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (84, N'Màn hình', N'IPS LCD', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (85, N'Hệ điều hành', N'iOS 14', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (86, N'Camera sau', N'2 camera 12 MP', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (87, N'Camera trước', N'12 MP', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (88, N'RAM', N'4 GB', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (89, N'Bộ nhớ trong', N'64 GB', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (90, N'Chip xử lý', N'
Apple A13 Bionic 6 nhân', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (91, N'SIM', N'1 Nano SIM & 1 eSIM', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (92, N'Loại pin', N'Li-Ion', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (93, N'Dung lượng pin', N'3110 mAh', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (94, N'Hỗ trợ sạc tối đa', N'18 W', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (95, N'Màn hình', N'Dynamic AMOLED 2X', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (96, N'Hệ điều hành', N'Android 11', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (97, N'Camera sau', N'2 camera 12 MP', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (98, N'Camera trước', N'10 MP', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (99, N'RAM', N'8 GB', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (100, N'Bộ nhớ trong', N'128 GB', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (101, N'SIM', N'1 Nano SIM & 1 eSIM', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (102, N'Loại pin', N'Li-Ion', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (103, N'Dung lượng pin', N'3300 mAh', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (104, N'Hỗ trợ sạc tối đa', N'15 W', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (105, N'Màn hình', N'Super AMOLED', 24);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (106, N'Hệ điều hành', N'
Android 11', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (107, N'Camera sau', N'Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (109, N'
Camera trước', N'32 MP', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (110, N'RAM', N'8 GB', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (111, N'Bộ nhớ trong', N'128 GB', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (112, N'Chip xử lý', N'Snapdra n 750G 5G 8 nhân', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (113, N'SIM', N'2 Nano SIM', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (114, N'Loại pin', N'Li-Ion', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (115, N'Dung lượng pin', N'4500 mAh', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (116, N'Hỗ trợ sạc tối đa', N'25 W', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (117, N'Màn hình', N'Dynamic AMOLED 2X', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (118, N'Hệ điều hành', N'Android 11', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (120, N'Camera sau', N'2 camera 12 MP', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (121, N'Camera trước', N'10 MP', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (122, N'RAM', N'8 GB', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (123, N'Bộ nhớ trong', N'128 GB', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (124, N'SIM', N'1 Nano SIM & 1 eSIM', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (125, N'Loại pin', N'Li-Ion', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (126, N'Dung lượng pin', N'3300 mAh', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (128, N'Hỗ trợ sạc tối đa', N'15 W', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (129, N'Màn hình', N'
Chính: Dynamic AMOLED, Phụ: Super AMOLED', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (130, N'Hệ điều hành', N'Android 10', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (131, N'Camera trước', N'Trong 10 MP & N ài 10 MP', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (132, N'Camera sau', N'3 camera 12 MP', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (133, N'
RAM', N'12 GB', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (134, N'Bộ nhớ trong', N'256 GB', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (135, N'Chip xử lý', N'
Snapdra n 865+ 8 nhân', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (136, N'SIM', N'1 Nano SIM & 1 eSIM', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (138, N'Loại pin', N'Li-Po', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (139, N'Hỗ trợ sạc tối đa', N'
25 W', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (140, N'Màn hình
', N'Dynamic AMOLED 2X', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (141, N'Hệ điều hành', N'Android 11', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (142, N'Camera sau', N'Chính 12 MP & Phụ 64 MP, 12 MP', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (143, N'Camera trước', N'10 MP', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (144, N'RAM', N'8 GB', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (145, N'Bộ nhớ trong', N'128 GB', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (146, N'SIM', N'
2 Nano SIM hoặc 1 Nano SIM + 1 eSIM', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (147, N'Loại pin', N'Li-Ion', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (148, N'Hỗ trợ sạc tối đa', N'25 W', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (149, N'Màn hình', N'IPS LCD', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (150, N'Hệ điều hành', N'Android 11', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (151, N'Camera trước', N'5 MP', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (152, N'Camera sau', N'Chính 13 MP & Phụ 2 MP, 2 MP', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (153, N'RAM', N'4 GB', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (154, N'Bộ nhớ trong', N'64 GB', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (155, N'Chip xử lý', N'Spreadtrum T610 8 nhân', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (156, N'SIM', N'
2 Nano SIM', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (157, N'Loại pin', N'Li-Po', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (158, N'Hỗ trợ sạc tối đa', N'10 W', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (159, N'Chip xử lý', N'Exynos 2100 8 nhân', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (160, N'Màn hình', N'IPS LCD', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (161, N'Hệ điều hành', N'
Android 11', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (162, N'Camera sau', N'
Chính 48 MP & Phụ 2 MP, 2 MP', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (163, N'Camera trước', N'8 MP', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (164, N'RAM', N'4 GB', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (165, N'Bộ nhớ trong', N'128 GB', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (166, N'Chip xử lý', N'MediaTek Helio G85 8 nhân', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (167, N'SIM', N'2 Nano SIM', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (168, N'Loại pin', N'Li-Po', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (169, N'Hỗ trợ sạc tối đa', N'18 W', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (170, N'Màn hình', N'Super AMOLED', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (171, N'Hệ điều hành', N'Android 11', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (172, N'Camera trước', N'16 MP', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (173, N'Camera sau', N'Chính 108 MP & Phụ 8 MP, 2 MP, 2 MP', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (175, N'RAM', N'8 GB', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (176, N'Bộ nhớ trong', N'128 GB', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (178, N'Chip xử lý', N'Snapdra n 720G 8 nhân', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (179, N'SIM', N'2 Nano SIM', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (180, N'Loại pin', N'Li-Po', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (181, N'Hỗ trợ sạc tối đa', N'50 W', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (182, N'Màn hình', N'Super AMOLED', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (183, N'Hệ điều hành', N'Android 11', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (184, N'Camera trước', N'16 MP', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (185, N'Camera sau', N'Chính 108 MP & Phụ 8 MP, 2 MP, 2 MP', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (186, N'
RAM', N'8 GB', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (187, N'Bộ nhớ trong', N'128 GB', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (188, N'Chip xử lý ', N'Snapdra n 720G 8 nhân', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (189, N'SIM', N'2 Nano SIM', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (190, N'Loại pin', N'
Li-Po', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (191, N'Hỗ trợ sạc tối đa', N'50 W', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (192, N'Màn hình', N'
Super AMOLED', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (193, N'
Hệ điều hành', N'Android 11', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (194, N'Camera trước', N'16 MP', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (195, N'Camera sau', N'Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (196, N'RAM', N'8 GB', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (197, N'Bộ nhớ trong', N'128 GB', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (198, N'Chip xử lý', N'MediaTek Helio G95 8 nhân', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (199, N'SIM', N'
2 Nano SIM', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (200, N'Loại pin', N'Li-Po', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (201, N'Hỗ trợ sạc tối đa', N'30 W', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (202, N'Màn hình', N'IPS LCD', 38);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (203, N'Hệ điều hành', N'Android 10', 38);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (205, N'Camera trước', N'8 MP', 38);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (206, N'Camera sau', N'Chính 13 MP & Phụ 2 MP', 38);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (207, N'RAM', N'4 GB', 38);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (208, N'Bộ nhớ trong', N'128 GB', 38);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (210, N'Chip xử lý', N'
MediaTek Helio P35 8 nhân', 38);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (211, N'SIM', N'2 Nano SIM', 38);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (212, N'Loại pin', N'Li-Po', 38);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (213, N'Hỗ trợ sạc tối đa', N'10 W', 38);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (224, N'Màn hình', N'AMOLED', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (225, N'Hệ điều hành', N'Android 11', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (227, N'Camera trước', N'44 MP', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (228, N'Camera sau', N'Chính 64 MP & Phụ 8 MP, 2 MP', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (229, N'RAM', N'8 GB', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (230, N'Bộ nhớ trong', N'128 GB', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (231, N'Chip xử lý', N'MediaTek Dimensity 800U 5G 8 nhân', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (232, N'SIM', N'2 Nano SIM', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (233, N'Loại pin', N'Li-Po', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (234, N'Hỗ trợ sạc tối đa', N'33 W', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (235, N'Màn hình', N'AMOLED', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (236, N'Hệ điều hành', N'Android 11', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (237, N'Camera trước', N'44 MP', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (238, N'Camera sau', N'Chính 64 MP & Phụ 8 MP, 2 MP', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (239, N'RAM', N'8 GB', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (240, N'Bộ nhớ trong', N'128 GB', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (241, N'Chip xử lý ', N'Snapdra n 730 8 nhân', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (242, N'SIM', N'2 Nano SIM', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (243, N'Loại pin', N'Li-Po', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (244, N'Hỗ trợ sạc tối đa', N'
33 W', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (245, N'Màn hình', N'AMOLED', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (246, N'Hệ điều hành', N'Android 11', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (247, N'Camera trước', N'44 MP', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (248, N'Camera sau', N'Chính 64 MP & Phụ 8 MP, 2 MP', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (249, N'RAM', N'8 GB', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (250, N'Bộ nhớ trong', N'128 GB', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (251, N'Chip xử lý', N'Snapdra n 720G 8 nhân', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (252, N'SIM', N'
2 Nano SIM', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (253, N'Loại pin', N'Li-Po', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (254, N'Hỗ trợ sạc tối đa', N'33 W', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (255, N'Màn hình', N'IPS LCD', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (256, N'Hệ điều hành', N'Android 11', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (257, N'Camera trước', N'8 MP', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (258, N'Camera sau
', N'Chính 13 MP & Phụ 2 MP, 2 MP', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (259, N'RAM', N'4 GB', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (261, N'Bộ nhớ trong', N'64 GB', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (262, N'Chip xử lý ', N'MediaTek Helio G35 8 nhân', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (263, N'SIM', N'2 Nano SIM', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (264, N'Loại pin', N'Li-Po', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (265, N'Hỗ trợ sạc tối đa', N'15 W', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (266, N'Màn hình', N'AMOLED', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (267, N'Hệ điều hành', N'Android 10', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (268, N'Camera trước', N'20 MP', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (269, N'Camera sau', N'Chính 64 MP & Phụ 8 MP, 8 MP, 2 MP', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (270, N'RAM', N'8 GB', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (271, N'Bộ nhớ trong', N'128 GB', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (272, N'Chip xử lý ', N'Snapdra n 730 8 nhân', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (273, N'SIM', N'2 Nano SIM', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (274, N'Loại pin', N'Li-Po', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (276, N'Hỗ trợ sạc tối đa', N'18 W', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (277, N'Màn hình', N'AMOLED', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (278, N'Hệ điều hành', N'Android 10', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (279, N'Camera trước', N'20 MP', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (280, N'Camera sau', N'Chính 64 MP & Phụ 8 MP, 8 MP, 2 MP', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (281, N'RAM', N'8 GB', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (282, N'Bộ nhớ trong', N'128 GB', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (283, N'Chip xử lý', N'Snapdra n 730 8 nhân', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (284, N'SIM', N'2 Nano SIM', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (285, N'Loại pin', N'Li-Po', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (286, N'Hỗ trợ sạc tối đa', N'18 W', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (287, N'Màn hình', N'LTPS IPS LCD', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (288, N'
Hệ điều hành', N'Android 10', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (289, N'Camera trước', N'13 MP', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (290, N'Camera sau', N'Chính 16 MP & Phụ 8 MP, 2 MP, 2 MP', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (291, N'RAM', N'4 GB', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (292, N'Bộ nhớ trong', N'64 GB', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (293, N'Chip xử lý ', N'Snapdra n 665 8 nhân', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (294, N'SIM', N'2 Nano SIM', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (295, N'Loại pin', N'Li-Po', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (296, N'Hỗ trợ sạc tối đa', N'18 W', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (297, N'Màn hình', N'LTPS IPS LCD', 50);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (298, N'Hệ điều hành', N'Android 10', 50);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (299, N'Camera trước', N'13 MP', 50);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (300, N'Camera sau', N'Chính 16 MP & Phụ 8 MP, 2 MP, 2 MP', 50);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (301, N'Chip xử lý', N'
Snapdra n 665 8 nhân', 50);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (302, N'SIM', N'2 Nano SIM', 50);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (303, N'Loại pin', N'Li-Po', 50);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (304, N'Hỗ trợ sạc tối đa', N'18 W', 50);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (305, N'Màn hình', N'
AMOLED', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (306, N'Hệ điều hành', N'Android 11', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (307, N'Camera trước', N'16 MP', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (308, N'Camera sau', N'Chính 64 MP & Phụ 8 MP, 5 MP', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (309, N'RAM', N'8 GB', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (310, N'Bộ nhớ trong', N'128 GB', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (311, N'Chip xử lý ', N'Snapdra n 732G 8 nhân', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (312, N'SIM', N'2 Nano SIM (SIM 2 chung khe thẻ nhớ)', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (313, N'Loại pin', N'Li-Po', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (314, N'Hỗ trợ sạc tối đa', N'33 W', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (315, N'Màn hình', N'IPS LCD', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (316, N'Hệ điều hành', N'Android 11', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (317, N'Camera trước', N'8 MP', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (318, N'Camera sau', N'Chính 48 MP & Phụ 2 MP, 2 MP', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (319, N'Chip xử lý', N'MediaTek Dimensity 700 5G 8 nhân', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (320, N'SIM', N'2 Nano SIM', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (321, N'Loại pin', N'Li-Po', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (322, N'Hỗ trợ sạc tối đa', N'18 W', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (323, N'RAM', N'8 GB', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (325, N'Bộ nhớ trong', N'128 GB', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (326, N'Màn hình', N'AMOLED', 55);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (327, N'Hệ điều hành', N'Android 11', 55);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (328, N'Camera trước', N'20 MP', 55);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (329, N'Camera sau', N'Chính 108 MP & Phụ 13 MP, 5 MP', 55);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (330, N'RAM', N'8 GB', 55);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (331, N'Bộ nhớ trong', N'256 GB', 55);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (332, N'Chip xử lý', N'Snapdra n 888 8 nhân', 55);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (333, N'SIM', N'2 Nano SIM', 55);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (334, N'Loại pin', N'Li-Ion', 55);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (335, N'Hỗ trợ sạc tối đa', N'55 W', 55);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (336, N'Màn hình', N'IPS LCD', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (337, N'Hệ điều hành', N'Android 10', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (338, N'Camera trước', N'20 MP', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (339, N'Camera sau', N'Chính 108 MP & Phụ 13 MP, 5 MP', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (340, N'RAM', N'8 GB', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (341, N'Bộ nhớ trong', N'256 GB', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (342, N'Chip xử lý', N'Snapdra n 865 8 nhân', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (343, N'SIM', N'2 Nano SIM', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (344, N'Loại pin', N'Li-Ion', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (345, N'Hỗ trợ sạc tối đa', N'33 W', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (346, N'Màn hình', N'AMOLED', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (347, N'Hệ điều hành', N'Android 11', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (348, N'Camera trước', N'16 MP', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (349, N'Camera sau', N'Chính 108 MP & Phụ 8 MP, 5 MP, 2 MP', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (350, N'RAM', N'8 GB', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (351, N'Bộ nhớ trong', N'128 GB', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (352, N'Chip xử lý ', N'
Snapdra n 732G 8 nhân', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (353, N'SIM', N'2 Nano SIM', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (354, N'Loại pin', N'Li-Ion', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (355, N'Hỗ trợ sạc tối đa', N'33 W', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (356, N'Màn hình', N'AMOLED', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (357, N'Hệ điều hành', N'Android 11', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (358, N'Camera trước', N'32 MP', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (359, N'Camera sau', N'Chính 64 MP & Phụ 8 MP, 2 MP', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (360, N'RAM', N'8 GB', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (361, N'Bộ nhớ trong', N'128 GB', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (362, N'Chip xử lý', N'MediaTek Dimensity 800U 5G 8 nhân', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (363, N'SIM', N'2 Nano SIM', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (364, N'Loại pin', N'Li-Po', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (365, N'Hỗ trợ sạc tối đa', N'30 W', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (366, N'Màn hình', N'AMOLED', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (367, N'Hệ điều hành', N'Android 11', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (368, N'Camera trước', N'32 MP', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (369, N'Camera sau', N'Chính 64 MP & Phụ 8 MP, 2 MP', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (371, N'RAM', N'8 GB', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (372, N'Bộ nhớ trong', N'128 GB', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (373, N'Chip xử lý', N'MediaTek Dimensity 900 5G', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (374, N'SIM', N'2 Nano SIM', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (375, N'Loại pin', N'Li-Po', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (376, N'Hỗ trợ sạc tối đa', N'65 W', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (377, N'Màn hình', N'AMOLED', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (378, N'Hệ điều hành', N'Android 11', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (379, N'Camera trước', N'16 MP', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (380, N'Camera sau', N'Chính 48 MP & Phụ 2 MP, 2 MP', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (381, N'RAM', N'8 GB', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (382, N'Bộ nhớ trong', N'128 GB', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (383, N'Chip xử lý', N'Snapdra n 662 8 nhân', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (384, N'SIM', N'2 Nano SIM', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (385, N'Loại pin', N'Li-Po', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (386, N'Hỗ trợ sạc tối đa', N'33 W', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (387, N'Màn hình
', N'AMOLED', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (388, N'Hệ điều hành', N'Android 11', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (389, N'Camera trước', N'32 MP', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (391, N'Camera sau', N'Chính 50 MP & Phụ 50 MP, 13 MP, 3 MP', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (392, N'RAM', N'12 GB', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (393, N'Bộ nhớ trong', N'256 GB', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (394, N'Chip xử lý', N'Snapdra n 888 8 nhân', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (395, N'SIM', N'2 Nano SIM', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (396, N'Loại pin', N'Li-Po', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (397, N'Hỗ trợ sạc tối đa', N'65 W', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (398, N'Màn hình', N'AMOLED', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (399, N'Hệ điều hành', N'Android 11', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (402, N'Camera trước', N'32 MP', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (403, N'Camera sau', N'Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (404, N'RAM', N'8 GB', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (405, N'Bộ nhớ trong', N'128 GB', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (406, N'Chip xử lý', N'Snapdra n 765G 8 nhân', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (407, N'SIM', N'
2 Nano SIM', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (408, N'Loại pin', N'Li-Po', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (409, N'Hỗ trợ sạc tối đa', N'65 W', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (410, N'Màn hình', N'OLED 1.65 inch', 63);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (411, N'Thời lượng pin', N'Khoảng 1.5 ngày', 63);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (412, N'Kết nối với hệ điều hành', N'iOS 13 trở lên', 63);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (413, N'Mặt', N'Ion-X strengthened glass42 mm', 63);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (416, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Tính lượng calories tiêu thụ', 63);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (417, N'Hãng', N'Apple', 63);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (418, N'Màn hình', N'OLED 1.78 inch', 64);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (419, N'Thời lượng pin', N'Khoảng 1.5 ngày', 64);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (420, N'Kết nối với hệ điều hành', N'iOS 13 trở lên', 64);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (421, N'Mặt', N'Kính cường lực Sapphire 44 mm', 64);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (422, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Tính lượng calories tiêu thụ', 64);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (423, N'Hãng', N'Apple', 64);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (424, N'Màn hình', N'OLED 1.57 inch', 65);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (425, N'Thời lượng pin', N'Khoảng 1.5 ngày', 65);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (426, N'Kết nối với hệ điều hành', N'iOS 14 trở lên', 65);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (427, N'Mặt', N'Ion-X strengthened glass 40 mm', 65);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (428, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 65);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (429, N'Hãng', N'Apple', 65);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (430, N'Màn hình', N'OLED 1.78 inch', 66);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (431, N'Thời lượng pin', N'Khoảng 1.5 ngày', 66);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (432, N'Kết nối với hệ điều hành', N'iOS 14 trở lên', 66);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (433, N'Mặt', N'Kính cường lực Sapphire 44 mm', 66);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (434, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 66);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (435, N'Hãng', N'Apple', 66);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (436, N'Màn hình', N'OLED 1.57 inch', 67);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (437, N'Thời lượng pin', N'Khoảng 1.5 ngày', 67);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (438, N'Kết nối với hệ điều hành', N'iOS 14 trở lên', 67);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (439, N'Mặt', N' Ion-X strengthened glass 40 mm', 67);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (440, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 67);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (441, N'Hãng', N'Apple', 67);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (442, N'Màn hình', N'OLED 1.57 inch', 68);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (443, N'Thời lượng pin', N'Khoảng 1.5 ngày', 68);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (444, N'Kết nối với hệ điều hành', N'iOS 14 trở lên', 68);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (445, N'Mặt', N'Ion-X strengthened glass 40 mm', 68);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (446, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 68);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (447, N'Hãng', N'Apple', 68);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (468, N'Màn hình', N'Khoảng 10 ngày', 69);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (473, N'Hệ điều hành', N'Android 11', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (474, N'Camera trước', N'16 MP', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (475, N'Camera sau', N'Chính 64 MP & Phụ 2 MP, 2 MP', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (476, N'RAM', N'8 GB', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (477, N'Bộ nhớ trong', N'128 GB', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (478, N'Chip xử lý ', N'MediaTek Helio G80 8 nhân', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (479, N'SIM', N'2 Nano SIM', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (480, N'Loại pin', N'Li-Po', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (481, N'Hỗ trợ sạc tối đa', N'33 W', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (482, N'Màn hình', N'IPS LCD', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (483, N'Thời lượng pin', N'Khoảng 10 ngày', 69);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (484, N'Kết nối với hệ điều hành', N'Android 5.0 trở lên, iOS 11 trở lên', 69);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (485, N'Mặt', N'Mặt kính nhựa 45 mm', 69);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (486, N'Tính năng cho sức khỏe', N'Nhắc nhở ít vận động, Theo dõi nhịp tim 24h', 69);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (488, N'Hãng', N'BeU', 69);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (489, N'Màn hình', N'IPS 1.3 inch', 70);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (490, N'Thời lượng pin', N'Khoảng 5 ngày', 70);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (491, N'Kết nối với hệ điều hành', N'Android 5.0 trở lên, iOS 11 trở lên', 70);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (492, N'Mặt', N'Mặt kính nhựa50 mm', 70);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (493, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ,', 70);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (494, N'Hãng', N'BeU', 70);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (495, N'Màn hình', N'IPS 1.4 inch', 72);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (496, N'Thời lượng pin', N'Khoảng 7 ngày', 72);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (497, N'Kết nối với hệ điều hành', N'Android 5.0 trở lên, iOS 11 trở lên', 72);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (498, N'Mặt', N'Mặt kính nhựa 51 mm', 72);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (499, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 72);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (500, N'Hãng', N'BeU', 72);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (501, N'Màn hình', N'IPS 1.32 inch', 73);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (502, N'Thời lượng pin', N'Khoảng 10 ngày', 73);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (503, N'Kết nối với hệ điều hành', N'Android 5.0 trở lên, iOS 11 trở lên', 73);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (504, N'Mặt', N'Mặt kính nhựa 46 mm', 73);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (505, N'Tính năng cho sức khỏe', N'Nhắc nhở ít vận động, Theo dõi nhịp tim 24h', 73);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (506, N'Hãng', N'BeU', 73);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (507, N'Màn hình', N'TFT 1.2 inch', 74);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (508, N'Thời lượng pin', N'Khoảng 12 ngày', 74);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (509, N'Kết nối với hệ điều hành', N'Android 5.0 trở lên, iOS 9 trở lên', 74);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (510, N'Mặt', N'Mặt kính nhựa 55.5 mm', 74);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (511, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 74);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (512, N'Hãng', N'BeU', 74);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (513, N'Màn hình', N'IPS 1.54 inch', 75);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (514, N'Thời lượng pin', N'Khoảng 7 ngày', 75);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (515, N'Kết nối với hệ điều hành', N'Android 5.0 trở lên, iOS 11 trở lên', 75);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (516, N'Mặt', N'Mặt kính nhựa53 mm', 75);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (518, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 75);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (519, N'Hãng', N'BeU', 75);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (520, N'Màn hình', N'MIP 1.4 inch', 76);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (521, N'Thời lượng pin', N'Khoảng 50 ngày, Khoảng 70 giờ khi sử dụng GPS', 76);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (523, N'Kết nối với hệ điều hành', N'Android, iOS', 76);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (524, N'Mặt', N'Kính cường lực 51 mm', 76);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (525, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi chu kì kinh nguyệt', 76);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (526, N'Hãng', N'Garmin', 76);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (527, N'Màn hình', N'MIP 1.3 inch', 77);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (528, N'Thời lượng pin', N'Khoảng 16 ngày, Khoảng 40 giờ khi sử dụng GPS', 77);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (529, N'Kết nối với hệ điều hành', N'Android, iOS', 77);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (530, N'Mặt', N'Kính cường lực  rilla Glass 347 mm', 77);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (531, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 77);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (532, N'Hãng', N'Garmin', 77);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (533, N'Màn hình', N'MIP 1.3 inch', 78);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (534, N'Thời lượng pin', N' Khoảng 13 ngày, Khoảng 36 giờ khi sử dụng GPS', 78);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (535, N'Kết nối với hệ điều hành', N'Android, iOS', 78);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (536, N'Mặt', N'Kính cường lực  rilla Glass 347 mm', 78);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (537, N'Tính năng cho sức khỏe', N' Chế độ luyện tập, Theo dõi chu kì kinh nguyệt', 78);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (538, N'Hãng', N'Garmin', 78);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (539, N'Màn hình', N'MIP 1.3 inch', 79);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (540, N'Thời lượng pin', N'Khoảng 21 ngày, Khoảng 60 giờ khi sử dụng GPS', 79);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (541, N'Kết nối với hệ điều hành', N'Android, iOS', 79);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (542, N'Mặt', N'Kính Sapphire 51 mm', 79);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (543, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi chu kì kinh nguyệt', 79);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (544, N'Hãng', N'Garmin', 79);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (545, N'Màn hình', N'MIP 1.2 inch', 80);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (547, N'Thời lượng pin', N'Khoảng 10 giờ khi sử dụng GPS và Âm Nhạc', 80);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (548, N'Kết nối với hệ điều hành', N'Android, iOS', 80);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (549, N'Mặt', N'Kính cường lực  rilla Glass 347 mm', 80);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (550, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi chu kì kinh nguyệt', 80);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (551, N'Hãng', N'Garmin', 80);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (552, N'Màn hình', N'LCD 1 inch', 81);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (553, N'Thời lượng pin', N'Khoảng 5 ngày', 81);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (554, N'Kết nối với hệ điều hành', N'Android, iOS', 81);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (555, N'Mặt', N'Kính cường lực  rilla Glass 335 mm', 81);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (556, N'Tính năng cho sức khỏe', N'Theo dõi giấc ngủ, Đo nhịp tim', 81);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (557, N'Hãng', N'Garmin', 81);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (558, N'Màn hình', N'TFT 1.3 inch', 82);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (559, N'Thời lượng pin', N'Khoảng 1 ngày, Khoảng 12 tiếng (sử dụng liên tục)', 82);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (560, N'Mặt', N'Mặt kính nhựa 33 mm', 82);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (561, N'Dây', N'Silicone', 82);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (562, N'Kết nối', N' Android 4.3 trở lên, iOS 10 trở lên', 82);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (563, N'Ngôn ngữ', N'Tiếng Việt', 82);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (564, N'Tiện ích', N'Báo thức, Có nghe gọi, Cài đặt vùng an toàn', 82);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (565, N'Hãng', N'Kidcare', 82);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (566, N'Màn hình', N'TFT 1.3 inch', 83);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (567, N'Thời lượng pin', N'Khoảng 1 ngày, Khoảng 12 tiếng (sử dụng liên tục)', 83);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (568, N'Mặt', N'Mặt kính nhựa 33 mm', 83);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (569, N'Kết nối', N'Android 4.3 trở lên, iOS 10 trở lên', 83);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (570, N'Tiện ích khác', N'Chụp ảnh, Có nghe gọi, Định vị trẻ em', 83);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (571, N'Hãng', N'Kidcare', 83);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (572, N'Màn hình', N'TFT 1.44 inch', 84);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (574, N'Thời lượng pin', N' Khoảng 1.5 ngày, Khoảng 12 tiếng', 84);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (575, N'Mặt', N'Mặt kính nhựa 36 mm', 84);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (576, N'Kết nối', N'Android 4.3 trở lên, iOS 10 trở lên', 84);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (578, N'Tiện ích khác', N'Cuộc gọi khẩn cấp SOS, Chụp ảnh', 84);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (579, N'Hãng', N'Kidcare', 84);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (580, N'Màn hình', N'TFT 1.3 inch', 85);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (581, N'Thời lượng pin', N'Khoảng 1.5 ngày, Khoảng 12 tiếng', 85);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (582, N'Kết nối với hệ điều hành', N'Android 4.3 trở lên, iOS 10 trở lên', 85);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (583, N'Mặt', N'Kính cường lực 41.5 mm', 85);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (584, N'Tính năng cho sức khỏe', N'Đếm số bước chân', 85);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (585, N'Hãng', N'Kidcare', 85);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (586, N'Màn hình', N'TFT 1.3 inch', 86);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (587, N'Thời lượng pin', N'Khoảng 1.5 ngày, Khoảng 12 tiếng', 86);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (588, N'Kết nối với hệ điều hành', N'Android 4.3 trở lên, iOS 10 trở lên', 86);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (589, N'Mặt', N'Kính cường lực 41.5 mm', 86);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (590, N'Tính năng cho sức khỏe', N'Tính năng cho sức khỏe', 86);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (591, N'Hãng', N'Kidcare', 86);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (592, N'Màn hình', N'TFT 1.4 inch', 87);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (593, N'Kết nối với hệ điều hành', N'Android 4.3 trở lên, iOS 10 trở lên', 87);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (594, N'Mặt', N'Kính cường lực 43.4 mm', 87);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (595, N'Tính năng cho sức khỏe', N'Đếm số bước chân', 87);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (597, N'Hãng', N'Kidcare', 87);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (598, N'Màn hình', N'AMOLED 1.1 inch', 88);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (599, N'Thời lượng pin', N'Khoảng 12 ngày', 88);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (600, N'Kết nối với hệ điều hành', N'Android 6.0 trở lên, iOS 10 trở lên', 88);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (601, N'Tính năng cho sức khỏe', N'Theo dõi giấc ngủ, Đo nhịp tim', 88);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (602, N'Tiện ích', N'Từ chối cuộc gọi, Điều khiển chơi nhạc', 88);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (603, N'Màn hình', N'AMOLED 1.6 inch', 89);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (604, N'Thời lượng pin', N'Khoảng 14 ngày', 89);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (605, N'Kết nối với hệ điều hành', N'Android 6.0 trở lên, iOS 12 trở lên', 89);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (606, N'Mặt', N'Kính cường lực 41 mm', 89);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (607, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 89);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (608, N'Màn hình', N'AMOLED 1.6 inch', 90);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (609, N'Thời lượng pin', N'Khoảng 14 ngày', 90);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (610, N'Kết nối với hệ điều hành', N'Android 6.0 trở lên, iOS 12 trở lên', 90);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (611, N'Mặt', N'Kính cường lực 41 mm', 90);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (612, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 90);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (614, N'Hãng', N'Oppo Watch 46mm', 91);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (615, N'Màn hình', N'AMOLED 1.91 inch', 91);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (616, N'Thời lượng pin', N'Khoảng 21 ngày', 91);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (617, N'Kết nối với hệ điều hành', N'Android 6.0 trở lên, iOS 12 trở lên', 91);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (618, N'Mặt', N'Kính cường lực 46 mm', 91);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (619, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 91);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (620, N'Hãng', N'Watch 46mm', 92);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (621, N'Màn hình', N'AMOLED 1.91 inch', 92);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (622, N'Thời lượng pin', N'Khoảng 21 ngày', 92);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (623, N'Kết nối với hệ điều hành', N'Android 6.0 trở lên, iOS 12 trở lên', 92);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (624, N'Mặt', N'Kính cường lực 46 mm', 92);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (625, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 92);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (626, N'Màn hình', N'AMOLED 1.91 inch', 93);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (627, N'Thời lượng pin', N'Khoảng 21 ngày', 93);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (628, N'Kết nối với hệ điều hành', N'Android 6.0 trở lên, iOS 12 trở lên', 93);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (629, N'Mặt', N'Kính cường lực 46 mm', 93);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (631, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 93);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (632, N'Màn hình', N'SUPER AMOLED 1.4 inch', 95);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (633, N'Thời lượng pin', N'Khoảng 2 ngày', 95);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (634, N'Kết nối với hệ điều hành', N'Android 5.0 trở lên, iOS 9 trở lên', 95);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (635, N'Mặt', N'Kính cường lực  rrilla Glass Dx+ 45 mm', 95);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (636, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 95);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (637, N'Hãng', N'Samsung', 95);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (638, N'Màn hình', N'SUPER AMOLED 1.4 inch', 95);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (640, N'Màn hình', N'SUPER AMOLED 1.4 inch', 97);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (641, N'Thời lượng pin', N'Khoảng 2 ngày', 97);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (642, N'Kết nối với hệ điều hành', N'Android 5.0 trở lên, iOS 9 trở lên', 97);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (643, N'Mặt', N'Kính cường lực  rrilla Glass Dx+ 45 mm', 97);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (644, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 97);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (645, N'Hãng', N'Samsung', 97);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (646, N'Màn hình', N'SUPER AMOLED 1.4 inch', 98);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (647, N'Thời lượng pin', N'Khoảng 2 ngày', 98);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (648, N'Kết nối với hệ điều hành', N'Android 5.0 trở lên, iOS 9 trở lên', 98);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (649, N'Mặt', N'Kính cường lực  rrilla Glass Dx+ 45 mm', 98);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (650, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 98);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (651, N'Hãng', N'Samsung', 98);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (652, N'Màn hình', N'SUPER AMOLED 1.19 inch', 99);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (653, N'Thời lượng pin', N'Khoảng 1.5 ngày', 99);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (654, N'Kết nối với hệ điều hành', N'Android dùng  ogle Mobile Service', 99);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (655, N'Mặt', N'Kính cường lực  rrilla Glass Dx+ 42 mm', 99);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (656, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 99);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (657, N'Hãng', N'Samsung', 99);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (658, N'Màn hình', N'SUPER AMOLED 1.36 inch', 100);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (659, N'Thời lượng pin', N'Khoảng 1.5 ngày', 100);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (660, N'Kết nối với hệ điều hành', N'Android dùng  ogle Mobile Service', 100);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (661, N'Mặt', N'Kính cường lực  rrilla Glass Dx+ 46 mm', 100);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (662, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 100);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (663, N'Hãng', N'Samsung', 100);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (664, N'Màn hình', N'SUPER AMOLED 1.4 inch', 101);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (665, N'Thời lượng pin', N'Khoảng 1.5 ngày', 101);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (666, N'Kết nối với hệ điều hành', N'Android 5.0iOS 10 trở lên', 101);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (667, N'Mặt', N'Kính cường lực  rrilla Glass Dx+ 44 mm', 101);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (668, N'Tính năng cho sức khỏe', N'Chế độ luyện tập, Theo dõi giấc ngủ', 101);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (669, N'Hãng', N'Samsung', 101);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (670, N'Màn hình', N'15.6 inch', 102);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (671, N'RAM', N'8 GB', 102);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (672, N'Ổ cứng', N'SSD 512 GB NVMe PCIe', 102);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (673, N'Card màn hình', N'Card rời - NVIDIA GeForce GTX 1650Ti 4 GB', 102);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (674, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 102);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (675, N'Kết nối không dây', N'
Bluetooth 5.0Wi-Fi 6 (802.11ax)', 102);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (676, N'Chất liệu', N'Vỏ nhựa', 102);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (677, N'Hệ điều hành', N'Windows 10 Home SL', 102);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (678, N'Màn hình', N'15.6 inch', 103);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (680, N'RAM', N'4 GB', 103);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (681, N'Ổ cứng', N'SSD 256 GB NVMe PCIeHỗ trợ khe cắm HDD SATA', 103);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (682, N'Card màn hình', N'
Card tích hợp - Intel UHD Graphics', 103);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (683, N'Cổng giao tiếp', N'HDMI', 103);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (684, N'Kết nối không dây', N'
Bluetooth 5.0Wi-Fi 802.11 a/b/g/n/ac', 103);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (685, N'Hệ điều hành', N'Windows 10 Home SL', 103);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (686, N'Màn hình', N'14 inch', 104);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (687, N'RAM', N'16 GB', 104);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (689, N'Ổ cứng', N'SSD 512 GB NVMe PCIe', 104);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (690, N'Card màn hình', N'
Card tích hợp - Intel Iris Xe Graphics', 104);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (691, N'Cổng giao tiếp', N'Thunderbolt 4 USB-C', 104);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (692, N'Kết nối không dây', N'Wi-Fi 6 (802.11ax)Bluetooth 5.1', 104);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (693, N'Chất liệu', N'Vỏ kim loại', 104);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (694, N'Hệ điều hành', N'
Windows 10 Home SL', 104);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (695, N'Màn hình', N'15.6 inch', 105);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (696, N'RAM', N'8 GB', 105);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (697, N'Ổ cứng', N'SSD 256 GB NVMe PCIe', 105);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (698, N'Card màn hình', N'Card rời - NVIDIA GeForce GTX 1650 4 GB', 105);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (699, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 105);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (700, N'Kết nối không dây', N'
Bluetooth 5.0Wi-Fi 6 (802.11ax)', 105);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (701, N'Chất liệu', N'Vỏ nhựa', 105);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (702, N'Hệ điều hành', N'Windows 10 Home SL', 105);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (703, N'Màn hình', N'15.6 inch', 106);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (704, N'RAM', N'8 GB', 106);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (705, N'Ổ cứng', N'SSD 512 GB NVMe PCIe', 106);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (706, N'Card màn hình', N'Card rời - NVIDIA GeForce RTX3050Ti, 4 GB', 106);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (707, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 106);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (709, N'Kết nối không dây', N'Wi-Fi 6 (802.11ax)Bluetooth 5.1', 106);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (710, N'Chất liệu', N'Vỏ nhựa', 106);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (711, N'Hệ điều hành', N'Windows 10 Home SL', 106);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (713, N'Màn hình', N'15.6 inch', 108);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (715, N'RAM', N'8 GB', 108);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (716, N'Ổ cứng', N'SSD 512 GB NVMe PCIe', 108);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (717, N'Card màn hình', N'Card rời - NVIDIA GeForce GTX 1650 4 GB', 108);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (718, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 108);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (719, N'Kết nối không dây', N'
Bluetooth 5.0Wi-Fi 6 (802.11ax)', 108);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (720, N'Chất liệu', N'Vỏ nhựa - nắp lưng bằng kim loại', 108);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (721, N'Hệ điều hành', N'Windows 10 Home SL', 108);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (722, N'Màn hình', N'15.6 inch', 109);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (723, N'RAM', N'8 GB', 109);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (724, N'Ổ cứng', N'SSD 512 GB NVMe PCIeHỗ trợ khe cắm HDD SATA', 109);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (725, N'Card màn hình', N'Card tích hợp - Intel UHD Graphics', 109);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (726, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 109);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (727, N'Kết nối không dây', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 109);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (728, N'Chất liệu', N'
Vỏ nhựa - nắp lưng bằng kim loại', 109);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (729, N'Hệ điều hành', N'Windows 10 Home SL', 109);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (730, N'Màn hình', N'13.3 inch', 110);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (731, N'RAM', N'16 GB', 110);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (732, N'Ổ cứng', N'SSD 1 TB M.2 PCIe', 110);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (733, N'Card màn hình', N'Card tích hợp - Intel Iris Xe Graphics', 110);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (734, N'Cổng giao tiếp', N'2 x Thunderbolt 4 USB-C', 110);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (735, N'Kết nối không dây', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 110);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (736, N'Chất liệu', N'Vỏ kim loại nguyên khối', 110);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (738, N'Hệ điều hành', N'Windows 10 Home SL + Office Home', 110);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (739, N'Màn hình', N'15.6 inch', 111);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (740, N'RAM', N'16 GB', 111);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (741, N'Ổ cứng', N'
SSD 512 GB NVMe PCIe', 111);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (742, N'Card màn hình', N'Card rời - NVIDIA GeForce RTX 3060, 6 GB', 111);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (743, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 111);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (744, N'Kết nối không dây', N'
Wi-Fi 6 (802.11ax)Bluetooth 5.1', 111);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (745, N'Chất liệu', N'Vỏ nhựa - nắp lưng bằng kim loại', 111);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (746, N'Hệ điều hành', N'Windows 10 Home SL', 111);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (747, N'Màn hình', N'15.6 inch', 112);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (748, N'RAM', N'8 GB', 112);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (749, N'Ổ cứng', N'
SSD 512 GB NVMe PCIeHỗ trợ khe cắm HDD SATA', 112);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (750, N'Card màn hình', N'Card rời - NVIDIA GeForce MX330, 2 GB', 112);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (751, N'
Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 112);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (752, N'Kết nối không dây', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 112);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (753, N'Chất liệu', N'Vỏ nhựa - nắp lưng bằng kim loại', 112);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (754, N'Hệ điều hành', N'Windows 10 Home SL', 112);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (755, N'Màn hình', N'15.6 inch', 113);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (756, N'RAM', N'16 GB', 113);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (758, N'Ổ cứng', N'SSD 512 GB NVMe PCIe', 113);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (759, N'Card màn hình', N'Card rời - NVIDIA GeForce GTX 1660Ti, 6 GB', 113);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (760, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 113);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (761, N'Kết nối không dây', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 113);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (762, N'Chất liệu', N'Vỏ nhựa', 113);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (763, N'Hệ điều hành', N'Windows 10 Home SL', 113);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (764, N'
Màn hình', N'15.6 inch', 114);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (765, N'RAM', N'16 GB', 114);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (766, N'Ổ cứng', N'
SSD 256 GB NVMe PCIe', 114);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (767, N'Card màn hình', N'
Card rời - NVIDIA GeForce GTX 1650Ti 4 GB', 114);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (768, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 114);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (769, N'Kết nối không dây', N'
Bluetooth 5.0Wi-Fi 802.11 a/b/g/n/ac', 114);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (770, N'Chất liệu', N'Vỏ nhựa', 114);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (771, N'Hệ điều hành', N'Windows 10 Home SL', 114);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (772, N'Màn hình', N'13.4 inch', 115);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (773, N'RAM', N'8 GB', 115);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (774, N'Ổ cứng', N'SSD 256 GB NVMe PCIe', 115);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (775, N'Card màn hình', N'Card tích hợp - Intel Iris Xe Graphics', 115);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (776, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm2 x Thunderbolt 4 USB-C', 115);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (777, N'Kết nối không dây', N'Wi-Fi 6 (802.11ax)Bluetooth 5.1', 115);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (778, N'Chất liệu', N'Vỏ kim loại nguyên khối', 115);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (779, N'Hệ điều hành', N'
Windows 10 Home SL', 115);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (780, N'Màn hình', N'
15.6 inch', 116);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (781, N'RAM', N'8 GB', 116);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (782, N'Ổ cứng', N'SSD 512 GB NVMe PCIe', 116);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (783, N'Card màn hình', N'
Card rời - NVIDIA GeForce GTX 1660Ti, 6 GB', 116);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (784, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 116);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (785, N'Kết nối không dây', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 116);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (786, N'Chất liệu', N'Vỏ nhựa', 116);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (787, N'Hệ điều hành', N'Windows 10 Home SL', 116);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (788, N'
Màn hình', N'15.6 inch', 117);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (789, N'RAM', N'8 GB', 117);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (790, N'Ổ cứng', N'SSD 512 GB NVMe PCIe', 117);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (791, N'Card màn hình', N'Card rời - NVIDIA GeForce GTX 1650Ti 4 GB', 117);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (792, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 117);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (793, N'Kết nối không dây', N'Wi-Fi 6 (802.11ax)Bluetooth 5.1', 117);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (794, N'Chất liệu', N'Vỏ kim loại', 117);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (795, N'Hệ điều hành', N'Windows 10 Home SL', 117);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (796, N'Màn hình', N'15.6 inch', 118);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (797, N'RAM', N'8 GB', 118);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (798, N'Ổ cứng', N'SSD 512 GB NVMe PCIe', 118);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (799, N'Card màn hình', N'Card tích hợp - Intel Iris Xe Graphics', 118);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (800, N'Cổng giao tiếp', N'2 x USB 3.1', 118);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (801, N'Kết nối không dây', N'Bluetooth 5.0Wi-Fi 802.11 a/b/g/n/ac', 118);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (802, N'Chất liệu', N'Nắp lưng và chiếu nghỉ tay bằng kim loại', 118);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (803, N'Hệ điều hành', N'Windows 10 Home SL', 118);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (805, N'Màn hình', N'15.6 inch', 119);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (806, N'RAM', N'8 GB', 119);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (807, N'Ổ cứng', N'SSD 512 GB NVMe PCIe', 119);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (808, N'Card màn hình', N'Card tích hợp - Intel Iris Xe Graphics', 119);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (809, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 119);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (810, N'Kết nối không dây', N'Bluetooth 5.0Wi-Fi 802.11 a/b/g/n/ac', 119);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (811, N'Chất liệu', N'Vỏ nhựa', 119);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (812, N'Hệ điều hành', N'Windows 10 Home SL', 119);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (813, N'Màn hình', N'15.6 inch', 120);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (814, N'RAM', N'16 GB', 120);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (815, N'Ổ cứng', N'SSD 1 TB M.2 PCIe', 120);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (818, N'
Card màn hình', N'Card rời - NVIDIA GeForce RTX2070', 120);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (819, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 120);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (820, N'Kết nối không dây', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 120);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (821, N'Chất liệu', N'Kim loại và polycarbonate', 120);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (822, N'Hệ điều hành', N'
Windows 10 Home SL + Office Home', 120);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (823, N'Màn hình', N'14 inch', 121);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (824, N'RAM', N'16 GB', 121);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (825, N'Ổ cứng', N'SSD 512 GB NVMe PCIe', 121);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (826, N'Card màn hình', N'Card tích hợp - Intel Iris Xe Graphics', 121);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (827, N'Cổng giao tiếp', N'
Jack tai nghe 3.5 mm', 121);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (828, N'Kết nối không dây', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 121);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (829, N'Chất liệu', N'Vỏ kim loại nguyên khối', 121);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (830, N'Hệ điều hành', N'Windows 10 Pro', 121);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (831, N'Màn hình', N'13.3 inch', 122);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (832, N'RAM', N'8 GB', 122);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (833, N'Ổ cứng', N'SSD 512 GB NVMe PCIe', 122);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (834, N'Card màn hình', N'
Card tích hợp - Intel Iris Xe Graphics', 122);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (835, N'Cổng giao tiếp', N'
Thunderbolt 4 USB-C2 x USB 3.1', 122);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (836, N'Kết nối không dây', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 122);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (837, N'Chất liệu', N'Vỏ kim loại nguyên khối', 122);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (838, N'Hệ điều hành', N'Windows 10 Home SL + Office Home', 122);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (839, N'Màn hình', N'13.3 inch', 1010);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (840, N'RAM', N'8 GB', 1010);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (841, N'Ổ cứng', N'SSD 256 GB', 1010);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (842, N'Card màn hình', N'Card tích hợp - 8 nhân GPU', 1010);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (843, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm2 x Thunderbolt 3 ', 1010);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (844, N'Kết nối không dây', N'Bluetooth 5.0Wi-Fi 6', 1010);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (845, N'Chất liệu', N'Vỏ kim loại nguyên khối', 1010);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (846, N'Hệ điều hành', N'Mac OS', 1010);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (847, N'Màn hình', N'13.3 inch', 1011);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (848, N'RAM', N'8 GB', 1011);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (849, N'Ổ cứng', N'SSD 256 GB', 1011);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (850, N'Card màn hình', N'Card tích hợp - 7 nhân GPU', 1011);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (851, N'Cổng giao tiếp', N'2 x Thunderbolt 3', 1011);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (852, N'
Kết nối không dây', N'Bluetooth 5.0Wi-Fi 6', 1011);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (853, N'Chất liệu', N'Vỏ kim loại nguyên khối', 1011);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (854, N'Hệ điều hành', N'Mac OS', 1011);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (855, N'Màn hình', N'13.3 inch', 1013);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (856, N'RAM', N'8 GB', 1013);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (857, N'Ổ cứng', N'SSD 512 GB', 1013);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (858, N'Card màn hình', N'Card tích hợp - 8 nhân GPU', 1013);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (859, N'Cổng giao tiếp', N'2 x Thunderbolt 3 (USB-C)', 1013);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (860, N'Kết nối không dây', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 1013);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (862, N'Chất liệu', N'Vỏ kim loại nguyên khối', 1013);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (863, N'Hệ điều hành', N'Mac OS', 1013);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (864, N'Màn hình', N'13.3 inch', 1014);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (865, N'RAM', N'8 GB', 1014);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (866, N'Ổ cứng', N'SSD 512 GB', 1014);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (867, N'
Card màn hình', N'Card tích hợp - 8 nhân GPU', 1014);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (868, N'Cổng giao tiếp', N'2 x Thunderbolt 3 (USB-C)Jack tai nghe 3.5 mm', 1014);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (869, N'Kết nối không dây', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 1014);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (870, N'Chất liệu', N'Vỏ kim loại nguyên khối', 1014);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (871, N'Hệ điều hành', N'Mac OS', 1014);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (872, N'Màn hình', N'13.3 inch', 1015);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (873, N'RAM', N'16 GB', 1015);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (874, N'Ổ cứng', N'SSD 1 TB', 1015);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (875, N'Card màn hình', N'Card tích hợp - 8 nhân GPU', 1015);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (876, N'Cổng giao tiếp', N'2 x Thunderbolt 3 (USB-C)', 1015);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (877, N'Kết nối không dây', N'
Bluetooth 5.0Wi-Fi 6 (802.11ax)', 1015);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (878, N'Chất liệu', N'Vỏ kim loại nguyên khối', 1015);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (879, N'Hệ điều hành', N'Mac OS', 1015);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (880, N'Màn hình', N'15.6 inch', 1016);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (881, N'RAM', N'16 GB', 1016);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (882, N'Ổ cứng', N'SSD 512 GB NVMe PCIe', 1016);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (883, N'Card màn hình', N'Card rời - NVIDIA GeForce RTX 3060 Max-Q, 6 GB', 1016);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (884, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 1016);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (885, N'Kết nối không dây', N'Wi-Fi 6 (802.11ax)Bluetooth 5.1', 1016);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (886, N'Chất liệu', N'Vỏ nhựa - nắp lưng bằng kim loại', 1016);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (887, N'Hệ điều hành', N'Windows 10 Home SL', 1016);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (888, N'Màn hình', N'15.6 inch', 1017);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (889, N'RAM', N'8 GB', 1017);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (890, N'Ổ cứng', N'SSD 512 GB NVMe PCIe', 1017);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (891, N'Card màn hình', N'Card rời - NVIDIA GeForce RTX3050, 4 GB', 1017);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (892, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 1017);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (893, N'Kết nối không dây', N'Bluetooth 5.2Wi-Fi 6 (802.11ax)', 1017);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (894, N'Chất liệu', N'Vỏ nhựa', 1017);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (895, N'Hệ điều hành', N'Windows 10 Home SL', 1017);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (896, N'Màn hình', N'17.3 inch', 1018);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (897, N'RAM', N'16 GB', 1018);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (898, N'Ổ cứng', N'SSD 1 TB M.2 PCIe', 1018);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (899, N'Card màn hình', N'
Card rời - NVIDIA GeForce RTX 3070, 8 GB', 1018);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (900, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 1018);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (901, N'Kết nối không dây', N'Bluetooth 5.2Wi-Fi 6 (802.11ax)', 1018);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (902, N'Chất liệu', N'Vỏ kim loại', 1018);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (903, N'Hệ điều hành', N'Windows 10 Home SL', 1018);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (904, N'Màn hình', N'13.4 inch', 1019);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (905, N'RAM', N'16 GB', 1019);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (907, N'Ổ cứng', N'SSD 1 TB NVMe PCIe Gen4x4', 1019);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (908, N'Card màn hình', N'Card tích hợp - Intel Iris Xe Graphics', 1019);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (909, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 1019);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (910, N'Kết nối không dây', N'Bluetooth 5.2Wi-Fi 6E (802.11ax)', 1019);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (911, N'Chất liệu', N'
Vỏ kim loại nguyên khối', 1019);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (912, N'Hệ điều hành', N'Windows 10 Home SL', 1019);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (913, N'Màn hình', N'15.6 inch', 1020);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (914, N'RAM', N'16 GB', 1020);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (915, N'Ổ cứng', N'
SSD 512 GB NVMe PCIeHỗ trợ khe cắm HDD SATA', 1020);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (916, N'Card màn hình', N'
Card rời - NVIDIA GeForce GTX 1660Ti, 6 GB', 1020);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (917, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 1020);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (918, N'Kết nối không dây', N'
Wi-Fi 6 (802.11ax)Bluetooth 5.1', 1020);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (919, N'Chất liệu:
', N'Vỏ nhựa', 1020);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (920, N'Hệ điều hành', N'Windows 10 Home SL', 1020);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (921, N'Màn hình', N'15.6 inch', 1020);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (922, N'Màn hình', N'15.6 inch', 1021);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (923, N'RAM', N'16 GB', 1021);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (924, N'Ổ cứng', N'SSD 512 GB NVMe PCIe', 1021);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (926, N'Card màn hình', N'Card rời - NVIDIA GeForce RTX 3060 Max-Q, 6 GB', 1021);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (927, N'
Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 1021);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (928, N'Kết nối không dây', N'
Wi-Fi 6 (802.11ax)Bluetooth 5.1', 1021);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (929, N'Chất liệu', N'Vỏ nhựa', 1021);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (930, N'Hệ điều hành', N'Windows 10 Home SL', 1021);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (931, N'Màn hình', N'15.6 inch', 1022);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (932, N'RAM', N'8 GB', 1022);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (933, N'Ổ cứng', N'SSD 512 GB NVMe PCIeHỗ trợ khe cắm HDD SATA', 1022);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (934, N'Card màn hình', N'
Card rời - NVIDIA GeForce GTX 1650 4 GB', 1022);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (935, N'Cổng giao tiếp', N'Jack tai nghe 3.5 mm', 1022);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (936, N'Kết nối không dây', N'Wi-Fi 6 (802.11ax)Bluetooth 5.1', 1022);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (938, N'Chất liệu', N'Nắp lưng và chiếu nghỉ tay bằng kim loại', 1022);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (939, N'Hệ điều hành', N'
Windows 10 Home SL', 1022);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (940, N'Màn hình', N'10.1"IPS LCD', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (941, N'Hệ điều hành', N'Android 10 (Không có  ogle)', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (942, N'Chip', N'Kirin 710A', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (943, N'RAM', N'3 GB', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (944, N'Bộ nhớ trong', N'64 GB', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (945, N'Kết nối', N'Hỗ trợ 4GCó nghe gọi', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (946, N'SIM', N'1 Nano SIM', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (947, N'Camera sau', N'5 MP', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (948, N'Camera trước', N'2 MP', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (949, N'Pin, Sạc', N'5100 mAh10 W', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (950, N'Màn hình', N'10.4"IPS LCD', 1024);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (951, N'Hệ điều hành', N'Android 10 (Không có  ogle)', 1024);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (952, N'Chip', N'Kirin 810', 1024);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (953, N'RAM', N'4 GB', 1024);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (954, N'Bộ nhớ trong', N'64 GB', 1024);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (955, N'Camera sau', N'8 MP', 1024);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (956, N'Camera trước', N'8 MP', 1024);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (957, N'Pin, Sạc', N'7250 mAh10 W', 1024);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (958, N'Màn hình', N'10.4"IPS LCD', 1025);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (959, N'Hệ điều hành', N'Android 10 (Không có  ogle)', 1025);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (961, N'Chip', N'Kirin 820 8 nhân', 1025);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (962, N'RAM', N'4 GB', 1025);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (963, N'Bộ nhớ trong', N'128 GB', 1025);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (964, N'Camera sau', N'8 MP', 1025);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (965, N'Camera trước', N'8 MP', 1025);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (966, N'Pin, Sạc', N'7250 mAh22.5 W', 1025);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (967, N'Màn hình', N'8"IPS LCD', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (968, N'Hệ điều hành', N'Android 10', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (969, N'Chip', N'MediaTek MT8768', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (970, N'RAM', N'2 GB', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (971, N'Bộ nhớ trong', N'32 GB', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (972, N'Kết nối', N'Hỗ trợ 4GCó nghe gọi', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (973, N'SIM', N'1 Nano SIM', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (975, N'Camera sau', N'5 MP', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (976, N'Camera trước', N'2 MP', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (977, N'Pin, Sạc', N'5100 mAh5 W', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (978, N'Màn hình', N'12.9"Liquid Retina XDR mini-LED LCD', 1027);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (979, N'Hệ điều hành', N'iPadOS 14', 1027);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (980, N'Chip', N'Apple M1 8 nhân', 1027);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (981, N'RAM', N'8 GB', 1027);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (982, N'Bộ nhớ trong', N'256 GB', 1027);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (983, N'Kết nối', N'5GNghe gọi qua FaceTime', 1027);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (984, N'SIM', N'1 Nano SIM hoặc 1 eSIM', 1027);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (985, N'Camera sau', N'Chính 12 MP & Phụ 10 MP, TOF 3D LiDAR', 1027);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (986, N'Camera trước', N'12 MP', 1027);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (987, N'Pin, Sạc', N'40.88 Wh (~ 10.835 mAh)20 W', 1027);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (988, N'Màn hình', N'11"Liquid Retina', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (989, N'Hệ điều hành', N'iPadOS 14', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (990, N'Chip', N'Apple M1 8 nhân', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (991, N'RAM', N'8 GB', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (992, N'Bộ nhớ trong', N'256 GB', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (993, N'Kết nối', N'5GNghe gọi qua FaceTime', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (994, N'SIM', N'1 Nano SIM hoặc 1 eSIM', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (995, N'Camera sau', N'Chính 12 MP & Phụ 10 MP, TOF 3D LiDAR', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (997, N'Camera trước', N'12 MP', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (998, N'Pin, Sạc', N'28.65 Wh (~ 7538 mAh)20 W', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (999, N'Màn hình', N'12.9"Liquid Retina', 1029);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1000, N'Hệ điều hành', N'iPadOS 14', 1029);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1001, N'Chip', N'Apple A12Z Bionic', 1029);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1002, N'RAM', N'6 GB', 1029);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1003, N'Bộ nhớ trong', N'128 GB', 1029);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1004, N'Kết nối', N'Nghe gọi qua FaceTime', 1029);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1005, N'Camera sau', N'Chính 12 MP & Phụ 10 MP, TOF 3D LiDAR', 1029);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1006, N'Camera trước', N'7 MP', 1029);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1007, N'Pin, Sạc:', N'36.71 Wh (~ 9720 mAh)20 W', 1029);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1008, N'Màn hình', N'11"Liquid Retina', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1009, N'Hệ điều hành', N'iPadOS 14', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1010, N'Chip', N'Apple A12Z Bionic', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1011, N'RAM', N'6 GB', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1012, N'Bộ nhớ trong', N'128 GB', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1013, N'Kết nối', N'Hỗ trợ 4GNghe gọi qua FaceTime', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1014, N'SIM', N'1 Nano SIM hoặc 1 eSIM', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1015, N'Camera sau', N'Chính 12 MP & Phụ 10 MP, TOF 3D LiDAR', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1016, N'Camera trước', N'7 MP', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1017, N'Pin, Sạc', N'28.65 Wh (~ 7600 mAh)20 W', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1018, N'Màn hình', N'10.9"Liquid Retina', 1031);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1019, N'Hệ điều hành', N'iPadOS 14', 1031);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1020, N'Chip', N'Apple A14 Bionic', 1031);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1021, N'RAM', N'4 GB', 1031);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1022, N'Bộ nhớ trong', N'256 GB', 1031);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1023, N'Kết nối', N'Nghe gọi qua FaceTime', 1031);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1024, N'Camera sau', N'12 MP', 1031);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1025, N'Camera trước', N'7 MP', 1031);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1026, N'Pin, Sạc', N'28.65 Wh (~ 7600 mAh)20 W', 1031);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1028, N'Màn hình', N'7.9"LED-backlit IPS LCD', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1029, N'Hệ điều hành', N'iPadOS 14', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1031, N'Chip', N'Apple A12 Bionic', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1032, N'RAM', N'3 GB', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1033, N'Bộ nhớ trong', N'64 GB', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1034, N'Kết nối', N'Hỗ trợ 4GNghe gọi qua FaceTime', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1035, N'SIM', N'1 Nano SIM & 1 eSIM', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1036, N'Camera sau', N'8 MP', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1038, N'Camera trước', N'7 MP', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1039, N'Pin, Sạc', N'19.1 Wh (~ 5124 mAh)10 W', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1041, N'Màn hình', N'10.2"Retina IPS LCD', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1042, N'Hệ điều hành', N'iPadOS 14', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1043, N'Chip', N'Apple A12 Bionic', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1044, N'RAM', N'3 GB', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1045, N'Bộ nhớ trong', N'128 GB', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1046, N'Kết nối', N'Hỗ trợ 4GNghe gọi qua FaceTime', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1047, N'SIM', N'1 Nano SIM hoặc 1 eSIM', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1048, N'Camera sau', N'8 MP', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1049, N'Camera trước', N'1.2 MP', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1050, N'Pin, Sạc', N'32.4 Wh (~ 8600 mAh)', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1052, N'Màn hình', N'10.3"IPS LCD', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1053, N'Hệ điều hành', N'Android 9', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1054, N'Chip', N'MediaTek Helio P22T', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1055, N'RAM', N'4 GB', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1056, N'Bộ nhớ trong', N'64 GB', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1057, N'Kết nối', N'Hỗ trợ 4G', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1058, N'SIM', N'1 Nano SIM', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1059, N'Camera sau', N'8 MP', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1060, N'Camera trước', N'5 MP', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1061, N'Pin, Sạc', N'5000 mAh10 W', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1062, N'Màn hình', N'10"IPS LCD', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1063, N'Hệ điều hành', N'Android 10', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1064, N'Chip', N'MediaTek Helio P22T', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1065, N'RAM', N'2 GB', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1066, N'Bộ nhớ trong', N'32 GB', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1067, N'Kết nối', N'Hỗ trợ 4G', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1068, N'SIM', N'1 Nano SIM', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1069, N'Camera sau', N'8 MP', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1070, N'Camera trước', N'5 MP', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1071, N'Pin, Sạc', N'5000 mAh10 W', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1072, N'Màn hình', N'8"IPS LCD', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1073, N'Hệ điều hành', N'Android 9', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1074, N'Chip', N'MediaTek Helio A22', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1075, N'RAM', N'3 GB', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1076, N'Bộ nhớ trong', N'32 GB', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1077, N'Bộ nhớ trong', N'32 GB', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1078, N'Kết nối', N'Hỗ trợ 4GCó nghe gọi', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1079, N'SIM', N'1 Nano SIM', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1080, N'Camera sau', N'5 MP', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1081, N'Camera trước', N'2 MP', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1082, N'Pin, Sạc', N'5000 mAh5 W', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1083, N'Màn hình', N'7"IPS LCD', 1038);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1084, N'Hệ điều hành', N'Android 9', 1038);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1085, N'Chip', N'MediaTek MT8765', 1038);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1086, N'RAM', N'2 GB', 1038);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1087, N'Bộ nhớ trong', N'32 GB', 1038);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1088, N'Kết nối', N'Hỗ trợ 4GCó nghe gọi', 1038);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1089, N'SIM', N'1 Nano SIM', 1038);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1090, N'Camera sau', N'2 MP', 1038);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1091, N'Camera trước', N'2 MP', 1038);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1092, N'Pin, Sạc', N'3500 mAh5 W', 1038);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1093, N'Màn hình', N'7"IPS LCD', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1094, N'Hệ điều hành', N'Android 8 (  Edition)', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1095, N'Chip', N'Mediatek MT8167D', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1096, N'RAM', N'1 GB', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1097, N'Bộ nhớ trong', N'16 GB', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1098, N'Kết nối', N'3GCó nghe gọi', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1099, N'SIM', N'1 SIM thường', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1100, N'Camera sau', N'2 MP', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1101, N'Camera trước', N'0.3 MP', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1102, N'Pin, Sạc', N'2750mAh5 W', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1103, N'Màn hình', N'10.1"IPS LCD', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1104, N'Hệ điều hành', N'Android 10', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1105, N'Chip', N'Spreadtrum SC9863A', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1106, N'RAM', N'3 GB', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1107, N'Bộ nhớ trong', N'32 GB', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1108, N'Kết nối', N'Hỗ trợ 4GCó nghe gọi', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1109, N'SIM', N'2 Nano SIM (SIM 2 chung khe thẻ nhớ)', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1110, N'Camera sau', N'8 MP', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1111, N'Camera trước', N'2 MP', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1112, N'Pin, Sạc', N'6000 mAh', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1113, N'Màn hình', N'10.1"IPS LCD', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1114, N'Hệ điều hành', N'Android 10', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1115, N'Chip', N'Spreadtrum SC9863A', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1116, N'RAM', N'2 GB', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1118, N'Bộ nhớ trong', N'32 GB', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1119, N'Kết nối', N'Hỗ trợ 4GCó nghe gọi', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1120, N'SIM', N'2 Nano SIM (SIM 2 chung khe thẻ nhớ)', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1121, N'Camera sau', N'5 MP', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1122, N'Camera trước', N'2 MP', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1123, N'Pin, Sạc', N'6000 mAh10 W', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1124, N'Màn hình', N'10.1"IPS LCD', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1125, N'Hệ điều hành', N'Android 9', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1126, N'Chip', N'MediaTek MT6580', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1127, N'RAM', N'2 GB', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1128, N'Bộ nhớ trong', N'16 GB', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1129, N'Kết nối', N'3GCó nghe gọi', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1130, N'SIM', N'2 SIM thường', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1131, N'Camera sau', N'5 MP', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1132, N'Camera trước', N'2 MP', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1133, N'Pin, Sạc', N'5000 mAh10 W', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1134, N'Màn hình', N'12.4"TFT LCD', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1135, N'Hệ điều hành', N'Android 11', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1136, N'Chip', N'Snapdra n 750G', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1137, N'RAM', N'4 GB', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1139, N'Bộ nhớ trong', N'64 GB', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1140, N'Kết nối', N'Hỗ trợ 4G, Có nghe gọi', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1141, N'SIM', N'1 Nano SIM', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1142, N'Camera sau', N'8 MP', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1143, N'Camera trước', N'5 MP', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1144, N'Pin, Sạc', N'10090 mAh, 45 W', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1145, N'Hãng', N'Samsung', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1147, N'Màn hình', N'8.7"TFT LCD', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1148, N'Hệ điều hành', N'Android 11', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1149, N'Chip', N'MediaTek MT8768T 8 nhân', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1150, N'RAM', N'3 GB', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1151, N'Bộ nhớ trong', N'32 GB', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1152, N'Kết nối', N'Hỗ trợ 4G, Có nghe gọi', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1153, N'SIM', N'1 Nano SIM', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1154, N'Camera sau', N'8 MP', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1155, N'Camera trước', N'2 MP', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1156, N'Pin, Sạc', N'5100 mAh, 15 W', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1157, N'Hãng', N'Samsung.
', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1158, N'Màn hình', N'11"LTPS IPS LCD', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1159, N'Hệ điều hành', N'Android 10', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1160, N'Chip', N'Snapdra n 865+', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1161, N'RAM', N'6 GB', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1162, N'Bộ nhớ trong', N'128 GB', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1163, N'Kết nối', N'Hỗ trợ 4G, Có nghe gọi', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1164, N'SIM', N'1 Nano SIM (chung thẻ nhớ)', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1165, N'Camera sau', N'Chính 13 MP & Phụ 5 MP', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1166, N'Camera trước', N'8 MP', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1167, N'Pin, Sạc', N'8000 mAh, 45 W', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1168, N'Hãng', N'Samsung', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1169, N'Màn hình', N'8"TFT LCD', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1170, N'Hệ điều hành', N'Android 10', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1171, N'Chip', N'Snapdra n 429', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1172, N'RAM', N'2 GB', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1173, N'Bộ nhớ trong', N'32 GB', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1174, N'Kết nối', N'Hỗ trợ 4GCó nghe gọi', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1175, N'SIM', N'1 Nano SIM', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1176, N'Camera sau', N'8 MP', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1177, N'Camera trước', N'2 MP', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1178, N'Pin, Sạc', N'5100 mAh10 W', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1179, N'Hãng', N'Samsung', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1180, N'Màn hình', N'10.4"PLS LCD', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1181, N'Hệ điều hành', N'Android 10', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1182, N'Chip', N'Exynos 9611', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1183, N'RAM', N'4 GB', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1184, N'Bộ nhớ trong', N'64 GB', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1185, N'Kết nối', N'Hỗ trợ 4GCó nghe gọi', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1186, N'SIM', N'1 Nano SIM', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1188, N'Camera sau', N'8 MP', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1189, N'Camera trước', N'5 MP', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1190, N'Pin, Sạc', N'7040 mAh10 W', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1191, N'Hãng', N'Samsung', 1047);


INSERT INTO tintuc (id, noidung, username, image) VALUES (1, N'Hiệu năng làm việc và học tập mạnh mẽ đến từ HP Pavilion 15 eg0505TU i5 1135G7 (46M02PA) cùng kiểu dáng thanh lịch là bạn đồng hành lý tưởng, đáp ứng mọi nhu cầu hàng ngày của người dùng.', N'hsang', N'18.590.000Đ.jpg');
INSERT INTO tintuc (id, noidung, username, image) VALUES (2, N'Laptop HP 15s fq2559TU i5 (46M27PA) sở hữu n ại hình thanh lịch và vi xử lý Intel thế hệ 11 hiện đại, kết hợp công nghệ màn hình cao cấp cho hiệu năng ổn định và chất lượng hình ảnh tuyệt vời.', N'hsang', N'17.590.000Đ.jpg');
INSERT INTO tintuc (id, noidung, username, image) VALUES (3, N'HP Omen 15 ek0078TX i7 (26Y68PA) là chiếc laptop gaming mang trong mình sức mạnh siêu phàm nhờ sở hữu cấu hình gồm con chip Intel Core i7 mạnh mẽ và vi xử lý đồ họa cực mượt mà nhưng vẫn giữ n ại hình tương đối mỏng nhẹ, đây chính là công cụ đắc lực, đồng hành cùng bạn trong mọi cuộc chiến.', N'hsang', N'51.740.000Đ.jpg');
INSERT INTO tintuc (id, noidung, username, image) VALUES (4, N'Đẳng cấp và ấn tượng hơn bao giờ hết cùng laptop HP EliteBook X360 1040 G8 i7 (3G1H4PA) với thiết kế sang trọng, bản lề gập xoay 360 độ cùng khả năng vận hành và xử lý mọi tác vụ mạnh mẽ mang đến những trải nghiệm trọn vẹn, khó quên cho người dùng.', N'hsang', N'49.090.000.jpg');
INSERT INTO tintuc (id, noidung, username, image) VALUES (5, N'Laptop HP Envy 13 ba1030TU i7 (2K0B6PA) sở hữu thiết kế mỏng nhẹ cùng cấu hình cực mạnh mẽ đáp ứng đa dạng nhu cầu làm việc, giúp bạn đạt được hiệu suất làm việc tốt nhất.', N'hsang', N'28.890.000.jpg');
INSERT INTO tintuc (id, noidung, username, image) VALUES (8, N'luật dạn háng', N'2', N'9d308e13.jpg');
