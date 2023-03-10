create database duan;
USE duan;
 
/****** Object:  Table Accounts    Script Date: 9/12/2021 5:32:14 PM ******/

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

INSERT INTO Categories (Id, Name) VALUES (N'dhtm', N'??H Th??ng Minh');
INSERT INTO Categories (Id, Name) VALUES (N'dt  ', N'??i???n Tho???i');
INSERT INTO Categories (Id, Name) VALUES (N'mt  ', N'M??y T??nh');
INSERT INTO Categories (Id, Name) VALUES (N'pk  ', N'Ph??? ki???n');
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
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1019, N'G???y ch???p ???nh', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1022, N'Gi?? ????? ??i???n tho???i', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1023, N'Loa ??i???n tho???i', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1024, N'S???c d??? ph??ng', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1026, N'Loa ?????ng h???', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1027, N'S???c d??? ph??ng ?????ng h???', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1028, N'Tai nghe bluetooth ?????ng h???', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1029, N'B??n Ph??m', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1030, N'Chu???t', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1031, N'Headphone', N'pk  ');
INSERT INTO Catesmall (Id, Name, CategoryId) VALUES (1032, N'??? c???ng di ?????ng', N'pk  ');
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
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (20, N'm hay qu?? sang ??i', 12, N'hsang', CAST(N'2021-10-20' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (23, N'123', 13, N'hsang', CAST(N'2021-10-20' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (24, N't??i ngu vl', 12, N'hsang', CAST(N'2021-10-22' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (25, N'123', 20, N'hsang', CAST(N'2021-11-07' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (26, N'sang dz', 35, N'hsang', CAST(N'2021-11-16' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (27, N'123', 9, N'hsang', CAST(N'2021-11-18' AS Date));
INSERT INTO Cmtproduct (Id, Comment, ProductId, Username, date) VALUES (28, N'123', 9, N'hsang', CAST(N'2021-11-30' AS Date));


INSERT INTO Cmtstore (Id, Comment, Store, Username, date) VALUES (1, N'12', 4, N'hsang', CAST(N'2021-12-07' AS Date));
INSERT INTO Cmtstore (Id, Comment, Store, Username, date) VALUES (2, N'1234', 4, N'hsang', CAST(N'2021-12-07' AS Date));
INSERT INTO Cmtstore (Id, Comment, Store, Username, date) VALUES (3, N'1244555', 4, N'hsang', CAST(N'2021-12-07' AS Date));
INSERT INTO Cmtstore (Id, Comment, Store, Username, date) VALUES (4, N'c???a h??ng l???a ?????o', 4, N'hsang', CAST(N'2021-12-07' AS Date));


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
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (64, N'Apple Watch S5 LTE 44mm vi???n th??p d??y th??p b???c.jpg', 64);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (65, N'Apple Watch S6 40mm vi???n nh??m d??y cao su h???ng.jpg', 65);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (66, N'Apple Watch S6 LTE.jpg', 66);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (67, N'Apple Watch SE LTE.jpg', 67);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (68, N'Apple Watch SE', 68);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (69, N'BeU Active 1.jpg', 69);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (70, N'BeU PT1.jpg', 70);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (71, N'BeU PT2.jpg', 72);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (72, N'BeU Sporty 1.jpg', 73);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (73, N'BeU Watch KW09.jpg', 74);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (74, N'?????ng h??? th??ng minh BeU B2.jpg', 75);
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
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (88, N'Oppo Watch 41mm d??y silicone ??en.jpg', 89);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (89, N'Oppo Watch 41mm d??y silicone.jpg', 90);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (90, N'Oppo Watch 41mm.jpg', 91);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (91, N'Oppo Watch 46mm d??y silicone ??en.jpg', 92);
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
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (110, N'39.490.000??.jpg', 110);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (111, N'32.490.000??.jpg', 111);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (112, N'20.390.000??.jpg', 112);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (113, N'31.290.000.jpg', 113);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (114, N'27.290.000.jpg', 114);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (115, N'41.490.000.jpg', 115);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (116, N'30.590.000.jpg', 116);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (117, N'29.990.000.jpg', 117);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (118, N'18.590.000??.jpg', 118);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (119, N'17.590.000??.jpg', 119);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (120, N'51.740.000??.jpg', 120);
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
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (266, N'iphone 12 xanh d????ng(2).jpg', 9);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (267, N'iphone 12 xanh d????ng(3).jpg', 9);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (268, N'iphone 12 xanh d????ng(4).jpg', 9);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (269, N'iphone 12 xanh d????ng(5).jpg', 9);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (270, N'iPhone 12 Pro xanh d????ng(2).jpg', 10);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (271, N'iPhone 12 Pro xanh d????ng(3).jpg', 10);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (272, N'iPhone 12 Pro xanh d????ng(4).jpg', 10);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (273, N'iPhone 12 Pro xanh d????ng(5).jpg', 10);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (274, N'iPhone 12 Pro b???c(2).jpg', 12);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (275, N'iPhone 12 Pro b???c(3).jpg', 12);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (276, N'iPhone 12 Pro b???c(4).jpg', 12);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (277, N'iPhone 12 Pro b???c(5).jpg', 12);
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
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (323, N'Realme 8 Pro V??ng(2).jpg', 34);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (324, N'Realme 8 Pro V??ng(3).jpg', 34);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (325, N'Realme 8 Pro(2).jpg', 35);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (327, N'Realme 8 Pro(3).jpg', 35);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (329, N'Realme 8 Pro(4).jpg', 35);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (330, N'Realme 8 Pro(5).jpg', 35);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (331, N'Realme 7 Pro(2).jpg', 37);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (332, N'Realme 7 Pro(3).jpg', 37);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (333, N'Realme 7 Pro(4).jpg', 37);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (334, N'Realme 7 Pro(5).jpg', 37);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (335, N'Samsung Galaxy Z Fold3 b???c(2).jpg', 23);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (336, N'Samsung Galaxy Z Fold3 b???c(3).jpg', 23);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (337, N'Samsung Galaxy Z Fold3 b???c(4).jpg', 23);
 
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (338, N'Samsung Galaxy Z Fold3 b???c(5).jpg', 23);
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
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (364, N'Vivo V20 ??en(2).jpg', 42);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (365, N'Vivo V20 ??en(3).jpg', 42);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (366, N'Vivo V20 ??en(4).jpg', 42);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (367, N'Vivo V20 ??en(5).jpg', 42);
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
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (468, N'Apple Watch S5 LTE 44mm vi???n th??p d??y th??p b???c.jpg', 64);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (470, N'Apple Watch S5 LTE 44mm vi???n  th??p b???c2.jpg', 64);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (471, N'Apple Watch S5 LTE 44mm vi???n  th??p b???c3.jpg', 64);
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
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (562, N'Oppo Watch 41mm d??y silicone ??en2.jpg', 89);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (563, N'Oppo Watch 41mm d??y silicone ??en3.jpg', 89);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (564, N'Oppo Watch 41mm d??y silicone ??en4.jpg', 89);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (565, N'Oppo Watch 41mm d??y silicone ??en5.jpg', 89);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (566, N'Oppo Watch 41mm d??y silicone ??en6.jpg', 89);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (567, N'Oppo Watch 41mm d??y silicone2.png', 90);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (568, N'Oppo Watch 41mm d??y silicone3.png', 90);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (569, N'Oppo Watch 41mm d??y silicone4.png', 90);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (570, N'Oppo Watch 41mm(2).jpg', 91);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (571, N'Oppo Watch 41mm(3).jpg', 91);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (572, N'Oppo Watch 41mm(4).jpg', 91);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (573, N'Oppo Watch 41mm(5).jpg', 91);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (574, N'Oppo Watch 41mm(6).jpg', 91);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (575, N'Oppo Watch 46mm d??y silicone ??en2.jpg', 92);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (576, N'Oppo Watch 46mm d??y silicone ??en3.jpg', 92);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (577, N'Oppo Watch 46mm d??y silicone ??en4.jpg', 92);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (578, N'Oppo Watch 46mm d??y silicone ??en5.jpg', 92);
INSERT INTO Image (Id, Nameimage, ProductId) VALUES (579, N'Oppo Watch 46mm d??y silicone ??en6.jpg', 92);
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


INSERT INTO Introduce (Id, ProductId, data) VALUES (1, 118, N'Hi???u n??ng l??m vi???c v?? h???c t???p m???nh m??? ?????n t??? HP Pavilion 15 eg0505TU i5 1135G7 (46M02PA) c??ng ki???u d??ng thanh l???ch l?? b???n ?????ng h??nh l?? t?????ng, ????p ???ng m???i nhu c???u h??ng ng??y c???a ng?????i d??ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (2, 119, N'Laptop HP 15s fq2559TU i5 (46M27PA) s??? h???u n ???i h??nh thanh l???ch v?? vi x??? l?? Intel th??? h??? 11 hi???n ?????i, k???t h???p c??ng ngh??? m??n h??nh cao c???p cho hi???u n??ng ???n ?????nh v?? ch???t l?????ng h??nh ???nh tuy???t v???i.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (3, 120, N'HP Omen 15 ek0078TX i7 (26Y68PA) l?? chi???c laptop gaming mang trong m??nh s???c m???nh si??u ph??m nh??? s??? h???u c???u h??nh g???m con chip Intel Core i7 m???nh m??? v?? vi x??? l?? ????? h???a c???c m?????t m?? nh??ng v???n gi??? n ???i h??nh t????ng ?????i m???ng nh???, ????y ch??nh l?? c??ng c??? ?????c l???c, ?????ng h??nh c??ng b???n trong m???i cu???c chi???n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (4, 121, N'?????ng c???p v?? ???n t?????ng h??n bao gi??? h???t c??ng laptop HP EliteBook X360 1040 G8 i7 (3G1H4PA) v???i thi???t k??? sang tr???ng, b???n l??? g???p xoay 360 ????? c??ng kh??? n??ng v???n h??nh v?? x??? l?? m???i t??c v??? m???nh m??? mang ?????n nh???ng tr???i nghi???m tr???n v???n, kh?? qu??n cho ng?????i d??ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (5, 122, N'Laptop HP Envy 13 ba1030TU i7 (2K0B6PA) s??? h???u thi???t k??? m???ng nh??? c??ng c???u h??nh c???c m???nh m??? ????p ???ng ??a d???ng nhu c???u l??m vi???c, gi??p b???n ?????t ???????c hi???u su???t l??m vi???c t???t nh???t.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (6, 123, N'S??? h???u thi???t k??? m???ng nh??? v?? thanh l???ch, Lenovo IdeaPad Slim 5 15ITL05 i5 1135G7 (82FG001PVN) kh??ng ch??? l?? m???t m???u laptop th???i trang, m?? c??n mang tr??n m??nh s???c m???nh v?? c??ng m???nh m??? ?????n t??? b??? vi x??? l?? Intel Core i5 th??? h??? th??? 11 gi??p b???n ho??n th??nh xu???t s???c m???i c??ng vi???c.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (7, 124, N'Laptop Lenovo IdeaPad 3 15ITL6 i5 (82H80042VN) v???i thi???t k??? m???ng nh??? ?????p m???t c??ng hi???u n??ng ???n ?????nh gi??p b???n ho??n th??nh c??ng vi???c m???t c??ch nhanh ch??ng, hi???u qu???.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (8, 125, N'Laptop Lenovo Ideapad 5 15ITL05 i5 1135G7 (82FG00P5VN) l?? m???t s???n ph???m ???ho??n h???o" t??? thi???t k??? th??ng minh, tinh t??? ?????n c???u h??nh m???nh m??? c???a Intel th??? h??? 11, ????p ???ng m???i nhu c???u cho b???n t??? t??c v??? v??n ph??ng ?????n ????? h???a chuy??n nghi???p, gi???i tr??, ch??i game ????n gi???n, r???t x???ng ????ng ????? b???n s??? h???u ngay.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (9, 129, N'Laptop Lenovo Ideapad Gaming 3 15IMH05 i7 (81Y4013UVN) l?? d??ng laptop gaming t???m trung v???i thi???t k??? t???i gi???n, v??? n ??i kh??ng qu?? h???m h??? nh??ng v???n s??? h???u hi???u n??ng cao ????p ???ng t???t t??? nhu c???u l??m vi???c ?????n gi???i tr??.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (10, 130, N'Sang tr???ng, ?????ng c???p, m???nh m??? l?? nh???ng m??? t??? t??m g???n gi?? tr??? m?? laptop Lenovo Yoga 9 14ITL5 (82BG006EVN) mang l???i cho b???n. N???u ??ang t??m 1 chi???c laptop m???ng nh???, linh ho???t, c???u h??nh ???n t?????ng h??? tr??? c??c t??c v??? n???ng, tr???i nghi???m ngay phi??n b???n cao c???p n??y t??? Lenovo.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (11, 133, N'LG Gram 16 2021 i7 (16Z90P-G.AH73A5) v???i thi???t k??? si??u m???ng c??ng c???u h??nh m???nh v???i chip Intel th??? h??? 11, card ????? h???a Intel Iris Xe Graphics ????p ???ng m???i nhu c???u ng?????i d??ng t??? v??n ph??ng ?????n ????? h???a chuy??n nghi???p.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (12, 1007, N'V???i t??nh ch???t c??ng vi???c c???n di chuy???n nhi???u hay ph???i mang laptop ??i l??m th?????ng xuy??n, LG Gram 16 2021 i7 (16Z90P-G.AH75A5) v???a m???ng nh??? v???a c?? hi???u n??ng m???nh m??? t??? b??? vi x??? l?? Intel th??? h??? 11 t??n ti???n s??? l?? c???ng s??? tuy???t v???i m?? b???n lu??n t??m ki???m b???y l??u nay.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (13, 1008, N'LG Gram 14 2021 i7 (14Z90P-G.AH75A5) t??? tin ?????ng h??nh c??ng b???n di chuy???n kh???p m???i n??i v???i thi???t k??? si??u g???n nh??? v?? sang tr???ng c??ng b??? vi x??? l?? m???nh m??? ?????t chu???n Intel Evo.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (14, 1009, N'Laptop LG Gram 14 i5 (14Z90N-V.AR52A5) l?? phi??n b???n laptop si??u g???n nh??? ti???n l???i cho m???i nhu c???u d???ch chuy???n c???a b???n. Kh??ng ch??? ??em ?????n thi???t k??? ???n t?????ng, LG c??n trang b??? cho ?????a con tinh th???n c???a m??nh nhi???u t??nh n??ng hi???n ?????i c??ng ????? b???n ?????t chu???n qu??n ?????i.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (15, 1010, N'Apple Macbook Pro M1 2020 ???????c n??ng c???p v???i b??? vi x??? l?? m???i c???c k??? m???nh m???, chi???c laptop n??y s??? ph???c v??? t???t cho c??ng vi???c c???a b???n, ?????c bi???t cho l??nh v???c ????? h???a, k??? thu???t.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (16, 1011, N'Apple MacBook Air M1 s??? h???u c??c t??nh n??ng hi???n ?????i c??ng v???i hi???u n??ng m???nh m??? t??? Chip Apple M1 ?????c quy???n t??? Apple, chi???c laptop nh??? g???n n??y r???t ph?? h???p v???i sinh vi??n, nh??n vi??n v??n ph??ng kh??ng ch??? x??? l?? t???t c??c t??c v??? v??n ph??ng m?? c??n gi???i quy???t ???n ?????nh thi???t k??? ????? ho???.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (17, 1013, N'Laptop Apple MacBook Air M1 2020 c?? thi???t k??? ?????p, sang tr???ng v???i CPU M1 ?????c quy???n t??? Apple cho hi???u n??ng ????? h???a cao, m??n h??nh Retina hi???n th??? si??u n??t c??ng v???i h??? th???ng b???o m???t t???i ??u.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (18, 1014, N'Apple Macbook Pro M1 2020 ???????c n??ng c???p v???i b??? vi x??? l?? m???i c???c k??? m???nh m???, chi???c laptop n??y s??? ph???c v??? t???t cho c??ng vi???c c???a b???n, ?????c bi???t cho l??nh v???c ????? h???a, k??? thu???t.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (19, 1015, N'Laptop Apple Macbook Pro M1 2020 (Z11C000CJ) v???i chip M1 d??nh ri??ng cho MacBook ????a hi???u n??ng c???a MacBook Pro 2020 l??n m???t t???m cao m???i. M??n h??nh Retina si??u n??t, th???i l?????ng pin ???n t?????ng v?? h??ng lo???t c??c t??nh n??ng hi???n ?????i gi??p b???n c?? ???????c tr???i nghi???m l??m vi???c chuy??n nghi???p nh???t.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (20, 1016, N'Laptop MSI GF65 10UE i7 (228VN) s??? h???u thi???t k??? ?????ng c???p c??ng hi???u n??ng m???nh m???, ?????c bi???t hi???u su???t ch??i game ???????c n??ng c???p ????ng k??? mang ?????n cho b???n nh???ng gi??? ph??t gi???i tr?? b???t t???n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (21, 1017, N'Laptop MSI Katana GF66 11UC i7 (224VN) mang v??? n ??i c?? ?????ng c??ng c???u h??nh m???nh m???, ?????y nhanh qu?? tr??nh x??? l?? m???i t??c v??? hay s???n s??ng ?????ng h??nh c??ng b???n chi???n m???i th??? lo???i game ?????y k???ch t??nh.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (22, 1018, N'Laptop MSI GP76 11UG i7 (435VN) thi???t k??? c???c ng???u, c???u h??nh c???c m???nh v???i b??? vi x??? l?? Gen 11 t??? nh?? Intel, kh??ng nh???ng tho??? s???c tr??? th??nh game th??? tr??n m???i t???a game m?? c??n c?? th??? ????p ???ng c??c t??c v??? ????? ho???, k??? thu???t chuy??n nghi???p.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (23, 1019, N'Khi nh???c t???i MSI ch???c ch???n m???i ng?????i s??? ngh?? ngay ?????n d??ng laptop gaming c???c n???i ti???ng c???a h??ng, nh??ng MSI ???? t???ng ng??y thay ?????i quan ni???m n??y b???ng c??ch cho ra m???t c??c m???u laptop m???ng nh??? v???i c???u h??nh m???nh m??? nh?? chi???c MSI Summit E13 Flip Evo i7 (211VN) n??y.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (24, 1020, N'Laptop MSI Gaming Leopard 10SDRK GL65 i7 (242VN) l?? chi???c laptop gaming v???i thi???t k??? chu???n hi???n ?????i, hi???u n??ng m???nh m??? v???i CPU th??? h??? m???i mang l???i s???c m???nh chi???n game ?????nh cao cho c??c game th??? l???a ch???n l?? t?????ng trong t???m gi??.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (25, 1021, N'T???i ??u h??a cho m???i ho???t ?????ng t??? ????? h???a ?????n chi???n game, MSI GF65 Thin 10UE i5 (286VN) s??? l?? ng?????i c???ng s??? ?????c l???c v???i thi???t k??? ?????c ????o v?? c???u h??nh m???nh m???, c??ng b???n x??ng pha tr??n m???i chi???n tr?????ng ???o.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (26, 1022, N'MSI GL65 Leopard 10SCXK i7 (217VN) s??? h???u thi???t k??? gaming hi???n ?????i v?? s???c m???nh v?????t tr???i c???a b??? vi x??? l?? Intel Core i7 d??ng H s???n s??ng ?????ng h??nh c??ng b???n trong m???i cu???c chi???n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (27, 1023, N'Chi???c m??y t??nh b???ng c???a Huawei, Huawei MatePad T10s c??ng ???? ch??nh th???c ???????c ch??o s??n. V???i vi x??? l?? 8 nh??n m??? ra m???t th??? gi???i gi???i tr?? m?????t m??, s???ng ?????ng t???ng kho???nh kh???c v???i m??n h??nh c???c l???n, h?? l??? m???t chi???c m??y t??nh b???ng t???t trong t???m gi?? m?? b???t k??? ai c??ng ?????u y??u th??ch.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (28, 1024, N'Huawei cho ra m???t m??y t??nh b???ng Huawei MatePad c?? m???c gi?? d??? ti???p c???n. ???????c thi???t k??? m???ng nh??? v?? ?????y ????? c??c t??nh n??ng c???n thi???t, Huawei MatePad l?? s??? l???a ch???n tuy???t v???i cho nh???ng ai y??u th??ch m??n h??nh l???n nh??ng l???i thu???n ti???n d??? d??ng di chuy???n mang theo.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (29, 1025, N'S??? h???u thi???t k??? cao c???p, gi???i tr?? b??ng n??? v???i m??n h??nh si??u l???n v?? d??n ??m thanh v??m 4 loa c???c k??? s???ng ?????ng, ???????c t??y ch???n b??? nh??? trong si??u kh???ng 128 GB, m??y t??nh b???ng Huawei MatePad s??? l?? m???t l???a rch???n ho??n h???o cho m???i nhu c???u c???a b???n d?? c??ng vi???c hay vui ch??i.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (30, 1026, N'Huawei MatePad T8 l?? m???t trong nh???ng m???u m??y t??nh b???ng gi?? r??? c???a Huawei c?? thi???t k??? nguy??n kh???i c??ng m???t c???u h??nh c?? b???n, ????? d??ng cho c??c t??c v??? h???ng ng??y c???a m???i ng?????i d??ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (31, 1027, N'iPad Pro M1 12.9 inch Wifi 256GB (2021) l?? d??ng m??y t??nh b???ng cao c???p c???a Apple v???i nhi???u n??ng c???p ????ng ch?? ?? nh?? chip Apple M1 gi???ng tr??n MacBook v?? m??n h??nh mini-LED m???i c??ng nhi???u ?????t ph?? c??ng ngh??? d???n ?????u kh??c mang ?????n tr???i nghi???m l??m vi???c v?? gi???i tr?? ?????nh cao.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (32, 1028, N'Apple g??y ???n t?????ng khi cho ra m???t d??ng laptop MacBook trang b??? chip Apple M1, ??em ?????n m???t hi???u n??ng x??? l?? v?????t tr???i. Gi??? ????y n?? ???? xu???t hi???n tr??n chi???c m??y t??nh b???ng iPad Pro M1 11 inch Wifi 256GB (2021) ch???c ch???n s??? ti???p n???i s??? th??nh c??ng t??? d??ng laptop ra m???t tr?????c ????.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (33, 1029, N'M??y t??nh b???ng iPad Pro M1 12.9 inch Wifi Cellular 256GB (2021) trang b??? con chip v?? c??ng m???nh m??? M1 c??ng c??ng ngh??? m??n h??nh m???i mini-LED ???????c r???t nhi???u ng?????i d??ng ????n nh???n n???ng nhi???t v?? ????nh gi?? r???t t???t s???n ph???m n??y ?????n t??? Apple.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (34, 1030, N'D?? tr??n th??? tr?????ng c?? kh?? nhi???u c??c d??ng m??y t??nh b???ng, nh??ng iPad c???a th????ng hi???u Apple v???n ???????c ????nh gi?? l?? vua trong l??nh v???c n??y. iPad Pro M1 11 inch Wifi Cellular 256GB (2021) khi ???????c cho ra m???t, ???? nhanh ch??ng ???khu???y ?????o??? gi???i c??ng ngh??? b???i nh???ng t??nh n??ng ??u vi???t m?? thi???t b??? s??? h???u.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (35, 1031, N'iPad Air 4 khi ???????c cho ra m???t ???? g??y ra m???t c??n s???t cho gi???i c??ng ngh??? to??n c???u, khi s??? d???ng chipset A14 Bionic v???i hi???u n??ng c???c kh???ng, b??n c???nh m???t thi???t k??? cao c???p v?? nh???ng c??ng ngh??? h??ng ?????u.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (36, 1032, N'Nhi???u ng?????i ?????n ??o??n r???ng Apple ???? khai t??? d??ng iPad Mini c???a m??nh khi ???? 4 n??m k??? t??? th??? h??? m???i nh???t kh??ng c?? th??m b???t c??? n??ng c???p n??o. Tuy nhi??n iPad Mini 7.9 inch Wifi 2019 (iPad Mini 5) ra m???t v?? ????nh d???u s??? tr??? l???i c???a m???t chi???c m??y t??nh b???ng nh??? g???n nh?? ng??y n??o.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (37, 1034, N'Sau iPad 7 th?? Apple ???? tung ra th??? h??? m??y t??nh b???ng ti???p theo v???i iPad Wifi 8 Cellular 128 GB (2020). M???c d?? kh??ng c?? qu?? nhi???u n??ng c???p n???i b???t, nh??ng iPad 8 v???n ghi ??i???m v???i ng?????i d??ng nh??? v??o hi???u n??ng m???nh m??? ?????n t??? vi x??? l?? A12 Bionic, iPadOS m?????t m?? t???i ??u cho gi???i tr?? v?? c??ng vi???c.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (38, 1035, N'Lenovo Tab M10 ch??nh l?? chi???c m??y t??nh b???ng v???i m??n h??nh s???c n??t k??ch th?????c l???n c??ng th???i l?????ng pin tr??u ????p ???ng t???t nhu c???u s??? d???ng c?? b???n nh?? xem phim, l?????t web h???ng ng??y.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (39, 1036, N'Lenovo Tab M10 Gen 2 t??? nh?? Lenovo n???i b???t trong ph??n kh??c t???m trung khi s??? h???u thi???t k??? g???n nh???, hi???n ?????i c??ng kh??? n??ng k???t n???i m???nh m???, vi??n pin ???n t?????ng v?? c???u h??nh ???n ?????nh trong t???m gi??.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (40, 1037, N'Lenovo Tab M8 chi???c m??y t??nh b???ng gi?? r???, c???u h??nh ???n, thi???t k??? cao c???p trong t???m gi??, ho??n to??n ph?? h???p v???i c??c nhu c???u c?? b???n nh?? ?????c b??o, xem phim, l?????t web h???ng ng??y.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (41, 1038, N'Lenovo ra m???t d??ng m??y t??nh b???ng mang t??n Lenovo Tab M7 l?? s??? l???a ch???n r???t ????ng ????? c??n nh???c cho ng?????i d??ng ph??? th??ng v???i thi???t k??? tinh t???, c???ng c??p c??ng m???t c???u h??nh m???nh m??? v?? nhi???u t??nh n??ng h???u ??ch.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (42, 1039, N'Lenovo ???? tung ra chi???c m??y t??nh b???ng Lenovo Tab E7 TB-7104I v???i c???u h??nh ????p ???ng kh?? m?????t m?? c??c t??c v??? c?? b???n c???a ng?????i d??ng nh?? l?????t web, gi???i tr??, ch???p ???nh,... v?? m??y t??nh b???ng Lenovo r???t ????ng ???????c c??n nh???c trong ph??n kh??c ph??? th??ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (43, 1040, N'Masstel Tab 10 Ultra ???????c cho l?? phi??n b???n ???????c c???i ti???n t??? c??c phi??n b???n ti???n nhi???m tr?????c ???? l?? Tab 10 Pro, c?? m???c gi?? t???m trung nh??ng v???n ?????m b???o ch???t l?????ng. H??y c??ng t??m hi???u ?????a ???con c??ng??? m???i nh???t c???a Masstel t??nh t???i th??ng 10/2020.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (44, 1041, N'Thi???t k??? m???ng nh???, th???i l?????ng pin c???c l??u, m??n h??nh r???ng, Masstel Tab 10 4G d??ng m??y t??nh b???ng gi?? r??? ?????n t??? th????ng hi???u Masstel s??? l?? s??? ch???n l???a ph?? h???p ????? gi???i tr??, h???c t???p, tra c???u th??ng tin c???a ng?????i d??ng, c??ng k???t n???i 4G cho t???c ????? m???ng nhanh ch??ng m???i l??c m???i n??i.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (45, 1042, N'Masstel Tab10 Pro l?? m???t l???a ch???n kh?? h???p l?? d??nh cho c??c b???n h???c sinh, sinh vi??n, nh???ng ng?????i mu???n c?? m???t thi???t b??? gi?? r??? nh??ng v???n c?? m???t m??n h??nh l???n ????? h???c t???p hay gi???i tr??.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (46, 1043, N'Samsung ch??nh th???c tr??nh l??ng m???u m??y t??nh b???ng c?? t??n Galaxy Tab S7 FE, m??y trang b??? c???u h??nh m???nh m???, m??n h??nh gi???i tr?? si??u l???n v?? ??i???m ???n t?????ng nh???t l?? vi??n pin si??u kh???ng ???????c t??ch h???p b??n trong, gi??p t??ng hi???u su???t l??m vi???c nh??ng v???n c?? t??nh di ?????ng c???c cao.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (47, 1044, N'Galaxy Tab A7 Lite l?? phi??n b???n r??t g???n c???a d??ng m??y t??nh b???ng "??n kh??ch" Galaxy Tab A7 thu???c th????ng hi???u Samsung, ????p ???ng nhu c???u gi???i tr?? c???a kh??ch h??ng thu???c ph??n kh??c b??nh d??n v???i m??n h??nh l???n nh??ng v???n g???n nh??? h???p t??i ti???n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (48, 1045, N'Samsung Galaxy Tab S7 chi???c m??y t??nh b???ng c?? thi???t k??? tuy???t ?????p, m??n h??nh 120 Hz si??u m?????t, camera k??p ???n t?????ng, b??t S Pen c??ng m???t hi???u n??ng m???nh m??? thu???c top ?????u th??? tr?????ng m??y t??nh b???ng Android.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (49, 1046, N'Samsung Galaxy Tab A8 8 inch T295 (2019) l?? m???t chi???c m??y t??nh b???ng g???n nh??? v???i m??n h??nh v???a ????? c?? th??? gi??p b???n gi???i tr?? hay h??? tr??? tr??? nh??? trong vi???c h???c t???p.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (50, 1047, N'Sau th??nh c??ng c???a Galaxy Tab S6, Samsung ti???p t???c chinh ph???c ng?????i d??ng v???i Galaxy Tab S6 Lite c?? ph??n kh??c gi?? r??? h??n. Thi???t b??? v???n h??? tr??? b??t S Pen th???n th??nh, thi???t k??? kim lo???i cao c???p v?? m??n h??nh, ??m thanh gi???i tr?? ?????nh cao.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (51, 1091, N'AirPods Pro v???i thi???t k??? g???n g??ng, ?????p v?? tinh t???, tai nghe ???????c thi???t k??? theo d???ng In-ear thay v?? Earbuds nh?? AirPods 2, cho ph??p ch???ng ???n t???t h??n, kh?? r???t khi ??eo v?? ?????c bi???t l?? ??m tai h??n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (52, 77, N'?????ng h??? th??ng minh Garmin Fenix 6 Pro Solar trang b??? m??n h??nh c?? ????? ph??n gi???i 260 x 260 pixels v?? k??ch th?????c 1.3 inch, gi??p h??nh ???nh hi???n th??? ???????c s???c n??t 
ngay c??? khi c?? ??nh n???ng m???t tr???i. D??y ??eo silicone cho c???m gi??c v?? c??ng m???m m???i v???i c??? tay ng?????i ??eo.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (53, 1092, N'Tai nghe Bluetooth ghi d???u ???n v???i c??c t??n ????? tai nghe Beats (Apple) v???i ki???u d??ng g???n nh???, c?? 2 phi??n b???n m??u ??en v?? v??ng Yuzu thu???n khi???t, ?????p m???t, gi??p t???o phong c??ch n??ng ?????ng, th???i th?????ng cho c??? ph??i m???nh v?? ph??i ?????p.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (54, 1094, N'Belkin Soundform Move PAC001 ???????c ?????t trong h???p s???c h??nh thoi thon g???n, tinh t???, t???o c???m gi??c m???m m???i, trang tr???ng v?? r???t b???t m???t, ?????t g???n tay c???m v?? ti???n mang theo. B??? m???t h???p s???c ch???t li???u nh???a nh??m ch???ng tr???y, ch???ng tr?????t t???t, h???n ch??? b??m v??n tay.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (55, 1095, N'Tai nghe True Wireless s??nh ??i???u, m??u ??en c?? t??nh l?? m???u tai nghe kh??ng d??y th???i th?????ng, Mozard TS13 t???o ???n t?????ng m???nh v???i c??? tai nh??? nh???, cho thao t??c ??eo, s??? d???ng c???c tho???i m??i, ti???n l???i. Tr???ng l?????ng ch??? 39 gam n??n v?? c??ng th??ch h???p ????? mang theo b??n m??nh ??i b???t k??? ????u.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (56, 1096, N'Thi???t k??? tai nghe Rezo v???a v???n v???i tai ng?????i d??ng, t???o c???m gi??c tho???i m??i khi ??eo, kh??ng g??y ??au trong tr?????ng h???p s??? d???ng li??n t???c nhi???u gi??? li???n, ????p ???ng nhu c???u s??? d???ng t???n su???t cao cho c??? m???c ????ch gi???i tr?? v?? l??m vi???c.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (57, 82, N'?????ng h??? ?????nh v??? tr??? em Kidcare v???i nhi???u t??nh n??ng ti???n l???i v???a l?? chi???c ?????ng h??? c?? thi???t k??? n??ng ?????ng d??nh cho c??? b?? trai v?? g??i, v???a gi??p ph??? huynh 
qu???n l?? l???ch tr??nh, s???c kh???e c???a b?? d??? d??ng h??n ?????m b???o s??? an to??n c???a tr???.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (58, 1099, N'G???y ch???p ???nh Bluetooth Cosano HD-P7 gi??p k???t n???i ??i???n tho???i b???ng bluetooth ????? ch???p ???nh, ch??? v???i n???a ti???ng s???c cho h??n 20 ti???ng s??? d???ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (59, 1100, N'G???y ch???p ???nh Bluetooth Tripod Xmobile K06 ??en c?? thi???t k??? ????n gi???n, thu g???n ch??? d??i 19.5 cm, cho b???n d??? d??ng c???m n???m v?? mang theo trong c??c chuy???n ??i');
INSERT INTO Introduce (Id, ProductId, data) VALUES (60, 85, N'?????ng h??? Kidcare S6 s??? h???u m??n h??nh r???ng, v???i k??ch th?????c m??n h??nh 1.3 inch. C??ng ngh??? m??n h??nh TFT gi??p b?? xem ???????c h??nh ???nh to v?? r?? r??ng v???i ch???t 
l?????ng t???t. D??y ??eo l??m t??? ch???t li???u silicone ??m ??i v?? nh??? nh??ng, ch???ng th???m n?????c r???t t???t, cho b?? tho???i m??i khi v???n ?????ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (61, 1101, N'G???y ch???p ???nh Mini Cosano CW1 thi???t k??? nh??? g???n c??ng m??u s???c tr??? trung, d??? d??ng k??o d??i ?????n 60 cm tho???i m??i ch???p h??nh, l???y ???????c nhi???u g??c, nhi???u c???nh ?????p ho???c thu g???n l???i ch??? v???i ????? d??i 16 cm cho ng?????i d??ng d??? d??ng b??? v??o t??i x??ch, balo mang theo khi ??i ch??i, ??i du l???ch.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (62, 1102, N'G???y ch???p ???nh Osmia OW2 tr??? th??nh ph??? ki???n gi??p ng?????i d??ng selfie d??? d??ng m?? kh??ng c???n s??? h??? tr??? t??? ng?????i kh??c, l??u gi??? kho???nh kh???c c???a b???n th??n m???i l??c m???i n??i.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (63, 1103, N'G???y ch???p ???nh Osmia OW4 c?? k??ch th?????c nh??? g???n ch??? 16 cm nh??ng l???i c?? ki???u d??ng kh?? chuy??n nghi???p v?? l??? m???t.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (64, 1104, N'G???y ch???p ???nh Osmia OW5 c?? v??? n ??i b???ng kim lo???i, nh??? g???n ?????p m???t, c?? th??? g???n v??o tripod ????? c??? ?????nh khung h??nh khi ch???p.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (65, 1105, N'????? ??i???n tho???i tr??n xe Cosano PH-Z1 thi???t k??? v???i khung k???p ch???c ch???n, ph?? h???p v???i h???u h???t c??c thi???t b??? ??i???n tho???i th??ng minh hi???n nay.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (66, 1106, N'????? ??i???n tho???i Esaver JHD -278 ??en v???i ki???u d??ng nh??? g???n, d??? s??? d???ng, cho b???n nh???ng chuy???n ??i an to??n h??n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (67, 1107, N'????? ??i???n tho???i tr??n xe m??y Esaver JHD-40HD12 ??en c?? thi???t k??? ch???c ch???n, gi??p gi??? ??i???n tho???i t???t, ng?????i d??ng s??? y??n t??m h??n khi g???n ??i???n tho???i tr??n xe thay v?? ph???i c???m tay.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (68, 1108, N'????? ??i???n tho???i Esaver JHD-171 Xanh tr???ng l?? s???n ph???m v???a ra m???t c???a Esaver c?? thi???t k??? nh??? g???n, ti???n l???i, ch???t li???u cao c???p, ch???c ch???n gi??p ng?????i d??ng ti???n d???ng trong th???i ?????i ng??y nay.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (69, 1109, N'Loa Harman Kardon Aura Studio 3 l??m b???ng nh???a Acrylic trong su???t, t???i m??u, ph???n d?????i b???c v???i m??u x??m ??en cho thi???t k??? tinh t???, t??n vinh m???i kh??ng gian n???i th???t. Ch???t li???u nh???a Acrylic trong ?????p cho b???n ti???n quan s??t c???u t???o loa b??n trong v?? h??? tr??? ????n LED h???t ??nh s??ng ra n ??i th??m sinh ?????ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (70, 1110, N'Loa JBL Clip 4 mang t??nh di ?????ng cao nh??? k??ch th?????c r???t nh??? g???n v???i chi???u d??i 134 mm, chi???u r???ng 86 mm, ????? d??y 46 mm v?? tr???ng l?????ng ch??? 230 gram. Nh??? ???????c bao b???c b???i m??ng v???i Fabric v?? khung vi???n kim lo???i, loa c?? ???????c s??? ch???c ch???n c???n thi???t v?? ???????c b???o v??? hi???u qu??? kh???i c??c va ch???m, r??i r???t th??ng th?????ng trong qu?? tr??nh s??? d???ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (71, 1112, N'Loa bluetooth JBL   3 phong c??ch tr??? trung, thi???t k??? nh??? g???n, sang tr???ng, d??? mang theo. ???????c ph??? b???ng l???p nh???a b???n b??? v?? l???p cao su ????n h???i t???t, loa JBL ???????c b???o v??? an to??n kh???i c??c va ch???m v?? b??m d??nh t???t tr??n m???t b??n');
INSERT INTO Introduce (Id, ProductId, data) VALUES (72, 1113, N'Thi???t k??? loa Bluetooth Sony ????n gi???n, g???n nh??? ch??? 0.4 kg, ??i k??m d??y treo cho b???n d??? d??ng ??eo v??o c??? tay c???a m??nh ho???c treo m??c v??o balo mang theo khi ??i ch??i, du l???ch, ??i h???c,... Ch???t li???u v??? nh???a c?? th??m l???p UV coating cho ????? b???n cao, ch???ng tr???y x?????c, l??m s???ch nh??? nh??ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (73, 1114, N'Thi???t k??? t???i gi???n, g???n g??ng d??? mang theo. Pin s???c d??? ph??ng Polymer 10.000mAh Type C PowerCore Slim PD Anker A1231 c?? thi???t k??? g???n g??ng tr???ng l?????ng ch??? 212 g, b???n c?? th??? d??? d??ng ????? v??o balo hay t??i x??ch mang theo b??n m??nh ????? s???c c??c thi???t b??? ??i???n t??? khi c???n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (74, 1115, N'S???c ??i???n tho???i c???a b???n nhi???u l???n v???i dung l?????ng s???c d??? ph??ng 10.000 mAh. K???t h???p v???i hi???u su???t s???c ???n t?????ng 65%, AVA+ PB100S c?? th??? s???c ???????c cho iPhone 11 Pro Max t???m 1.6 l???n. Thi???t b??? c?? ????? t????ng th??ch cao v???i nhi???u d??ng m??y n??n b???n c?? th??? c???p n??ng l?????ng ???????c cho ??a d???ng thi???t b??? t??? ??i???n tho???i, m??y t??nh b???ng ?????n qu???t mini, tai nghe Bluetooth.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (75, 1116, N'V??? n ??i sang tr???ng v???i gam m??u ??en th???i th?????ng. Belkin Pocket Power BPB001 s??? h???u l???p v??? nh???a ch???t l?????ng t???t v???a ch???ng tr??n, v???a ch???ng tr???y, b???o v??? hi???u qu??? l??i pin v?? r???t d??? ????? c???m n???m.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (76, 1117, N'Energizer UE10054BK thi???t k??? sang tr???ng, m??u ??en l???ch l??m, m???ng ch??? 16 mm. Ch??? t??c c??c g??c u???n cong, b??? m???t c?? ???????ng s???c ??en b??ng in lo  th????ng hi???u m??u tr???ng s??ng n???i b???t cho t???ng th??? thi???t k??? g???n ?????p, s??nh ??i???u, d??? d??ng khi di chuy???n, s??? d???ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (77, 1118, N'Pin s???c d??? ph??ng Polymer 10.000 mAh eValu PA Croco ??en c?? thi???t k??? ?????p m???t, ch???c ch???n. C??c c???nh bo tr??n gi??p c???m n???m d??? d??ng, tho???i m??i h??n. V??? nh???a v??n carbon b???o v??? pin hi???u qu???, tr???ng l?????ng nh???, c???m n???m tho???i m??i.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (78, 1119, N'S???c d??? ph??ng Xmobile h??nh kh???i ch??? nh???t nh??? g???n, c?? 2 phi??n b???n m??u xanh r??u v?? xanh Navy th???i trang. Pin s???c d??? ph??ng nh??n c?? v??? h??i d??y v???i m???c 2.5 cm nh??ng v???i chi???u r???ng 5 cm, chi???u d??i 10.5 cm th?? thi???t b??? v???n r???t nh??? nh???n, g???n g??ng, c???m v???a tay, ti???n cho v??o t??i x??ch, balo ?????ng h??nh c??ng b???n ?????n b???t c??? n??i ????u.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (79, 1120, N'Loa Harman Kardon Aura Studio 3 l??m b???ng nh???a Acrylic trong su???t, t???i m??u, ph???n d?????i b???c v???i m??u x??m ??en cho thi???t k??? tinh t???, t??n vinh m???i kh??ng gian n???i th???t. Ch???t li???u nh???a Acrylic trong ?????p cho b???n ti???n quan s??t c???u t???o loa b??n trong v?? h??? tr??? ????n LED h???t ??nh s??ng ra n ??i th??m sinh ?????ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (80, 1122, N'Loa JBL Clip 4 mang t??nh di ?????ng cao nh??? k??ch th?????c r???t nh??? g???n v???i chi???u d??i 134 mm, chi???u r???ng 86 mm, ????? d??y 46 mm v?? tr???ng l?????ng ch??? 230 gram. Nh??? ???????c bao b???c b???i m??ng v???i Fabric v?? khung vi???n kim lo???i, loa c?? ???????c s??? ch???c ch???n c???n thi???t v?? ???????c b???o v??? hi???u qu??? kh???i c??c va ch???m, r??i r???t th??ng th?????ng trong qu?? tr??nh s??? d???ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (81, 1123, N'Loa bluetooth JBL   3 phong c??ch tr??? trung, thi???t k??? nh??? g???n, sang tr???ng, d??? mang theo. ???????c ph??? b???ng l???p nh???a b???n b??? v?? l???p cao su ????n h???i t???t, loa JBL ???????c b???o v??? an to??n kh???i c??c va ch???m v?? b??m d??nh t???t tr??n m???t b??n');
INSERT INTO Introduce (Id, ProductId, data) VALUES (82, 1124, N'Thi???t k??? loa Bluetooth Sony ????n gi???n, g???n nh??? ch??? 0.4 kg, ??i k??m d??y treo cho b???n d??? d??ng ??eo v??o c??? tay c???a m??nh ho???c treo m??c v??o balo mang theo khi ??i ch??i, du l???ch, ??i h???c,... Ch???t li???u v??? nh???a c?? th??m l???p UV coating cho ????? b???n cao, ch???ng tr???y x?????c, l??m s???ch nh??? nh??ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (83, 1125, N'V???i t??nh ch???t c??ng vi???c c???n di chuy???n nhi???u hay ph???i mang laptop ??i l??m th?????ng xuy??n, LG Gram 16 2021 i7 (16Z90P-G.AH75A5) v???a m???ng nh??? v???a c?? hi???u n??ng m???nh m??? t??? b??? vi x??? l?? Intel th??? h??? 11 t??n ti???n s??? l?? c???ng s??? tuy???t v???i m?? b???n lu??n t??m ki???m b???y l??u n');
INSERT INTO Introduce (Id, ProductId, data) VALUES (84, 1126, N'S???c ??i???n tho???i c???a b???n nhi???u l???n v???i dung l?????ng s???c d??? ph??ng 10.000 mAh. K???t h???p v???i hi???u su???t s???c ???n t?????ng 65%, AVA+ PB100S c?? th??? s???c ???????c cho iPhone 11 Pro Max t???m 1.6 l???n. Thi???t b??? c?? ????? t????ng th??ch cao v???i nhi???u d??ng m??y n??n b???n c?? th??? c???p n??ng l?????ng ???????c cho ??a d???ng thi???t b??? t??? ??i???n tho???i, m??y t??nh b???ng ?????n qu???t mini, tai nghe Bluetooth.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (85, 1127, N'V??? n ??i sang tr???ng v???i gam m??u ??en th???i th?????ng. Belkin Pocket Power BPB001 s??? h???u l???p v??? nh???a ch???t l?????ng t???t v???a ch???ng tr??n, v???a ch???ng tr???y, b???o v??? hi???u qu??? l??i pin v?? r???t d??? ????? c???m n???m.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (86, 1128, N'Energizer UE10054BK thi???t k??? sang tr???ng, m??u ??en l???ch l??m, m???ng ch??? 16 mm. Ch??? t??c c??c g??c u???n cong, b??? m???t c?? ???????ng s???c ??en b??ng in lo  th????ng hi???u m??u tr???ng s??ng n???i b???t cho t???ng th??? thi???t k??? g???n ?????p, s??nh ??i???u, d??? d??ng khi di chuy???n, s??? d???ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (87, 1129, N'Pin s???c d??? ph??ng Polymer 10.000 mAh eValu PA Croco ??en c?? thi???t k??? ?????p m???t, ch???c ch???n. C??c c???nh bo tr??n gi??p c???m n???m d??? d??ng, tho???i m??i h??n. V??? nh???a v??n carbon b???o v??? pin hi???u qu???, tr???ng l?????ng nh???, c???m n???m tho???i m??i.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (88, 1130, N'S???c d??? ph??ng Xmobile h??nh kh???i ch??? nh???t nh??? g???n, c?? 2 phi??n b???n m??u xanh r??u v?? xanh Navy th???i trang. Pin s???c d??? ph??ng nh??n c?? v??? h??i d??y v???i m???c 2.5 cm nh??ng v???i chi???u r???ng 5 cm, chi???u d??i 10.5 cm th?? thi???t b??? v???n r???t nh??? nh???n, g???n g??ng, c???m v???a tay, ti???n cho v??o t??i x??ch, balo ?????ng h??nh c??ng b???n ?????n b???t c??? n??i ????u.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (89, 1133, N'AirPods Pro v???i thi???t k??? g???n g??ng, ?????p v?? tinh t???, tai nghe ???????c thi???t k??? theo d???ng In-ear thay v?? Earbuds nh?? AirPods 2, cho ph??p ch???ng ???n t???t h??n, kh?? r???t khi ??eo v?? ?????c bi???t l?? ??m tai h??n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (90, 1134, N'Tai nghe Bluetooth ghi d???u ???n v???i c??c t??n ????? tai nghe Beats (Apple) v???i ki???u d??ng g???n nh???, c?? 2 phi??n b???n m??u ??en v?? v??ng Yuzu thu???n khi???t, ?????p m???t, gi??p t???o phong c??ch n??ng ?????ng, th???i th?????ng cho c??? ph??i m???nh v?? ph??i ?????p.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (91, 1135, N'Belkin Soundform Move PAC001 ???????c ?????t trong h???p s???c h??nh thoi thon g???n, tinh t???, t???o c???m gi??c m???m m???i, trang tr???ng v?? r???t b???t m???t, ?????t g???n tay c???m v?? ti???n mang theo. B??? m???t h???p s???c ch???t li???u nh???a nh??m ch???ng tr???y, ch???ng tr?????t t???t, h???n ch??? b??m v??n tay.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (92, 1136, N'Tai nghe True Wireless s??nh ??i???u, m??u ??en c?? t??nh l?? m???u tai nghe kh??ng d??y th???i th?????ng, Mozard TS13 t???o ???n t?????ng m???nh v???i c??? tai nh??? nh???, cho thao t??c ??eo, s??? d???ng c???c tho???i m??i, ti???n l???i. Tr???ng l?????ng ch??? 39 gam n??n v?? c??ng th??ch h???p ????? mang theo b??n m??nh ??i b???t k??? ????u.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (93, 1137, N'Thi???t k??? tai nghe Rezo v???a v???n v???i tai ng?????i d??ng, t???o c???m gi??c tho???i m??i khi ??eo, kh??ng g??y ??au trong tr?????ng h???p s??? d???ng li??n t???c nhi???u gi??? li???n, ????p ???ng nhu c???u s??? d???ng t???n su???t cao cho c??? m???c ????ch gi???i tr?? v?? l??m vi???c.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (94, 9, N'iPhone 12 ???? mang t???i cho ng?????i s??? dung kh??ng ch??? m???t thi???t k??? m???i c???c k??? ???n t?????ng v???i m??n h??nh tr??n vi???n v?? c???nh ph???ng kim lo???i t??i 
hi???n th??? h??? iPhone 4S m?? c??n mang t???i nh???ng m??u s???c c???c k??? ?????c v?? iPhone 12 xanh mint l?? m???t trong s??? ????, n?? mang t???i cho ch??? em 
ph??? n??? m???t l???a ch???n m??u c???c k??? tr??? trung v?? d??? th????ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (95, 10, N'???n t?????ng h??n n???a, m??n h??nh iPhone 12 Pro si??u s???c n??t v???i c??ng ngh??? Super Retina XDR. T???m n???n OLED mang t???i h??nh ???nh trong tr???o, 
m??u s???c ch??nh x??c, ????? t????ng ph???n l??n t???i 2.000.000:1, ????? s??ng t???i ??a 1200 nits. C??c c??ng ngh??? kh??c nh?? HDR hay True Tone khi???n cho ch???t 
l?????ng hi???n th??? c???a iPhone 12 Pro th??m ph???n ho??n h???o.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (96, 12, N'??i???n tho???i iPhone 12 Pro 128GB B???c v???i c???nh khung vu??ng v???n. V???i thi???t k??? n??y s??? t???o ???????c ????? ch???c ch???n khi ng?????i d??ng c???m n???m thi???t b??? 
h??n so v???i khung bo tr??n nh?? tr?????c ????y, mang ?????n ????? b???n v?????t tr???i v?? di???n m???o b??ng b???y sang tr???ng h??n. M??u B???c tinh t??? mang l???i n??t hi???n 
?????i cho ng?????i d??ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (97, 13, N'iPhone 12 series hi???n nay ??ang l?? th??? h??? smartphone hi???n ?????i nh???t c???a Apple, v??? ?????p t??? thi???t k???, v?? s???c h???p d???n c???a c??c t??nh n??ng hi???n ?????i m?? 
d??ng m??y n??y s??? h???u khi???n ng?????i d??ng c??ng ngh??? to??n c???u ????????ng ng???i kh??ng y??n???. iPhone 12 Mini tuy l?? phi??n b???n th???p nh???t, nh??ng chi???c 
smartphone n??y v???n s??? h???u nh???ng ??u ??i???m v?????t tr???i v??? s??? ti???n l???i, linh ?????ng khi s??? d???ng v?? t??nh n??ng s???c nhanh c??ng camera ch???t l?????ng cao.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (98, 16, N'L?? chi???c ??i???n tho???i iPhone c?? m???c gi?? d??? ch???u, ph?? h???p v???i nhi???u kh??ch h??ng h??n, iPhone Xr v???n ???????c ??u ??i trang b??? chip Apple A12 m???nh m???, 
m??n h??nh tai th??? c??ng kh??? n??ng ch???ng n?????c ch???ng b???i.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (99, 17, N'iPhone SE 2020 khi ???????c cho ra m???t ???? l??m th???a m??n tri???u t??n ????? T??o khuy???t. M??y s??? h???u thi???t k??? si??u nh??? g???n nh?? iPhone 8, chip A13 Bionic cho 
hi???u n??ng kh???ng nh?? iPhone 11, nh??ng iPhone SE 2020 l???i c?? m???t m???c gi?? t???t ?????n b???t ng???.');
 
INSERT INTO Introduce (Id, ProductId, data) VALUES (100, 19, N'??i???n tho???i iPhone SE 64GB Tr???ng (2020) s??? h???u con chip A13 Bionic nhanh nh???t v?? m???nh m??? nh???t h???a h???n s??? mang ?????n cho b???n nh???ng tr???i 
nghi???m xem phim, ch???y ???ng d???ng, ch??i c??c tr?? ch??i m???i nh???t m???t c??ch m?????t m?? v?? ???n ?????nh. Hi???u n??ng m???nh m??? t??? chi???c ??i???n tho???i iPhone 11 
Pro nay ???? ???????c g???n l??n iPhone SE nh??? g???n v?? ti???t ki???m chi ph??. V???i nh???ng ai ??ang t??m ki???m m???t chi???c ??i???n tho???i hi???u n??ng m???nh m??? nh??ng v???a 
v???i t??i ti???n th?? ????y l?? m???t s??? l???a ch???n r???t ??ang ???????c c??n nh???c.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (101, 20, N'??i???n tho???i iPhone 11 64GB Xanh l?? s??? h???u thi???t k??? tinh x???o t??? m??? ?????n t???ng chi ti???t v???i khung nh??m b???n b???, m???t k??nh c?????ng l???c ch???c ch???n. B??n c???nh 
???? m??n h??nh tr??n vi???n Liquid Retina 6.1 inch s???c n??t mang l???i cho b???n nh???ng tr???i nghi???m ch??n th???c v?? s???ng ?????ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (102, 23, N'Galaxy Z Fold3 5G ????nh d???u b?????c ti???n m???i c???a Samsung trong ph??n kh??c ??i???n tho???i g???p cao c???p khi ???????c c???i ti???n v??? ????? b???n c??ng nh???ng n??ng 
c???p ????ng gi?? v??? c???u h??nh hi???u n??ng, h???a h???n s??? mang ?????n tr???i nghi???m s??? d???ng ?????t ph?? cho ng?????i d??ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (103, 24, N'Galaxy A52s 5G mang ?????n tr???i nghi???m ??a nhi???m m?????t m?? v?? hi???u su???t m???nh m??? v?????t tr???i nh??? vi x??? l?? 8 nh??n Snapdra n 778G 5G v?? RAM 8GB. 
Tho???i m??i m???i d??? li???u v???i b??? nh??? trong 128/256GB ho???c m??? r???ng kh??ng gian l??u tr??? v???i th??? microSD l??n ?????n 1TB ???n t?????ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (104, 25, N'Samsung ???? ch??nh th???c tr??nh l??ng Galaxy Z Flip3 5G trong bu???i ra m???t c??ch ????y kh??ng l??u. ????? c??c b???n hi???u r?? h??n v??? chi???c smartphone n??y, 
24h C??ng Ngh??? s??? t???ng h???p l???i cho c??c b???n nh???ng ??i???m m???i, nh???ng n??ng c???p c???a Galaxy Z Flip3 5G so v???i Z Flip 5G.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (105, 26, N'Galaxy Z Fold 2 l?? t??n g???i ch??nh th???c c???a ??i???n tho???i m??n h??nh g???p cao c???p c???a Samsung. V???i nhi???u n??ng c???p ti??n phong v??? thi???t k???, hi???u n??ng v?? 
camera, h???a h???n ????y s??? l?? m???t si??u ph???m th??nh c??ng ti???p theo ?????n t??? ?????ng tr??m??? s???n xu???t ??i???n tho???i l???n nh???t th??? gi???i. ');
INSERT INTO Introduce (Id, ProductId, data) VALUES (106, 27, N'???n ?????ng sau thi???t k??? tuy???t t??c c???a si??u ph???m Galaxy S21+ 5G l?? c??? m???t k??? quan c??ng ngh???, m?? ??? ???? b???n c?? th??? tr???i nghi???m hi???u n??ng m???nh m??? 
nh???t, nh???ng c??ng ngh??? ti??n phong, d???n ?????u tr??o l??u v???i c???m camera ?????nh cao ?????n t??? Samsung.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (107, 28, N'Realme C21Y chi???c ??i???n tho???i v???i thi???t k??? ?????p m???t, tinh t??? h?????ng ?????n ?????i t?????ng ng?????i d??ng ph??? th??ng ??ang t??m ki???m m???t s???n ph???m v???i c???u h??nh 
t???t, ?????y ????? t??nh n??ng h???p d???n v?? ?????c bi???t l?? pin kh???ng cho m???t ng??y l??m vi???c s??? d???ng l??u d??i. ');
INSERT INTO Introduce (Id, ProductId, data) VALUES (108, 31, N'N???i ti???p th??nh c??ng c???a Realme C25, Realme ???? cho ra m???t m???u smartphone mang t??n Realme C25s v???i nhi???u t??nh n??ng v?????t tr???i v??? camera, 
dung l?????ng pin, con chip m???nh m??? v?? h??n h???t l?? ???????c b??n ra v???i m???c gi?? gi?? v?? c??ng t???t.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (109, 34, N'Realme 8 Pro V??ng R???c R??? l?? s???n ph???m ???????c k???t h???p gi???a s???c m???nh ????ng ng?????ng m??? c???a Realme 8 Pro v?? m??u v??ng ?????y sang tr???ng. Chi???c 
??i???n tho???i h???a h???n s??? ??em l???i s??? h??i l??ng ????ng mong ?????i cho ng?????i d??ng b???i s??? ho??n h???o c???a n??.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (110, 35, N'B??n c???nh Realme 8, Realme 8 Pro c??ng ???????c gi???i thi???u ?????n ng?????i ti??u d??ng v???i ??i???m nh???n ch??nh l?? s??? xu???t hi???n c???a camera 108 MP si??u n??t c??ng 
c??ng ngh??? s???c SuperDart 50 W v?? ??i k??m m???c gi?? b??n t???m trung r???t l?? t?????ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (111, 37, N'??i???n tho???i Realme 8 ???????c ra m???t n???m trong ph??n kh??c t???m trung, c?? thi???t k??? ?????p m???t ?????c tr??ng c???a Realme, smartphone trang b??? hi???u n??ng b??n 
trong ?????y m???nh m??? v?? c?? dung l?????ng pin t????ng ?????i l???n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (112, 38, N'Vivo Y12s, chi???c ??i???n tho???i ?????n t??? nh?? s???n xu???t Vivo, s??? h???u m???t m???c gi?? d??? ti???p c???n, hi???u n??ng m???nh m??? c??ng vi??n pin dung l?????ng kh???ng gi??p 
b???n tha h??? tr???i nghi???m gi???i tr??, ch??i game su???t ng??y d??i.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (113, 39, N'Vivo mang ?????n ni???m vui cho m???i ng?????i tin d??ng khi h??ng ch??nh th???c tung ra chi???c ??i???n tho???i Vivo Y53s v???i nh???ng t??nh n??ng ti??n ti???n ??i c??ng hi???u 
n??ng m???nh m???. ?????c bi???t, smartphone l???i c??n s??? h???u m???c gi?? h???p d???n trong ph??n kh??c t???m trung ?????y h???a h???n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (114, 41, N'Ch???p selfie b??ng n??? trong ????m, thi???t k??? m???i hi???n ?????i ????n ?????u xu h?????ng, c??ng v???i ???? l?? t???c ????? k???t n???i m???ng 5G h??ng ?????u, t???t c??? nh???ng t??nh n??ng ???n 
t?????ng n??y ?????u c?? trong Vivo V21 5G m???u ??i???n tho???i c???n cao c???p ?????n t??? Vivo.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (115, 42, N'??i???n tho???i Vivo m??u ??en c?? m??n h??nh 5 inch v???a t???m c??ng ????? ph??n gi???i HD mang ?????n tr???i nghi???m d??? ch???u cho ng?????i d??ng so v???i c??c s???n ph???m 
trong c??ng ph??n kh??c ??i???n tho???i t???m trung. Thi???t k??? th??n m??y m???ng c??ng c??c ???????ng vi???n ???????c bo tr??n, s???n ph???m mang ?????n v??? ?????p t???i gi???n nh??ng 
hi???n ?????i, ?????ng th???i t???o c???m gi??c d??? ch???u, ti???n l???i cho ng?????i d??ng khi s??? d???ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (116, 44, N'??i???n tho???i Vivo V20 (8GB/128GB) Xanh h???ng s??? h???u thi???t k??? hi???n ?????i, khung vi???n l??m b???ng kim lo???i v???i 2 b??? m???t ???????c ph??? k??nh c?????ng l???c vi???n bo 
cong m???m m???i d??? d??ng c???m n???m. M??y nh??? ch??? 170g, d??? d??ng s??? d???ng m?? kh??ng b??? n???ng tay. M???t l??ng c???a Vivo ???????c thi???t k??? theo phong c??ch 
gradient chuy???n m??u linh ho???t, l???p k??nh m??? ch???ng b??m v??n tay mang ?????n v??? ???n t?????ng cho ng?????i d??ng. ');
INSERT INTO Introduce (Id, ProductId, data) VALUES (117, 45, N'Vsmart Star 5 m???u smartphone gi?? r??? ?????n t??? th????ng hi???u Vsmart nh???n ???????c nhi???u s??? quan t??m nh??? s??? h???u nh???ng n??ng c???p ????ng k??? v??? hi???u n??ng, 
camera, dung l?????ng pin kh???ng v?? m???t m???c gi?? kh??ng th??? n??o t???t h??n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (118, 46, N'???????c trang b??? m???t c???u h??nh m???nh m??? ??i c??ng v???i c??ng ngh??? camera ???n d?????i m??n h??nh ???n t?????ng, Vsmart Aris Pro h???a h???n s??? l?? chi???c ??i???n tho???i 
???bom t???n??? t???i th??? tr?????ng di ?????ng Vi???t cu???i n??m nay, mang t???i nh???ng tr???i nghi???m kh??c l??? v?? ?????c ????o nh???t t???i cho ng?????i d??ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (119, 47, N'Vsmart lu??n bi???t c??ch thu h??t s??? ch?? ?? c???a ng?????i d??ng b???i nh???ng chi???c smartphone c???a h???, ????? ti???p n???i ??i???u ????, h??ng ???? cho ra m???t chi???c ??i???n tho???i 
th??ng minh ?????ng c???p mang t??n Vsmart Aris v???i nhi???u ?????c ??i???m, t??nh n??ng n???i b???t.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (120, 48, N'N???i ti???p th??nh c??ng Vsmart Live, h??ng gi???i thi???u ?????n ng?????i d??ng m???u Vsmart Live 4 nh???m ??em l???i cho ng?????i d??ng th??m s??? l???a ch???n trong ph??n 
kh??c, k??? th???a c??c ??u ??i???m t??? ????n anh, s???n ph???m h???a h???n s??? mang l???i th??m th??nh c??ng cho ??i???n tho???i th????ng hi???u Vi???t.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (121, 50, N'Vsmart Joy 4, m???t s???n ph???m ????ng t??? h??o ???????c s???n xu???t t??? th????ng hi???u Vi???t Vsmart v???i nhi???u t??nh n??ng n???i b???t t??? hi???u n??ng m???nh m???, c???m 4 camera 
??a t??nh n??ng cho ?????n pin kh???ng 5000 mAh, h???a h???n s??? ???????c nhi???u ng?????i d??ng s??n ????n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (122, 52, N'Xiaomi 11 Lite 5G NE s??? ???????c gi???i thi???u v???i 4 phi??n b???n m??u bao g???m ??en tr??n ch??u, Xanh k???o ng???t, H???ng thanh ????o v?? Tr???ng b??ng tuy???t. Xiaomi 11 
Lite 5G NE s??? ???????c m??? b??n t??? ng??y 08/10/2021 t???i c??c h??? th???ng b??n l??? c???a Xiaomi tr??n to??n qu???c.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (123, 54, N'Xiaomi ???? tr??nh l??ng chi???c ??i???n tho???i mang t??n g???i l?? Xiaomi Redmi Note 10 v???i ??i???m nh???n ch??nh l?? c???m 4 camera 48 MP, chip r???ng Snapdra n 678 
m???nh m??? c??ng nhi???u n??ng c???p nh?? dung l?????ng pin 5.000 mAh v?? h??? tr??? s???c nhanh 33 W ti???n l???i.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (124, 55, N'Xiaomi Mi 11 m???t si??u ph???m ?????n t??? Xiaomi, m??y cho tr???i nghi???m hi???u n??ng h??ng ?????u v???i vi x??? l?? Qualcomm Snapdra n 888, c??ng lo???t c??ng 
ngh??? ?????nh cao, khi???n b???t k??? ai c??ng s??? cho??ng ng???p v??? smartphone n??y.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (125, 56, N'Mi 10T Pro 5G m???u smartphone cao c???p c???a Xiaomi trong n??m 2020 cu???i c??ng c??ng ???????c tr??nh l??ng v???i lo???t nh???ng th??ng s??? g??y ???cho??ng ng???p???: M??n 
h??nh t???n s??? qu??t 144 Hz, vi x??? l?? Snapdra n 865 v?? c???m camera kh???ng 108 MP k??m theo ???? l?? m???t m???c gi?? d??? ch???u cho ng?????i d??ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (126, 57, N'K??? th???a v?? n??ng c???p t??? th??? h??? tr?????c, Xiaomi ???? cho ra m???t Xiaomi Redmi Note 10 Pro (8GB/128GB) s??? h???u m???t thi???t k??? cao c???p, sang tr???ng b??n c???nh 
c???u h??nh v?? c??ng m???nh m???, h???a h???n mang ?????n s??? c???nh tranh l???n trong ph??n kh??c smartphone t???m trung.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (127, 58, N'OPPO Reno6 Pro 5G - m???t s???n ph???m thu???c d??ng Reno6 c???a OPPO, th???a m??n nh???ng g?? ng?????i ti??u d??ng ???? tr??ng ?????i v???i c???u h??nh kh???ng c??ng h??? 
th???ng camera c???c ???n t?????ng v?? n ???i h??nh b???t m???t, th???t h??o h???ng mong ch??? ????? ???????c tr???i nghi???m.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (128, 59, N'Reno6 Pro 5G trang b??? b??? vi x??? l?? m???nh m??? Snapdra n 870 ?????n t??? Qualcomm, ?????t t???c ????? x??? l?? cao tr??n xung nh???p l??n ?????n 3.2 GHz, hi???u su???t CPU t??ng 
l??n 12% v?? GPU 10% so v???i th??? h??? chipset ti???n nhi???m, mang ?????n tr???i nghi???m ???n t?????ng tr??n t???ng t??c v??? gi???i tr?? l???n c??ng vi???c.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (129, 60, N'OPPO lu??n ??a d???ng ho?? c??c s???n ph???m c???a m??nh t??? gi?? r??? cho ?????n cao c???p. Trong ????, ??i???n tho???i OPPO A74 4G ???????c n???m trong ph??n kh??c t???m trung r???t 
????ng ch?? ?? v???i nhi???u t??nh n??ng v?? smartphone c??ng ch??nh l?? b???n n??ng c???p c???a OPPO A73 ra m???t tr?????c ????.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (130, 61, N'OPPO ???? l??m khuynh ?????o th??? tr?????ng smartphone khi cho ra ?????i chi???c ??i???n tho???i OPPO Find X3 Pro 5G. ????y l?? m???t s???n ph???m c?? thi???t k??? ?????c ????o, s??? h???u 
c???m camera kh???ng, c???u h??nh thu???c top ?????u trong th??? gi???i Android.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (131, 62, N'OPPO ???? tr??nh l??ng OPPO Reno5 5G phi??n b???n k???t n???i 5G internet si??u nhanh ra th??? tr?????ng. Chi???c ??i???n tho???i v???i h??ng lo???t c??c t??nh n??ng n???i b???t c??ng v??? 
n ??i th???i th?????ng gi??p t??n l??n v??? sang tr???ng cho ng?????i s??? h???u.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (132, 63, N'V??? m???t t???ng th??? Apple Watch S3 42 mm c?? k??ch th?????c t????ng t??? nh?? Apple Watch Series 2. S???n ph???m ch?? tr???ng th??m v??? m???t th???m m??? v???i thi???t k??? sang 
tr???ng, n??ng ?????ng, d??y ??eo c?? nhi???u m??u s???c kh??c nhau.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (133, 64, N'Apple Watch S5 LTE l?? phi??n b???n n??ng c???p v???i phi??n b???n Apple Watch S5 . L???n ?????u ti??n Apple Watch s??? ???????c trang b??? m??n h??nh OLED lu??n b???t, t??nh n??ng 
la b??n v?? kh??? n??ng c???nh b??o kh???n c???p tr??n nhi???u qu???c gia h??n v?? ?????c bi???t chi???c Apple Watch phi??n b???n LTE c?? t??ch h???p t??nh n??ng nghe g???i ?????c l???p nh??
m???t chi???c ??i???n tho???i...');
INSERT INTO Introduce (Id, ProductId, data) VALUES (134, 65, N'Apple Watch S6 mang ?????n nh???ng n??ng c???p h???u ??ch ????? h??? tr??? ng?????i d??ng m???t c??ch t???i ??u nh???t. N???i b???t trong s??? ???? l?? chip x??? l?? S6 c???i thi???n hi???u n??ng, h??? 
??i???u h??nh watchOS 7 v???i nhi???u t??nh n??ng m???i h???a h???n s??? mang ?????n nh???ng tr???i nghi???m t???t h??n, th?? v??? h??n');
INSERT INTO Introduce (Id, ProductId, data) VALUES (135, 66, N'Apple Watch S6 LTE l?? phi??n b???n n??ng c???p v???i phi??n b???n Apple Watch S6 . L???n ?????u ti??n Apple Watch s??? ???????c trang b??? m??n h??nh OLED lu??n b???t, t??nh n??ng 
la b??n v?? kh??? n??ng c???nh b??o kh???n c???p tr??n nhi???u qu???c gia h??n v?? ?????c bi???t chi???c Apple Watch phi??n b???n LTE c?? t??ch h???p t??nh n??ng nghe g???i ?????c l???p nh??
m???t chi???c ??i???n tho???i...');
INSERT INTO Introduce (Id, ProductId, data) VALUES (136, 67, N'Apple Watch SE LTE l?? phi??n b???n n??ng c???p v???i phi??n b???n Apple Watch SE . L???n ?????u ti??n Apple Watch s??? ???????c trang b??? m??n h??nh OLED lu??n b???t, t??nh n??ng 
la b??n v?? kh??? n??ng c???nh b??o kh???n c???p tr??n nhi???u qu???c gia h??n v?? ?????c bi???t chi???c Apple Watch phi??n b???n LTE c?? t??ch h???p t??nh n??ng nghe g???i ?????c l???p nh??
m???t chi???c ??i???n tho???i...');
INSERT INTO Introduce (Id, ProductId, data) VALUES (137, 68, N'Apple Watch SE l?? phi??n b???n n??ng c???p v???i phi??n b???n Apple Watch S5 . L???n ?????u ti??n Apple Watch s??? ???????c trang b??? m??n h??nh OLED lu??n b???t, t??nh n??ng 
la b??n v?? kh??? n??ng c???nh b??o kh???n c???p tr??n nhi???u qu???c gia h??n v?? ?????c bi???t chi???c Apple Watch phi??n b???n LTE c?? t??ch h???p t??nh n??ng nghe g???i ?????c l???p nh??
m???t chi???c ??i???n tho???i...');
INSERT INTO Introduce (Id, ProductId, data) VALUES (138, 69, N'?????ng h??? th??ng minh BeU Active 1 s??? h???u m???t v??? n ??i ????n gi???n c??ng gam m??u ??en c?? t??nh, ????y l?? phong c??ch kh?? ???????c ??a chu???ng ?????c bi???t l?? ?????i v???i 
c??c b???n tr??? hi???n nay. Khung vi???n ???????c l??m t??? h???p kim nh??m ????? ?????m b???o ????? ch???c ch???n v?? tr???ng l?????ng nh??? c???n c?? ??? m???t chi???c SmartWatch, ??i k??m v???i d??y 
??eo silicone ??m nh???, co d??n t???t v?? ch???ng th???m m??? h??i gi??p mang l???i s??? tho???i m??i khi ??eo.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (139, 70, N'?????ng h??? th??ng minh BeU PT1 ??en ???n t?????ng v???i v??? n ??i b???t m???t, c?? t??nh v???i ???????ng k??nh m???t ?????ng h??? 50 mm, ???????c nh?? s???n xu???t trang b??? d??y ??eo silicone 
??m ??i v?? d???o dai, khung vi???n h???p kim ch???c ch???n, b??ng b???y. Chi???c ?????ng h??? s??? l?? m???t s??? l???a ch???n ????ng tin c???y d??nh cho b???n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (140, 72, N'?????ng h??? th??ng minh BeU PT2 ??en ???n t?????ng v???i v??? n ??i b???t m???t, c?? t??nh v???i ???????ng k??nh m???t ?????ng h??? 50 mm, ???????c nh?? s???n xu???t trang b??? d??y ??eo silicone 
??m ??i v?? d???o dai, khung vi???n h???p kim ch???c ch???n, b??ng b???y. Chi???c ?????ng h??? s??? l?? m???t s??? l???a ch???n ????ng tin c???y d??nh cho b???n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (141, 73, N'?????ng h??? th??ng minh BeU Sporty 1 mang ki???u d??ng c?? t??nh, hi???n ?????i c??ng t??ng m??u ??en m???nh m???, tr??? trung. ?????ng h??? s??? h???u khung vi???n h???p kim nh??m 
c?? tr???ng l?????ng nh???, b???n b???, b???o v??? an to??n c??c chi ti???t b??n trong. D??y ??eo silicone ??m nh???, ????? ????n h???i t???t, kh??ng th???m n?????c, cho b???n tho???i m??i ??eo su???t 
ng??y d??i.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (142, 74, N'?????ng h??? th??ng minh BeU KW09 s??? h???u m??n h??nh 1.2 inch c??ng ????? ph??n gi???i 240 x 240 pixels hi???n th??? r?? h??nh ???nh v?? th???i gian. M???u ?????ng h??? th??ng minh n??y 
???????c trang b??? m??n h??nh TFT gi??p hi???n th??? th??ng tin v?? h??nh ???nh ???????c s???c n??t. D??y ??eo silicone t???o c???m gi??c tho???i m??i khi ??eo trong th???i gian d??i. N ??i ra, 
ng?????i d??ng c?? th??? thay lo???i d??y ??eo kh??c theo ?? mu???n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (143, 75, N'?????ng h??? th??ng minh BeU t??? h??o l?? d??ng s???n ph???m mang th????ng hi???u Vi???t Nam, s??? h???u ?????y ????? nh???ng t??nh n??ng h???u ??ch v?? c???n thi???t nh??: theo d??i gi???c ng???, 
??o nh???p tim, trang b??? nhi???u b??i luy???n t???p th??? thao,... ??i k??m v???i gi?? th??nh r???, ph?? h???p v???i th??? tr?????ng ng?????i ti??u d??ng Vi???t');
INSERT INTO Introduce (Id, ProductId, data) VALUES (144, 76, N'?????ng h??? th??ng minh Garmin Enduro t??? tin s??? l?? m???t tr??? th??? ?????c l???c lu??n b??n b???n tr??n m???i n???o ???????ng v???i k??ch th?????c 1.4 inch c??ng ????? ph??n gi???i 280 x 280 
pixels cho kh??? n??ng hi???n th??? t???i ??u ngay c??? khi ??ang di chuy???n. N???i b???t v???i d??ng ?????ng h??? n??y l?? khung vi???n ?????ng h??? l??m t??? th??p kh??ng g??? k???t h???p c??ng d??y 
??eo b???ng v???i d?? si??u nh??? v?? m???t k??nh c?????ng l???c cho ????? b???n cao c??ng kh??? n??ng ch???ng ch???u d?????i nhi???u ??i???u ki???n th???i ti???t.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (145, 78, N'?????ng h??? th??ng minh Garmin Fenix 6 trang b??? m??n h??nh tr??n c?? ????? ph??n gi???i 260 x 260 pixels v?? k??ch th?????c 1.3 inch, gi??p h??nh ???nh hi???n th??? r?? n??t ngay c??? khi 
d?????i ??nh n???ng c???a m???t tr???i. D??y ??eo silicone mang c???m gi??c v?? c??ng m???m m???i cho c??? tay, kh??ng b??? ??au khi ??eo l??u d??i. M???u ?????ng h??? n??y kh??ng c?? thao t??c 
c???m ???ng m?? s??? d???ng 5 ph??m c?? ????? ??i???u khi???n, c???nh ph???i g???m 2 n??t (Start, Back-lap) v?? c???nh tr??i g???m 3 n??t (Light, up-menu, down).');
INSERT INTO Introduce (Id, ProductId, data) VALUES (146, 79, N'?????ng h??? th??ng minh Garmin Fenix 6X Sapphire c?? m??n h??nh ????? ph??n gi???i 280 x 280 pixels, k??ch th?????c 1.4 inch, gi??p hi???n th??? h??nh ???nh v?? th??ng tin tr??n ?????ng 
h??? ???????c r?? n??t. D??y ??eo silicone thi???t k??? ??m tr???n c??? tay ng?????i ??eo nh??ng t???o c???m gi??c tho???i m??i, kh??ng b??? ??au c??? tay khi d??ng l??u. Garmin Fenix 6X s??? d???ng 
5 ph??m c???ng ????? ??i???u khi???n v?? kh??ng c?? thao t??c c???m ???ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (147, 80, N'Forerunner 945 s??? h???u D??y ?????ng h??? silicone m???m m???i, nh??? tay, kh??ng g??y kh?? ch???u khi t???p th??? thao trong th???i gian d??i, m??n h??nh m??u MIP 1.2 inch ch??ng 
ch??i v?? hi???n th??? t???t d?????i ??nh s??ng m???t tr???i. ');
INSERT INTO Introduce (Id, ProductId, data) VALUES (148, 81, N'?????ng h??? Garmin Lily ???n t?????ng v???i thi???t k??? kh?? nh??? nh???n, ???????ng k??nh m???t 35 mm c??ng tr???ng l?????ng kho???ng 24g. Khung vi???n polyme b???n ch???c, ch???u va ?????p t???t 
c??ng d??y silicone ??m nh???, tho???i m??i khi ??eo. ????y ch??nh x??c l?? chi???c ?????ng h??? ????ng tin c???y d??nh cho ph??i n??? hi???n ?????i, ?????y n??ng ?????ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (149, 83, N'?????ng h??? th??ng minh tr??? em Kidcare 08S c?? thi???t k??? m??n h??nh 1.3 Inch, ????? ph??n gi???i 240 x 240 Pixels c??ng v???i d??y ??eo l??m t??? silicone mang ?????n c???m gi??c 
??m ??i khi ??eo. T??nh n??ng n???i tr???i ??? m???u ?????ng h??? n??y l?? kh??? n??ng ?????nh v??? chu???n x??c, c???nh b??o v??ng nguy hi???m v?? g???i ??i???n kh???n c???p, gi??p ph??? huynh c???a b?? 
c?? th??? y??n t??m theo d??i b?? t??? xa.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (150, 84, N'?????ng h??? ?????nh v??? tr??? em Kidcare 26 ???????c thi???t k??? n??ng ?????ng d??nh cho c??c b??. ????y v???a l?? chi???c ?????ng h??? th???i trang m?? ph??? huynh trang b??? cho con em m??nh, 
v???a l?? c??ng c??? ????? ph??? huynh thu???n ti???n trong vi???c theo d??i l???ch tr??nh h???ng ng??y c???a c??c b??.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (151, 86, N'?????ng h??? ?????nh v??? tr??? em Kidcare S6 c?? m??n h??nh 1.3 inch c??ng ????? ph??n gi???i 240 x 240 Pixels gi??p hi???n th??? ?????y ????? h??nh ???nh v?? th??ng tin. D??y ??eo l??m t??? silicone 
t???o c???m gi??c tho???i m??i khi ??eo. ??i???m n???i b???c ??? m???u ?????ng h??? n??y l?? kh??? n??ng ?????nh v??? chu???n x??c, c???nh b??o khu v???c nguy hi???m v?? g???i ??i???n kh???n c???p khi g???p 
nguy hi???m.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (152, 87, N'?????ng h??? ?????nh v??? tr??? em Kidcare S4 c?? m??n h??nh 1.3 inch c??ng ????? ph??n gi???i 240 x 240 Pixels gi??p hi???n th??? ?????y ????? h??nh ???nh v?? th??ng tin. D??y ??eo l??m t??? silicone 
t???o c???m gi??c tho???i m??i khi ??eo. ??i???m n???i b???c ??? m???u ?????ng h??? n??y l?? kh??? n??ng ?????nh v??? chu???n x??c, c???nh b??o khu v???c nguy hi???m v?? g???i ??i???n kh???n c???p khi g???p 
nguy hi???m.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (153, 88, N'V??ng ??eo tay th??ng minh Oppo Band mang ?????n m???t di???n m???o m???i - ?????y c?? t??nh v?? n??ng ?????ng. D??y ??eo silicone nh??? nh??ng, kh??ng th???m n?????c, cho b???n th???a 
s???c ho???t ?????ng su???t c??? ng??y m?? kh??ng lo t?? b??, n???ng tay. M??n h??nh AMOLED 1.1 inch v???a ph???i, t???o c???m gi??c thanh l???ch khi ??eo tr??n tay nh??ng c??ng v???a ????? 
????? b???n quan s??t th??ng tin hi???n th??? m???t c??ch d??? d??ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (154, 89, N'?????ng h??? th??ng minh Oppo Watch m??u ??en phi??n b???n 41mm s??? d???ng m???t ?????ng h??? d???ng h??nh vu??ng v???i 4 g??c bo tr??n nh???, m??n h??nh AMOLED 1.6 inch 
(320 x 360 pixels) c??ng m???t ????? ??i???m ???nh 326ppi cho ch???t l?????ng hi???n th??? c???c k?? r?? n??t. D??y ??eo silicone t???o c???m gi??c v?? c??ng m???m m???i, kh??ng b??? ??au khi ??eo l??u.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (155, 90, N'?????ng h??? th??ng minh Oppo Watch m??u h???ng phi??n b???n 41mm trang b??? m??n h??nh AMOLED 1.6 inch c??ng ????? ph??n gi???i l?? 320 x 360 pixels, m???t ????? ??i???m ???nh 
326ppi cho ch???t l?????ng hi???n th??? c???c k?? s???c n??t. D??y ??eo l??m t??? silicone v???i thi???t k??? mang l???i c???m gi??c v?? c??ng m???m m???i, kh??ng b??? ??au khi ??eo l??u.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (156, 91, N'M??n h??nh cong tr??n th???i trang, th???i l?????ng pin l??n t???i 21 ng??y, s???c nhanh Watch VOOC, h??? tr??? ?????y ????? c??c t??nh n??ng t???p luy???n v?? theo d??i s???c kh???e, OPPO Watch 
41mm wifi ch??nh l?? t???t c??? nh???ng g?? b???n c???n cho m???t cu???c s???ng n??ng ?????ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (157, 92, N'?????ng h??? th??ng minh Oppo Watch m??u ??en phi??n b???n 46mm s??? d???ng m???t ?????ng h??? vu??ng, bo cong nh??? ??? 4 c???nh, c??ng v???i m???t k??nh bo cong 2D sang hai b??n 
c?? chi???u s??u t???o c???m gi??c nh?? m???t k??nh cong 3D, m??n h??nh AMOLED 1.91 inch ????? ph??n gi???i 402 x 476 pixels, m???t ????? ??i???m ???nh 326 ppi v?? d???i m??u r???ng chu???n 
DCI-P3 cho ch???t l?????ng hi???n th??? s???c n??t, s???ng ?????ng. D??y ??eo silicone cho c???m gi??c mang ???????c d??? ch???u v?? tho???i m??i.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (158, 93, N'M???t ?????ng h??? l???n ???????c l??m cong tr??n tuy???t ?????p, hi???n th??? m?????t m?? c??ng lo???t t??nh n??ng h??? tr??? t???p luy???n v?? theo d??i s???c kh???e h???u ??ch, OPPO Watch 46mm wifi l?? 
chi???c ?????ng h??? th??ng minh cao c???p, cho b???n nh???ng tr???i nghi???m th?? v???.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (159, 95, N'?????ng h??? Samsung Galaxy Watch 3 45mm titanium ???????c trang b??? d??y ??eo th??p kh??ng g??? sang tr???ng, k???t h???p c??ng l???p m??u Mystic Black ?????c quy???n v???i n??t ?????p 
huy???n b??, tinh t??? gi??p cho m???u Samsung Galaxy Watch 3 n??y tr??? n??n cao c???p v?? ?????c bi???t h??n h???n nh???ng phi??n b???n kh??c.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (160, 97, N'Theo Strategy Analytics, Galaxy A l?? Smartphone Android B??n Ch???y Nh???t Th??? Gi???i Qu?? 1/2020, m??y s??? h???u c???m 4 camera, bao g???m camera macro ch???p c???n 
c???nh l???n ?????u xu???t hi???n tr??n smartphone Samsung, m??n h??nh tr??n vi???n v?? c???c c??ng m???t l??ng h???a ti???t kim c????ng n???i b???t.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (161, 98, N'Samsung Galaxy Watch 3 45mm vi???n th??p b???c d??y da v???i t???m n???n Super AMOLED 1.4 inch v?? ????? ph??n gi???i 360x360 pixels, ?????ng h??? c?? kh??? n??ng hi???n th??? xu???t 
s???c v???i m??u s???c r???c r???, th??ng tin hi???n th??? ?????y ?????, r?? r??ng. Khung vi???n c???a ?????ng h??? ???????c l??m b???ng th??p kh??ng g??? ch???c ch???n v?? ch???ng ??n m??n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (162, 99, N'Mang tr??n m??nh ???chi???c ??o??? m??u ??en sang tr???ng, huy???n b?? c??ng phong c??ch hi???n ?????i, chi???c ?????ng h??? th??ng minh Samsung Galaxy Watch 4 LTE s??? l?? ph??? ki???n 
??em ?????n s??? th???i th?????ng cho ng?????i ??eo. S??? h???u khung vi???n nh??m c?? tr???ng l?????ng nh???, b???n ch???c ??? m???i ??i???u ki???n th???i ti???t v?? d??y ??eo silicone r???ng 2.2 cm, cho 
kh??? n??ng kh??ng th???m n?????c, ????n h???i, m???m m???i, ??m tr???n c??? tay. ');
INSERT INTO Introduce (Id, ProductId, data) VALUES (163, 100, N'Samsung Galaxy Watch 4 s??? h???u thi???t k??? quen thu???c v???i khung vi???n nh??m b???n b???, d??y ??eo silicone. Phi??n b???n 44mm n??y d??nh cho c??c ch??ng trai c?? c??? tay 
to nh??ng v???n gi??? ???????c n??t thanh l???ch v???n c?? nh??? ki???u thi???t k??? m???t ?????ng h??? tr??n c??? ??i???n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (164, 101, N'?????ng h??? th??ng minh Samsung Galaxy Watch Active 2 n???i b???t v???i m??n h??nh r???ng 1.2 Inch v???i ????? ph??n gi???i 360 x 360 Pixels v?? m???t k??nh c?????ng l???c gi??p ng?????i 
??eo an t??m khi mang ra n ??i. Giao di???n m???t ?????ng h??? c?? th??? thay ?????i tu??? ?? theo ph??ng c??ch ng?????i d??ng. D??y ??eo Silicone h???n ch??? b??? tr???y x?????c v?? d??? lau kh?? 
khi ti???p x??c v???i n?????c hay m??? h??i.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (165, 102, N'Acer Aspire 7 A715 41G R150 R7 (NH.Q8SSV.004) ????????c thi????t k????  ??n ga??ng v???i c????u hi??nh m???nh m??? nh??? CPU AMD Ryzen 7 v?? card ????? ho??? NVIDIA GeForce 
GTX 1650Ti gi??p t????i ??u tra??i nghi????m ch??i game, ????p ???ng ??a da??ng nhu c????u s???? du??ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (166, 103, N'Laptop Acer Aspire A315 56 308N i3 (NX.HS5SV.00C) l?? m???u laptop h???c t???p v??n ph??ng thu???c ph??n kh??c gi?? th???p. M??y trang b??? vi x??? l?? th??? h??? m???i c???a Intel, cho 
hi???u n??ng ????? d??ng ?????i v???i c??c nhu c???u c?? b???n, ph?? h???p v???i h???c sinh v?? sinh vi??n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (167, 104, N'Acer Swift 3 SF314 511 56G1 (NX.ABLSV.002) x???ng ????ng tr??? th??nh m???t trong nh???ng l???a ch???n h??ng ?????u cho ng?????i d??ng trong ph??n kh??c laptop h???c t???p - v??n 
ph??ng v???i thi???t k??? g???n nh???, sang tr???ng c??ng hi???u n??ng v?????t tr???i ????n t??? CPU Intel th??? h??? 11 t??n ti???n.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (168, 105, N'Acer Aspire 7 A715 41G R150 R7 (NH.Q8SSV.004) ????????c thi????t k????  ??n ga??ng v???i c????u hi??nh m???nh m??? nh??? CPU AMD Ryzen 7 v?? card ????? ho??? NVIDIA GeForce 
GTX 1650Ti gi??p t????i ??u tra??i nghi????m ch??i game, ????p ???ng ??a da??ng nhu c????u s???? du??ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (169, 106, N'Laptop Acer Nitro 5 Gaming AN515 56 5256 i5 (NH.QBZSV.005) d??? d??ng chinh ph???c ng?????i d??ng v???i thi???t k??? ???c???c ng???u??? ?????m ch???t gaming c??ng hi???u n??ng b???n 
b??? ????p ???ng t???t nhu c???u chi???n game v?? h???c t???p gi???i tr?? c???a ng?????i d??ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (170, 108, N'V???i s??? m???nh m???, b???n b??? t??? thi???t k??? v??? n ??i l???n b??n trong c???u h??nh, Asus TUF Gaming FX506LH (HN002T) s??? l?? m???t tr??? th??? ?????c l???c c???a b???n trong tr?? ch??i y??u 
th??ch v?? c??? nh???ng t??c v??? n???ng kh??c.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (171, 109, N'Laptop Asus VivoBook A515EA i3 (BQ975T) s??? h???u c???u h??nh ???n ?????nh ?????n t??? chip Intel th??? h??? 11 cho b???n x??? l?? c??c c??ng vi???c v??n ph??ng ho???c ????? ho??? tr??n tru 
c??ng v???i n ???i h??nh ??a nh??n, thanh l???ch ????y s??? l?? s???n ph???m m?? ????ng ????? b???n quan t??m.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (172, 110, N'Chi???c laptop 2 trong 1 Asus ZenBook UX371EA i7 (HL701TS) v???a l?? laptop v???a l?? m??y t??nh b???ng c???c k??? ti???n d???ng, c???u h??nh m???nh m??? ???n ?????nh nh??? CPU Intel 
h??? h??? 11 c??ng m??n h??nh OLED ??em ?????n s???c m???nh v?????t tr???i, x??? l?? tr??n tru m???i c??ng vi???c v?? gi???i tr?? tuy???t h???o.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (173, 111, N'Laptop Asus TUF Gaming FX516PM i7 (HN023T) s??? h???u d??ng chip CPU Intel h??? h??? 11 m???nh m??? mang ?????n hi???u n??ng ???n t?????ng cho nhu c???u thi???t k??? ????? h???a, 
l??m vi???c v??n ph??ng v?? c??? chi???n game c???c ch???t.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (174, 112, N'Laptop Asus VivoBook A515EP i5 (BN334) l?? chi???c laptop ??a n??ng ph?? h???p v???i ??a d???ng ng?????i d??ng b???i n?? thu???c ph??n kh??c t???m trung nh??ng l???i ??em ?????n tr???i 
nghi???m hi???u n??ng kh?? ???n t?????ng t??? chip Intel th??? h??? 11 m???nh m???, th???a m??n m???i nhu c???u h???c t???p, l??m vi???c v?? gi???i tr??.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (175, 113, N'Laptop Dell G3 15 i7 (P89F002G3500C) l?? chi???c laptop trong ph??n kh??c gaming nh???n ???????c nhi???u s??? quan t??m ?????c bi???t b???i thi???t k??? ph??? th??ng, ????n gi???n c??ng 
hi???u n??ng t???i ??u m???nh m??? ph?? h???p v???i ??a d???ng ng?????i d??ng cho c??? nhu c???u h???c t???p, l??m vi???c v?? gi???i tr??.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (176, 114, N'Laptop Dell G3 15 i7 (P89F002G3500C) l?? chi???c laptop trong ph??n kh??c gaming nh???n ???????c nhi???u s??? quan t??m ?????c bi???t b???i thi???t k??? ph??? th??ng, ????n gi???n c??ng 
hi???u n??ng t???i ??u m???nh m??? ph?? h???p v???i ??a d???ng ng?????i d??ng cho c??? nhu c???u h???c t???p, l??m vi???c v?? gi???i tr??.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (177, 115, N'Laptop Dell XPS 13 9310 i5 (70231343) s??? h???u m???t c???u h??nh m???nh m??? ????ng g???m trong th??n m??y si??u m???ng nh???, m??n h??nh tr??n vi???n c??ng v???i ????? s??ng 500 nits 
r???c r??? ????p ???ng tr???n v???n m???i nhu c???u c???a d??n v??n ph??ng.');
INSERT INTO Introduce (Id, ProductId, data) VALUES (178, 116, N'Laptop Dell G5 15 5500 i7 (70225485) l?? m???u laptop gaming ???????c thi???t k??? theo phong c??ch l???ch l??m ?????y m???nh m???. C???u h??nh m???nh, hi???u su???t ????? h???a cao c??ng 
m??n h??nh l?? t?????ng cho vi???c ch??i game l?? nh???ng ??u ??i???m khi???n chi???c laptop n??y tr??? n??n n???i b???t trong ph??n kh??c. ');
INSERT INTO Introduce (Id, ProductId, data) VALUES (179, 117, N'Dell Inspiron 7501 i5 (N5I5012W) s??? h???u thi???t k??? tr??? trung, hi???n ?????i c??ng hi???u n??ng m???nh m???, ????p ???ng m?????t m?? c??c t??c v??? v??n ph??ng ?????n ????? h???a chuy??n 
nghi???p l?? s???n ph???m tuy???t v???i d??nh cho b???n.');

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


INSERT INTO Orders (Id, Username, CreateDate, Address, NguoiNhan, SDT, DiaChiNN, TrangThai, Codeid, CHid, TongTien, hoanthanh) VALUES (274, N'hsang', CAST(N'2021-12-05 13:04:17.867' AS DateTime), N'????ng H??a', N'Sang', N'0388848519', N'Ki??n Giang', N'???? ?????t h??ng', 4, 4, 749700, 1);
INSERT INTO Orders (Id, Username, CreateDate, Address, NguoiNhan, SDT, DiaChiNN, TrangThai, Codeid, CHid, TongTien, hoanthanh) VALUES (275, N'hsang', CAST(N'2020-12-05 13:04:17.903' AS DateTime), N'????ng H??a', N'Sang', N'0388848519', N'Ki??n Giang', N'???? ?????t h??ng', NULL, 1, 2182000, 1);
INSERT INTO Orders (Id, Username, CreateDate, Address, NguoiNhan, SDT, DiaChiNN, TrangThai, Codeid, CHid, TongTien, hoanthanh) VALUES (276, N'hsang', CAST(N'2020-12-05 19:15:22.250' AS DateTime), N'123', N'Sang', N'0388848519', N'kien giang', N'???? ?????t h??ng', 5, 1, 7797600, 1);
INSERT INTO Orders (Id, Username, CreateDate, Address, NguoiNhan, SDT, DiaChiNN, TrangThai, Codeid, CHid, TongTien, hoanthanh) VALUES (277, N'hsang', CAST(N'2021-11-06 19:18:15.407' AS DateTime), N'22', N'222', N'222', N'22', N'???? ?????t h??ng', NULL, 1, 190000, 1);
INSERT INTO Orders (Id, Username, CreateDate, Address, NguoiNhan, SDT, DiaChiNN, TrangThai, Codeid, CHid, TongTien, hoanthanh) VALUES (278, N'hsang', CAST(N'2021-01-05 19:18:55.877' AS DateTime), N'123', N'123', N'123', N'123', N'???? ?????t h??ng', NULL, 1, 140000, 1);
INSERT INTO Orders (Id, Username, CreateDate, Address, NguoiNhan, SDT, DiaChiNN, TrangThai, Codeid, CHid, TongTien, hoanthanh) VALUES (279, N'hsang', CAST(N'2021-12-05 19:20:52.737' AS DateTime), N'22', N'12', N'22', N'222', N'???? ?????t h??ng', 4, 4, 10791000, 1);
INSERT INTO Orders (Id, Username, CreateDate, Address, NguoiNhan, SDT, DiaChiNN, TrangThai, Codeid, CHid, TongTien, hoanthanh) VALUES (280, N'hsang', CAST(N'2021-12-06 11:54:07.160' AS DateTime), N'123', N'sang', N'123', N'123', N'???? ?????t h??ng', NULL, 4, 16490000, 1);
INSERT INTO Orders (Id, Username, CreateDate, Address, NguoiNhan, SDT, DiaChiNN, TrangThai, Codeid, CHid, TongTien, hoanthanh) VALUES (281, N'hsang', CAST(N'2000-12-07 09:57:04.440' AS DateTime), N'd??', N'Sang', N'0388848519', N'dd', N'???? ?????t h??ng', NULL, 4, 16490000, 1);


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
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (64, N'Apple Watch S5 LTE', 19541000, 0, CAST(N'2021-09-26' AS Date), N'Apple Watch S5 LTE 44mm vi???n th??p d??y th??p b???c.jpg', 1, 12, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (65, N'Apple Watch S6 40mm', 10191000, 0, CAST(N'2021-09-26' AS Date), N'Apple Watch S6 40mm vi???n nh??m d??y cao su h???ng.jpg', 1, 12, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (66, N'Apple Watch S6 LTE', 18691000, 0, CAST(N'2021-09-26' AS Date), N'Apple Watch S6 LTE.jpg', 1, 12, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (67, N'Apple Watch SE LTE', 10191000, 0, CAST(N'2021-09-26' AS Date), N'Apple Watch SE LTE.jpg', 1, 12, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (68, N'Apple Watch SE', 7641000, 0, CAST(N'2021-09-26' AS Date), N'Apple Watch SE.jpg', 1, 12, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (69, N'BeU Active', 1390000, 0, CAST(N'2021-09-26' AS Date), N'BeU Active 1.jpg', 1, 13, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (70, N'BeU PT1', 833000, 0, CAST(N'2021-09-26' AS Date), N'BeU PT1.jpg', 1, 13, 4);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (72, N'BeU PT2', 792000, 0, CAST(N'2021-09-26' AS Date), N'BeU PT2.jpg', 1, 13, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (73, N'BeU Sporty 1', 159000, 1, CAST(N'2021-09-26' AS Date), N'BeU Sporty 1.jpg', 1, 13, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (74, N'BeU Watch KW09', 1752000, 1, CAST(N'2021-09-26' AS Date), N'BeU Watch KW09.jpg', 1, 13, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (75, N'BeU B2', 552000, 1, CAST(N'2021-09-26' AS Date), N'?????ng h??? th??ng minh BeU B2.jpg', 1, 13, 1);
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
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (89, N'Oppo Watch 41mm day silicone den', 4312000, 1, CAST(N'2021-09-26' AS Date), N'Oppo Watch 41mm d??y silicone ??en.jpg', 1, 16, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (90, N'Oppo Watch 41mm day silicone', 4752000, 1, CAST(N'2021-09-26' AS Date), N'Oppo Watch 41mm d??y silicone.jpg', 1, 16, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (91, N'Oppo Watch 41mm', 4312000, 1, CAST(N'2021-09-26' AS Date), N'Oppo Watch 41mm.jpg', 1, 16, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (92, N'Oppo Watch 46mm day silicone den', 7990000, 1, CAST(N'2021-09-26' AS Date), N'Oppo Watch 46mm d??y silicone ??en.jpg', 1, 16, 1);
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
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (110, N'Laptop Asus ZenBook UX371EA i7', 39490000, 1, CAST(N'2021-09-26' AS Date), N'39.490.000??.jpg', 1, 19, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (111, N'Laptop Asus TUF Gaming FX516PM i7', 32490000, 1, CAST(N'2021-09-26' AS Date), N'32.490.000??.jpg', 1, 19, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (112, N'Laptop Asus VivoBook A515EP i5', 20390000, 1, CAST(N'2021-09-26' AS Date), N'20.390.000??.jpg', 1, 19, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (113, N'Laptop Dell Gaming G3 15 i7', 31290000, 1, CAST(N'2021-09-26' AS Date), N'31.290.000.jpg', 1, 20, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (114, N'Laptop Dell Gaming G3 15 i7', 27290000, 1, CAST(N'2021-09-26' AS Date), N'27.290.000.jpg', 1, 20, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (115, N'Laptop Dell XPS 13 9310 i5', 41490000, 1, CAST(N'2021-09-26' AS Date), N'41.490.000.jpg', 1, 20, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (116, N'Laptop Dell Gaming G5 15 5500 i7', 30590000, 1, CAST(N'2021-09-26' AS Date), N'30.590.000.jpg', 1, 20, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (117, N'Laptop Dell Inspiron 7501 i5', 29990000, 1, CAST(N'2021-09-26' AS Date), N'29.990.000.jpg', 1, 20, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (118, N'Laptop HP Pavilion 15 eg0505TU i5', 18590000, 1, CAST(N'2021-09-26' AS Date), N'18.590.000??.jpg', 1, 21, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (119, N'Laptop HP 15s fq2559TU i5', 17590000, 1, CAST(N'2021-09-26' AS Date), N'17.590.000??.jpg', 1, 21, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (120, N'Laptop HP Omen 15 ek0078TX i7', 51740000, 1, CAST(N'2021-09-26' AS Date), N'51.740.000??.jpg', 1, 21, 1);
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
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1023, N'M??y t??nh b???ng Huawei MatePad T10s ', 50140000, 1, CAST(N'2021-09-27' AS Date), N'huawei-matepad-xanh-600x600-600x600.jpg', 1, 1005, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1024, N'M??y t??nh b???ng Huawei MatePad 64GB ', 6590000, 1, CAST(N'2021-09-27' AS Date), N'huawei-matepad-xam-128gb-600x600.jpg', 1, 1005, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1025, N'M??y t??nh b???ng Huawei MatePad 128GB ', 7490000, 1, CAST(N'2021-09-27' AS Date), N'huawei-matepad-t8-xanh-600x600.jpg', 1, 1005, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1026, N'M??y t??nh b???ng Huawei MatePad T8 ', 3090000, 1, CAST(N'2021-09-27' AS Date), N'ipad-pro-2021-129-inch-silver-600x600.jpg', 1, 1005, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1027, N'M??y t??nh b???ng iPad Pro M1 ', 38490000, 1, CAST(N'2021-09-27' AS Date), N'ipad-pro-2021-11-inch-silver-600x600.jpg', 1, 1006, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1028, N'M??y t??nh b???ng iPad Pro M1 11 inch ', 28990000, 1, CAST(N'2021-09-27' AS Date), N'ipad-pro-2021-11-inch-silver-600x600.jpg', 1, 1006, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1029, N'M??y t??nh b???ng iPad Pro 12.9 inch ', 26790000, 1, CAST(N'2021-09-27' AS Date), N'ipad-pro-11-inch-wifi-cellular-128gb-2020-xam.jpg', 1, 1006, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1030, N'M??y t??nh b???ng iPad Pro 11 inch ', 26290000, 1, CAST(N'2021-09-27' AS Date), N'ipad-air-4-wifi-64gb-2020-xanhla.jpg', 1, 1006, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1031, N'M??y t??nh b???ng iPad Air 4 ', 21290000, 1, CAST(N'2021-09-27' AS Date), N'ipad-mini-79-inch-wifi-cellular-64gb-2019.jpg', 1, 1006, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1032, N'M??y t??nh b???ng iPad mini 7.9 inch ', 15790000, 1, CAST(N'2021-09-27' AS Date), N'ipad-gen-8-cellular-vang-new.jpg', 1, 1006, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1034, N'M??y t??nh b???ng iPad 8 Wifi Cellular 128GB ', 15790000, 1, CAST(N'2021-09-27' AS Date), N'tab-m10-fhd-plus-600-600x600.jpg', 1, 1006, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1035, N'M??y t??nh b???ng Lenovo Tab M10 ', 5990000, 1, CAST(N'2021-09-27' AS Date), N'tab-m10-gen-2-600x600-600x600.jpg', 1, 1007, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1036, N'M??y t??nh b???ng Lenovo Tab M10 - Gen 2', 4690000, 1, CAST(N'2021-09-27' AS Date), N'lenovo-tab-a22-xam-600x600.jpg', 1, 1007, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1037, N'M??y t??nh b???ng Lenovo Tab M8 ', 3790000, 1, CAST(N'2021-09-27' AS Date), N'lenovo-tab-m7-600x600-1-600x600.jpg', 1, 1007, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1038, N'M??y t??nh b???ng Lenovo Tab M7', 2240000, 1, CAST(N'2021-09-27' AS Date), N'lenovo-tab-e7-tb-7104i-600x600-600x600.jpg', 1, 1007, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1039, N'M??y t??nh b???ng Lenovo Tab E7 ', 1990000, 1, CAST(N'2021-09-27' AS Date), N'masstel-tab-10-ultra-vangdong-600x600-600x600.jpg', 1, 1007, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1040, N'M??y t??nh b???ng Masstel Tab 10 Ultra', 3590000, 1, CAST(N'2021-09-27' AS Date), N'masstel-tab-10-den-600x600-600x600.jpg', 1, 1008, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1041, N'M??y t??nh b???ng Masstel Tab10 4G', 3290000, 1, CAST(N'2021-09-27' AS Date), N'masstel-tab10-pro-vang-new-600x600.jpg', 1, 1008, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1042, N'M??y t??nh b???ng Masstel Tab 10 Pro', 2240000, 1, CAST(N'2021-09-27' AS Date), N'masstel-tab10-pro-vang-new-600x600.jpg', 1, 1008, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1043, N'M??y t??nh b???ng Samsung Galaxy Tab S7 FE', 13990000, 1, CAST(N'2021-09-27' AS Date), N'samsung-galaxy-tab-s7-fe-green-600x600.jpg', 1, 1009, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1044, N'M??y t??nh b???ng Samsung Galaxy Tab A7 Lite', 4490000, 1, CAST(N'2021-09-27' AS Date), N'samsung-galaxy-tab-a7-lite-sliver-600x600.jpg', 1, 1009, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1045, N'M??y t??nh b???ng Samsung Galaxy Tab S7', 18990000, 1, CAST(N'2021-09-27' AS Date), N'samsung-galaxy-tab-s7- ld-new-600x600.jpg', 1, 1009, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1046, N'M??y t??nh b???ng Samsung Galaxy Tab A8 ', 3690000, 1, CAST(N'2021-09-27' AS Date), N'samsung-galaxy-tab-a8-t295-2019-black-1.jpg', 1, 1009, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1047, N'M??y t??nh b???ng Samsung Galaxy Tab S6 Lite', 9990000, 1, CAST(N'2021-09-27' AS Date), N'samsung-galaxy-tab-s6-lite-600x600-2-600x600.jpg', 1, 1009, 1);
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
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1141, N'B??n Ph??m C?? C?? D??y Gaming Razer', 2912000, 1, CAST(N'2021-10-13' AS Date), N'a1.jpg', 1, 1029, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1142, N'B??n Ph??m C?? C?? D??y Gaming Rapoo V500Pro V??ng Xanh', 990000, 1, CAST(N'2021-10-13' AS Date), N'a7.jpg', 1, 1029, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1143, N'Th??ng s??? k??? thu???t B??n Ph??m Kh??ng D??y Logitech K580', 989000, 1, CAST(N'2021-10-13' AS Date), N'a13.jpg', 1, 1029, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1144, N'B??n Ph??m C?? C?? D??y Gaming Corsair K63 ', 1575000, 1, CAST(N'2021-10-13' AS Date), N'a19.jpg', 1, 1029, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1146, N'B??n Ph??m C?? C?? D??y Gaming Silent Razer Lite', 1912000, 1, CAST(N'2021-10-13' AS Date), N'a26.jpg', 1, 1029, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1147, N'Chu???t Kh??ng D??y Bluetooth Rapoo M160 ??en', 220000, 1, CAST(N'2021-10-13' AS Date), N'b1.jpg', 1, 1030, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1148, N'Chu???t Kh??ng D??y Gaming Razer Basilisk x HyperSpeed', 1064000, 1, CAST(N'2021-10-13' AS Date), N'b6.jpg', 1, 1030, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1149, N'Chu???t Bluetooth Gaming Corsair Harpoon RGB ??en', 1251000, 1, CAST(N'2021-10-13' AS Date), N'b11.jpg', 1, 1030, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1150, N'Chu???t Bluetooth Apple MLA02', 1992000, 1, CAST(N'2021-10-13' AS Date), N'b16.jpg', 1, 1030, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1151, N'Chu???t kh??ng d??y Logitech MX Anywhere 3', 1999000, 1, CAST(N'2021-10-13' AS Date), N'b20.jpg', 1, 1030, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1152, N'Tai nghe ch???p tai Rapoo H100 ??en', 250000, 1, CAST(N'2021-10-13' AS Date), N'c1.jpg', 1, 1031, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1157, N'Tai nghe ch???p tai Bluetooth AirPods Max Apple', 12311000, 1, CAST(N'2021-10-13' AS Date), N'c7.jpg', 1, 1031, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1158, N'Tai nghe ch???p tai Beats Studio3 Wireless ', 6741000, 1, CAST(N'2021-10-13' AS Date), N'c11.jpg', 1, 1031, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1159, N'Tai nghe ch???p tai Bluetooth Sony WH-XB900N', 5790000, 1, CAST(N'2021-10-13' AS Date), N'c17.jpg', 1, 1031, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1160, N'Tai nghe ch???p tai Gaming MozardX G1 ??en', 472000, 1, CAST(N'2021-10-13' AS Date), N'c23.jpg', 1, 1031, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1163, N'??? c???ng SSD 500GB WD My Passport   Xanh D????ng', 2790000, 1, CAST(N'2021-10-13' AS Date), N'd1.jpg', 1, 1032, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1164, N'??? c???ng HDD 2TB WD My Passport G0020BBK', 2790000, 1, CAST(N'2021-10-13' AS Date), N'd7.jpg', 1, 1032, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1165, N'??? c???ng HDD 1TB WD My Passport G0010BRD ', 1521000, 1, CAST(N'2021-10-13' AS Date), N'd13.jpg', 1, 1032, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1169, N'??? c???ng HDD 2TB Seagate Backup Plus Slim', 2750000, 1, CAST(N'2021-10-13' AS Date), N'd20.jpg', 1, 1032, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1170, N'??? c???ng HDD 1TB Seagate Backup Plus Slim Xanh D????ng', 1690000, 1, CAST(N'2021-10-13' AS Date), N'd26.jpg', 1, 1032, 1);
 
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1171, N'USB OTG 3.1 64GB Type C Sandisk SDDDC3 ??en', 337000, 1, CAST(N'2021-10-13' AS Date), N'e1.jpg', 1, 1033, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1172, N'USB 3.0 32 GB Sandisk CZ73', 187000, 1, CAST(N'2021-10-13' AS Date), N'e7.jpg', 1, 1033, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1173, N'USB 3.1 32 GB Apacer AH357', 187000, 1, CAST(N'2021-10-13' AS Date), N'e11.jpg', 1, 1033, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1175, N'USB 3.0 - 3.1 16 GB Transcend JetFlash 790', 144000, 1, CAST(N'2021-10-13' AS Date), N'e16.jpg', 1, 1033, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1176, N'USB 3.0 16 GB Apacer AH354', 144000, 1, CAST(N'2021-10-13' AS Date), N'e22.jpg', 1, 1033, 1);
INSERT INTO Products (Id, Name, Price, SoLuong, CreateDate, Image, Available, CategoryId, CuaHangId) VALUES (1177, N'1', 1, 14, CAST(N'2021-10-15' AS Date), N'5e90c782.jpg', 0, 14, 1);

INSERT INTO Roles (Id, Name) VALUES (N'AD', N'ADMIN');
INSERT INTO Roles (Id, Name) VALUES (N'CH', N'Ch??? c???a h??ng');
INSERT INTO Roles (Id, Name) VALUES (N'KH', N'Kh??ch H??ng');


INSERT INTO Saleuser (Id, Username, Codeid, date) VALUES (18, N'hsang', 5, CAST(N'2021-12-05' AS Date));
INSERT INTO Saleuser (Id, Username, Codeid, date) VALUES (19, N'hsang', 4, CAST(N'2021-12-05' AS Date));


INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1, N'M??n h??nh', N'OLED', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (5, N'H??? ??i???u h??nh', N'iOS 14', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (6, N'Camera sau', N'2 camera 12 MP', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (7, N'Camera tr?????c', N'12 MP', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (8, N'Chip x??? l??', N'Apple A14 Bionic 6 nh??n', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (9, N'RAM', N'4 GB', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (10, N'B??? nh??? trong', N'64 GB', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (11, N'SIM', N'1 Nano SIM & 1 eSIM', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (12, N'Lo???i pin', N'Li-Ion', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (13, N'Dung l?????ng pin', N'2815 mAh', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (14, N'H??? tr??? s???c t???i ??a', N'20 W', 9);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (16, N'M??n h??nh', N'OLED', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (17, N'H??? ??i???u h??nh', N'iOS 14', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (18, N'Camera sau', N'3 camera 12 MP', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (19, N'Camera tr?????c', N'12 MP', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (20, N'Chip x??? l??', N'Apple A14 Bionic 6 nh??n', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (21, N'RAM', N'6 GB', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (22, N'B??? nh??? trong', N'128 GB', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (23, N'SIM', N'1 Nano SIM & 1 eSIM', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (24, N'Lo???i pin', N'Li-Ion', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (25, N'Dung l?????ng pin', N'3687 mAh', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (26, N'H??? tr??? s???c t???i ??a', N'20 W', 10);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (27, N'M??n h??nh', N'OLED', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (28, N'H??? ??i???u h??nh', N'iOS 14', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (29, N'Camera sau', N'3 camera 12 MP', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (31, N'Camera tr?????c', N'12 MP', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (32, N'Chip x??? l?? ', N'Apple A14 Bionic 6 nh??n', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (33, N'RAM', N'6 GB', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (34, N'B??? nh??? trong', N'128 GB', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (35, N'SIM', N'1 Nano SIM & 1 eSIM', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (36, N'Lo???i pin', N'Li-Ion', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (37, N'Dung l?????ng pin', N'2815 mAh', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (38, N'H??? tr??? s???c t???i ??a', N'20 W', 12);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (39, N'M??n h??nh', N'OLED', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (40, N'H??? ??i???u h??nh', N'
iOS 14', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (41, N'Camera sau', N'2 camera 12 MP', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (42, N'Camera tr?????c', N'12 MP', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (43, N'Chip x??? l??', N'Apple A14 Bionic 6 nh??n', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (44, N'RAM', N'4 GB', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (45, N'B??? nh??? trong', N'64 GB', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (46, N'SIM', N'1 Nano SIM & 1 eSIM', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (47, N'Lo???i pin', N'
Li-Ion', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (48, N'Dung l?????ng pin', N'2227 mAh', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (49, N'H??? tr??? s???c t???i ??a', N'20 W', 13);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (50, N'M??n h??nh', N'828 x 1792 Pixels', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (51, N'H??? ??i???u h??nh', N'iOS 14', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (52, N'Camera sau', N'12 MP', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (53, N'Camera tr?????c', N'7 MP', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (54, N'Chip x??? l??', N'Apple A12 Bionic 6 nh??n', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (55, N'RAM', N'3 GB', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (56, N'B??? nh??? trong', N'64 GB', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (57, N'SIM', N'1 Nano SIM & 1 eSIM', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (58, N'Lo???i pin', N'Li-Ion', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (59, N'Dung l?????ng pin', N'2942 mAh', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (60, N'H??? tr??? s???c t???i ??a:', N'15 W', 16);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (61, N'M??n h??nh', N'IPS LCD', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (62, N'H??? ??i???u h??nh', N'iOS 14', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (63, N'Camera sau', N'12 MP', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (64, N'Camera tr?????c', N'7 MP', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (65, N'RAM', N'3 GB', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (66, N'B??? nh??? trong', N'128 GB', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (67, N'Chip x??? l?? ', N'Apple A13 Bionic 6 nh??n', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (68, N'SIM', N'1 Nano SIM & 1 eSIM', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (69, N'Lo???i pin', N'Li-Ion', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (70, N'Dung l?????ng pin', N'1821 mAh', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (71, N'H??? tr??? s???c t???i ??a', N'18 W', 17);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (72, N'M??n h??nh', N'OLED', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (73, N'
H??? ??i???u h??nh', N'iOS 14', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (74, N'Camera sau', N'3 camera 12 MP', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (75, N'Camera tr?????c', N'12 MP', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (77, N'Chip x??? l??', N'Apple A14 Bionic 6 nh??n', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (78, N'RAM', N'6 GB', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (79, N'B??? nh??? trong', N'128 GB', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (80, N'SIM', N'1 Nano SIM & 1 eSIM', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (81, N'Lo???i pin', N'Li-Ion', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (82, N'Dung l?????ng pin', N'2815 mAh', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (83, N'H??? tr??? s???c t???i ??a', N'20 W', 19);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (84, N'M??n h??nh', N'IPS LCD', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (85, N'H??? ??i???u h??nh', N'iOS 14', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (86, N'Camera sau', N'2 camera 12 MP', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (87, N'Camera tr?????c', N'12 MP', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (88, N'RAM', N'4 GB', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (89, N'B??? nh??? trong', N'64 GB', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (90, N'Chip x??? l??', N'
Apple A13 Bionic 6 nh??n', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (91, N'SIM', N'1 Nano SIM & 1 eSIM', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (92, N'Lo???i pin', N'Li-Ion', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (93, N'Dung l?????ng pin', N'3110 mAh', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (94, N'H??? tr??? s???c t???i ??a', N'18 W', 20);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (95, N'M??n h??nh', N'Dynamic AMOLED 2X', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (96, N'H??? ??i???u h??nh', N'Android 11', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (97, N'Camera sau', N'2 camera 12 MP', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (98, N'Camera tr?????c', N'10 MP', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (99, N'RAM', N'8 GB', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (100, N'B??? nh??? trong', N'128 GB', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (101, N'SIM', N'1 Nano SIM & 1 eSIM', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (102, N'Lo???i pin', N'Li-Ion', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (103, N'Dung l?????ng pin', N'3300 mAh', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (104, N'H??? tr??? s???c t???i ??a', N'15 W', 23);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (105, N'M??n h??nh', N'Super AMOLED', 24);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (106, N'H??? ??i???u h??nh', N'
Android 11', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (107, N'Camera sau', N'Ch??nh 64 MP & Ph??? 12 MP, 5 MP, 5 MP', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (109, N'
Camera tr?????c', N'32 MP', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (110, N'RAM', N'8 GB', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (111, N'B??? nh??? trong', N'128 GB', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (112, N'Chip x??? l??', N'Snapdra n 750G 5G 8 nh??n', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (113, N'SIM', N'2 Nano SIM', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (114, N'Lo???i pin', N'Li-Ion', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (115, N'Dung l?????ng pin', N'4500 mAh', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (116, N'H??? tr??? s???c t???i ??a', N'25 W', 24);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (117, N'M??n h??nh', N'Dynamic AMOLED 2X', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (118, N'H??? ??i???u h??nh', N'Android 11', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (120, N'Camera sau', N'2 camera 12 MP', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (121, N'Camera tr?????c', N'10 MP', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (122, N'RAM', N'8 GB', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (123, N'B??? nh??? trong', N'128 GB', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (124, N'SIM', N'1 Nano SIM & 1 eSIM', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (125, N'Lo???i pin', N'Li-Ion', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (126, N'Dung l?????ng pin', N'3300 mAh', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (128, N'H??? tr??? s???c t???i ??a', N'15 W', 25);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (129, N'M??n h??nh', N'
Ch??nh: Dynamic AMOLED, Ph???: Super AMOLED', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (130, N'H??? ??i???u h??nh', N'Android 10', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (131, N'Camera tr?????c', N'Trong 10 MP & N ??i 10 MP', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (132, N'Camera sau', N'3 camera 12 MP', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (133, N'
RAM', N'12 GB', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (134, N'B??? nh??? trong', N'256 GB', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (135, N'Chip x??? l??', N'
Snapdra n 865+ 8 nh??n', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (136, N'SIM', N'1 Nano SIM & 1 eSIM', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (138, N'Lo???i pin', N'Li-Po', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (139, N'H??? tr??? s???c t???i ??a', N'
25 W', 26);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (140, N'M??n h??nh
', N'Dynamic AMOLED 2X', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (141, N'H??? ??i???u h??nh', N'Android 11', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (142, N'Camera sau', N'Ch??nh 12 MP & Ph??? 64 MP, 12 MP', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (143, N'Camera tr?????c', N'10 MP', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (144, N'RAM', N'8 GB', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (145, N'B??? nh??? trong', N'128 GB', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (146, N'SIM', N'
2 Nano SIM ho???c 1 Nano SIM + 1 eSIM', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (147, N'Lo???i pin', N'Li-Ion', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (148, N'H??? tr??? s???c t???i ??a', N'25 W', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (149, N'M??n h??nh', N'IPS LCD', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (150, N'H??? ??i???u h??nh', N'Android 11', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (151, N'Camera tr?????c', N'5 MP', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (152, N'Camera sau', N'Ch??nh 13 MP & Ph??? 2 MP, 2 MP', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (153, N'RAM', N'4 GB', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (154, N'B??? nh??? trong', N'64 GB', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (155, N'Chip x??? l??', N'Spreadtrum T610 8 nh??n', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (156, N'SIM', N'
2 Nano SIM', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (157, N'Lo???i pin', N'Li-Po', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (158, N'H??? tr??? s???c t???i ??a', N'10 W', 28);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (159, N'Chip x??? l??', N'Exynos 2100 8 nh??n', 27);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (160, N'M??n h??nh', N'IPS LCD', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (161, N'H??? ??i???u h??nh', N'
Android 11', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (162, N'Camera sau', N'
Ch??nh 48 MP & Ph??? 2 MP, 2 MP', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (163, N'Camera tr?????c', N'8 MP', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (164, N'RAM', N'4 GB', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (165, N'B??? nh??? trong', N'128 GB', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (166, N'Chip x??? l??', N'MediaTek Helio G85 8 nh??n', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (167, N'SIM', N'2 Nano SIM', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (168, N'Lo???i pin', N'Li-Po', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (169, N'H??? tr??? s???c t???i ??a', N'18 W', 31);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (170, N'M??n h??nh', N'Super AMOLED', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (171, N'H??? ??i???u h??nh', N'Android 11', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (172, N'Camera tr?????c', N'16 MP', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (173, N'Camera sau', N'Ch??nh 108 MP & Ph??? 8 MP, 2 MP, 2 MP', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (175, N'RAM', N'8 GB', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (176, N'B??? nh??? trong', N'128 GB', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (178, N'Chip x??? l??', N'Snapdra n 720G 8 nh??n', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (179, N'SIM', N'2 Nano SIM', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (180, N'Lo???i pin', N'Li-Po', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (181, N'H??? tr??? s???c t???i ??a', N'50 W', 34);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (182, N'M??n h??nh', N'Super AMOLED', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (183, N'H??? ??i???u h??nh', N'Android 11', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (184, N'Camera tr?????c', N'16 MP', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (185, N'Camera sau', N'Ch??nh 108 MP & Ph??? 8 MP, 2 MP, 2 MP', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (186, N'
RAM', N'8 GB', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (187, N'B??? nh??? trong', N'128 GB', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (188, N'Chip x??? l?? ', N'Snapdra n 720G 8 nh??n', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (189, N'SIM', N'2 Nano SIM', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (190, N'Lo???i pin', N'
Li-Po', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (191, N'H??? tr??? s???c t???i ??a', N'50 W', 35);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (192, N'M??n h??nh', N'
Super AMOLED', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (193, N'
H??? ??i???u h??nh', N'Android 11', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (194, N'Camera tr?????c', N'16 MP', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (195, N'Camera sau', N'Ch??nh 64 MP & Ph??? 8 MP, 2 MP, 2 MP', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (196, N'RAM', N'8 GB', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (197, N'B??? nh??? trong', N'128 GB', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (198, N'Chip x??? l??', N'MediaTek Helio G95 8 nh??n', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (199, N'SIM', N'
2 Nano SIM', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (200, N'Lo???i pin', N'Li-Po', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (201, N'H??? tr??? s???c t???i ??a', N'30 W', 37);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (202, N'M??n h??nh', N'IPS LCD', 38);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (203, N'H??? ??i???u h??nh', N'Android 10', 38);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (205, N'Camera tr?????c', N'8 MP', 38);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (206, N'Camera sau', N'Ch??nh 13 MP & Ph??? 2 MP', 38);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (207, N'RAM', N'4 GB', 38);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (208, N'B??? nh??? trong', N'128 GB', 38);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (210, N'Chip x??? l??', N'
MediaTek Helio P35 8 nh??n', 38);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (211, N'SIM', N'2 Nano SIM', 38);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (212, N'Lo???i pin', N'Li-Po', 38);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (213, N'H??? tr??? s???c t???i ??a', N'10 W', 38);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (224, N'M??n h??nh', N'AMOLED', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (225, N'H??? ??i???u h??nh', N'Android 11', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (227, N'Camera tr?????c', N'44 MP', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (228, N'Camera sau', N'Ch??nh 64 MP & Ph??? 8 MP, 2 MP', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (229, N'RAM', N'8 GB', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (230, N'B??? nh??? trong', N'128 GB', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (231, N'Chip x??? l??', N'MediaTek Dimensity 800U 5G 8 nh??n', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (232, N'SIM', N'2 Nano SIM', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (233, N'Lo???i pin', N'Li-Po', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (234, N'H??? tr??? s???c t???i ??a', N'33 W', 41);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (235, N'M??n h??nh', N'AMOLED', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (236, N'H??? ??i???u h??nh', N'Android 11', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (237, N'Camera tr?????c', N'44 MP', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (238, N'Camera sau', N'Ch??nh 64 MP & Ph??? 8 MP, 2 MP', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (239, N'RAM', N'8 GB', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (240, N'B??? nh??? trong', N'128 GB', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (241, N'Chip x??? l?? ', N'Snapdra n 730 8 nh??n', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (242, N'SIM', N'2 Nano SIM', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (243, N'Lo???i pin', N'Li-Po', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (244, N'H??? tr??? s???c t???i ??a', N'
33 W', 42);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (245, N'M??n h??nh', N'AMOLED', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (246, N'H??? ??i???u h??nh', N'Android 11', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (247, N'Camera tr?????c', N'44 MP', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (248, N'Camera sau', N'Ch??nh 64 MP & Ph??? 8 MP, 2 MP', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (249, N'RAM', N'8 GB', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (250, N'B??? nh??? trong', N'128 GB', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (251, N'Chip x??? l??', N'Snapdra n 720G 8 nh??n', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (252, N'SIM', N'
2 Nano SIM', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (253, N'Lo???i pin', N'Li-Po', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (254, N'H??? tr??? s???c t???i ??a', N'33 W', 44);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (255, N'M??n h??nh', N'IPS LCD', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (256, N'H??? ??i???u h??nh', N'Android 11', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (257, N'Camera tr?????c', N'8 MP', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (258, N'Camera sau
', N'Ch??nh 13 MP & Ph??? 2 MP, 2 MP', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (259, N'RAM', N'4 GB', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (261, N'B??? nh??? trong', N'64 GB', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (262, N'Chip x??? l?? ', N'MediaTek Helio G35 8 nh??n', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (263, N'SIM', N'2 Nano SIM', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (264, N'Lo???i pin', N'Li-Po', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (265, N'H??? tr??? s???c t???i ??a', N'15 W', 45);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (266, N'M??n h??nh', N'AMOLED', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (267, N'H??? ??i???u h??nh', N'Android 10', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (268, N'Camera tr?????c', N'20 MP', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (269, N'Camera sau', N'Ch??nh 64 MP & Ph??? 8 MP, 8 MP, 2 MP', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (270, N'RAM', N'8 GB', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (271, N'B??? nh??? trong', N'128 GB', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (272, N'Chip x??? l?? ', N'Snapdra n 730 8 nh??n', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (273, N'SIM', N'2 Nano SIM', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (274, N'Lo???i pin', N'Li-Po', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (276, N'H??? tr??? s???c t???i ??a', N'18 W', 46);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (277, N'M??n h??nh', N'AMOLED', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (278, N'H??? ??i???u h??nh', N'Android 10', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (279, N'Camera tr?????c', N'20 MP', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (280, N'Camera sau', N'Ch??nh 64 MP & Ph??? 8 MP, 8 MP, 2 MP', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (281, N'RAM', N'8 GB', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (282, N'B??? nh??? trong', N'128 GB', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (283, N'Chip x??? l??', N'Snapdra n 730 8 nh??n', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (284, N'SIM', N'2 Nano SIM', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (285, N'Lo???i pin', N'Li-Po', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (286, N'H??? tr??? s???c t???i ??a', N'18 W', 47);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (287, N'M??n h??nh', N'LTPS IPS LCD', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (288, N'
H??? ??i???u h??nh', N'Android 10', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (289, N'Camera tr?????c', N'13 MP', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (290, N'Camera sau', N'Ch??nh 16 MP & Ph??? 8 MP, 2 MP, 2 MP', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (291, N'RAM', N'4 GB', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (292, N'B??? nh??? trong', N'64 GB', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (293, N'Chip x??? l?? ', N'Snapdra n 665 8 nh??n', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (294, N'SIM', N'2 Nano SIM', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (295, N'Lo???i pin', N'Li-Po', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (296, N'H??? tr??? s???c t???i ??a', N'18 W', 48);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (297, N'M??n h??nh', N'LTPS IPS LCD', 50);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (298, N'H??? ??i???u h??nh', N'Android 10', 50);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (299, N'Camera tr?????c', N'13 MP', 50);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (300, N'Camera sau', N'Ch??nh 16 MP & Ph??? 8 MP, 2 MP, 2 MP', 50);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (301, N'Chip x??? l??', N'
Snapdra n 665 8 nh??n', 50);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (302, N'SIM', N'2 Nano SIM', 50);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (303, N'Lo???i pin', N'Li-Po', 50);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (304, N'H??? tr??? s???c t???i ??a', N'18 W', 50);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (305, N'M??n h??nh', N'
AMOLED', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (306, N'H??? ??i???u h??nh', N'Android 11', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (307, N'Camera tr?????c', N'16 MP', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (308, N'Camera sau', N'Ch??nh 64 MP & Ph??? 8 MP, 5 MP', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (309, N'RAM', N'8 GB', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (310, N'B??? nh??? trong', N'128 GB', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (311, N'Chip x??? l?? ', N'Snapdra n 732G 8 nh??n', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (312, N'SIM', N'2 Nano SIM (SIM 2 chung khe th??? nh???)', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (313, N'Lo???i pin', N'Li-Po', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (314, N'H??? tr??? s???c t???i ??a', N'33 W', 52);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (315, N'M??n h??nh', N'IPS LCD', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (316, N'H??? ??i???u h??nh', N'Android 11', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (317, N'Camera tr?????c', N'8 MP', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (318, N'Camera sau', N'Ch??nh 48 MP & Ph??? 2 MP, 2 MP', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (319, N'Chip x??? l??', N'MediaTek Dimensity 700 5G 8 nh??n', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (320, N'SIM', N'2 Nano SIM', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (321, N'Lo???i pin', N'Li-Po', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (322, N'H??? tr??? s???c t???i ??a', N'18 W', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (323, N'RAM', N'8 GB', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (325, N'B??? nh??? trong', N'128 GB', 54);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (326, N'M??n h??nh', N'AMOLED', 55);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (327, N'H??? ??i???u h??nh', N'Android 11', 55);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (328, N'Camera tr?????c', N'20 MP', 55);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (329, N'Camera sau', N'Ch??nh 108 MP & Ph??? 13 MP, 5 MP', 55);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (330, N'RAM', N'8 GB', 55);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (331, N'B??? nh??? trong', N'256 GB', 55);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (332, N'Chip x??? l??', N'Snapdra n 888 8 nh??n', 55);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (333, N'SIM', N'2 Nano SIM', 55);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (334, N'Lo???i pin', N'Li-Ion', 55);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (335, N'H??? tr??? s???c t???i ??a', N'55 W', 55);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (336, N'M??n h??nh', N'IPS LCD', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (337, N'H??? ??i???u h??nh', N'Android 10', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (338, N'Camera tr?????c', N'20 MP', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (339, N'Camera sau', N'Ch??nh 108 MP & Ph??? 13 MP, 5 MP', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (340, N'RAM', N'8 GB', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (341, N'B??? nh??? trong', N'256 GB', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (342, N'Chip x??? l??', N'Snapdra n 865 8 nh??n', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (343, N'SIM', N'2 Nano SIM', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (344, N'Lo???i pin', N'Li-Ion', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (345, N'H??? tr??? s???c t???i ??a', N'33 W', 56);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (346, N'M??n h??nh', N'AMOLED', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (347, N'H??? ??i???u h??nh', N'Android 11', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (348, N'Camera tr?????c', N'16 MP', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (349, N'Camera sau', N'Ch??nh 108 MP & Ph??? 8 MP, 5 MP, 2 MP', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (350, N'RAM', N'8 GB', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (351, N'B??? nh??? trong', N'128 GB', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (352, N'Chip x??? l?? ', N'
Snapdra n 732G 8 nh??n', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (353, N'SIM', N'2 Nano SIM', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (354, N'Lo???i pin', N'Li-Ion', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (355, N'H??? tr??? s???c t???i ??a', N'33 W', 57);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (356, N'M??n h??nh', N'AMOLED', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (357, N'H??? ??i???u h??nh', N'Android 11', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (358, N'Camera tr?????c', N'32 MP', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (359, N'Camera sau', N'Ch??nh 64 MP & Ph??? 8 MP, 2 MP', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (360, N'RAM', N'8 GB', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (361, N'B??? nh??? trong', N'128 GB', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (362, N'Chip x??? l??', N'MediaTek Dimensity 800U 5G 8 nh??n', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (363, N'SIM', N'2 Nano SIM', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (364, N'Lo???i pin', N'Li-Po', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (365, N'H??? tr??? s???c t???i ??a', N'30 W', 58);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (366, N'M??n h??nh', N'AMOLED', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (367, N'H??? ??i???u h??nh', N'Android 11', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (368, N'Camera tr?????c', N'32 MP', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (369, N'Camera sau', N'Ch??nh 64 MP & Ph??? 8 MP, 2 MP', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (371, N'RAM', N'8 GB', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (372, N'B??? nh??? trong', N'128 GB', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (373, N'Chip x??? l??', N'MediaTek Dimensity 900 5G', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (374, N'SIM', N'2 Nano SIM', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (375, N'Lo???i pin', N'Li-Po', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (376, N'H??? tr??? s???c t???i ??a', N'65 W', 59);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (377, N'M??n h??nh', N'AMOLED', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (378, N'H??? ??i???u h??nh', N'Android 11', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (379, N'Camera tr?????c', N'16 MP', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (380, N'Camera sau', N'Ch??nh 48 MP & Ph??? 2 MP, 2 MP', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (381, N'RAM', N'8 GB', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (382, N'B??? nh??? trong', N'128 GB', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (383, N'Chip x??? l??', N'Snapdra n 662 8 nh??n', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (384, N'SIM', N'2 Nano SIM', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (385, N'Lo???i pin', N'Li-Po', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (386, N'H??? tr??? s???c t???i ??a', N'33 W', 60);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (387, N'M??n h??nh
', N'AMOLED', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (388, N'H??? ??i???u h??nh', N'Android 11', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (389, N'Camera tr?????c', N'32 MP', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (391, N'Camera sau', N'Ch??nh 50 MP & Ph??? 50 MP, 13 MP, 3 MP', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (392, N'RAM', N'12 GB', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (393, N'B??? nh??? trong', N'256 GB', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (394, N'Chip x??? l??', N'Snapdra n 888 8 nh??n', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (395, N'SIM', N'2 Nano SIM', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (396, N'Lo???i pin', N'Li-Po', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (397, N'H??? tr??? s???c t???i ??a', N'65 W', 61);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (398, N'M??n h??nh', N'AMOLED', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (399, N'H??? ??i???u h??nh', N'Android 11', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (402, N'Camera tr?????c', N'32 MP', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (403, N'Camera sau', N'Ch??nh 64 MP & Ph??? 8 MP, 2 MP, 2 MP', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (404, N'RAM', N'8 GB', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (405, N'B??? nh??? trong', N'128 GB', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (406, N'Chip x??? l??', N'Snapdra n 765G 8 nh??n', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (407, N'SIM', N'
2 Nano SIM', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (408, N'Lo???i pin', N'Li-Po', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (409, N'H??? tr??? s???c t???i ??a', N'65 W', 62);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (410, N'M??n h??nh', N'OLED 1.65 inch', 63);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (411, N'Th???i l?????ng pin', N'Kho???ng 1.5 ng??y', 63);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (412, N'K???t n???i v???i h??? ??i???u h??nh', N'iOS 13 tr??? l??n', 63);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (413, N'M???t', N'Ion-X strengthened glass42 mm', 63);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (416, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, T??nh l?????ng calories ti??u th???', 63);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (417, N'H??ng', N'Apple', 63);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (418, N'M??n h??nh', N'OLED 1.78 inch', 64);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (419, N'Th???i l?????ng pin', N'Kho???ng 1.5 ng??y', 64);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (420, N'K???t n???i v???i h??? ??i???u h??nh', N'iOS 13 tr??? l??n', 64);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (421, N'M???t', N'K??nh c?????ng l???c Sapphire 44 mm', 64);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (422, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, T??nh l?????ng calories ti??u th???', 64);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (423, N'H??ng', N'Apple', 64);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (424, N'M??n h??nh', N'OLED 1.57 inch', 65);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (425, N'Th???i l?????ng pin', N'Kho???ng 1.5 ng??y', 65);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (426, N'K???t n???i v???i h??? ??i???u h??nh', N'iOS 14 tr??? l??n', 65);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (427, N'M???t', N'Ion-X strengthened glass 40 mm', 65);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (428, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 65);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (429, N'H??ng', N'Apple', 65);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (430, N'M??n h??nh', N'OLED 1.78 inch', 66);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (431, N'Th???i l?????ng pin', N'Kho???ng 1.5 ng??y', 66);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (432, N'K???t n???i v???i h??? ??i???u h??nh', N'iOS 14 tr??? l??n', 66);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (433, N'M???t', N'K??nh c?????ng l???c Sapphire 44 mm', 66);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (434, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 66);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (435, N'H??ng', N'Apple', 66);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (436, N'M??n h??nh', N'OLED 1.57 inch', 67);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (437, N'Th???i l?????ng pin', N'Kho???ng 1.5 ng??y', 67);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (438, N'K???t n???i v???i h??? ??i???u h??nh', N'iOS 14 tr??? l??n', 67);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (439, N'M???t', N' Ion-X strengthened glass 40 mm', 67);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (440, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 67);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (441, N'H??ng', N'Apple', 67);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (442, N'M??n h??nh', N'OLED 1.57 inch', 68);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (443, N'Th???i l?????ng pin', N'Kho???ng 1.5 ng??y', 68);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (444, N'K???t n???i v???i h??? ??i???u h??nh', N'iOS 14 tr??? l??n', 68);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (445, N'M???t', N'Ion-X strengthened glass 40 mm', 68);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (446, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 68);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (447, N'H??ng', N'Apple', 68);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (468, N'M??n h??nh', N'Kho???ng 10 ng??y', 69);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (473, N'H??? ??i???u h??nh', N'Android 11', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (474, N'Camera tr?????c', N'16 MP', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (475, N'Camera sau', N'Ch??nh 64 MP & Ph??? 2 MP, 2 MP', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (476, N'RAM', N'8 GB', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (477, N'B??? nh??? trong', N'128 GB', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (478, N'Chip x??? l?? ', N'MediaTek Helio G80 8 nh??n', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (479, N'SIM', N'2 Nano SIM', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (480, N'Lo???i pin', N'Li-Po', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (481, N'H??? tr??? s???c t???i ??a', N'33 W', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (482, N'M??n h??nh', N'IPS LCD', 39);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (483, N'Th???i l?????ng pin', N'Kho???ng 10 ng??y', 69);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (484, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 5.0 tr??? l??n, iOS 11 tr??? l??n', 69);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (485, N'M???t', N'M???t k??nh nh???a 45 mm', 69);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (486, N'T??nh n??ng cho s???c kh???e', N'Nh???c nh??? ??t v???n ?????ng, Theo d??i nh???p tim 24h', 69);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (488, N'H??ng', N'BeU', 69);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (489, N'M??n h??nh', N'IPS 1.3 inch', 70);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (490, N'Th???i l?????ng pin', N'Kho???ng 5 ng??y', 70);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (491, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 5.0 tr??? l??n, iOS 11 tr??? l??n', 70);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (492, N'M???t', N'M???t k??nh nh???a50 mm', 70);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (493, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???,', 70);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (494, N'H??ng', N'BeU', 70);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (495, N'M??n h??nh', N'IPS 1.4 inch', 72);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (496, N'Th???i l?????ng pin', N'Kho???ng 7 ng??y', 72);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (497, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 5.0 tr??? l??n, iOS 11 tr??? l??n', 72);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (498, N'M???t', N'M???t k??nh nh???a 51 mm', 72);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (499, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 72);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (500, N'H??ng', N'BeU', 72);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (501, N'M??n h??nh', N'IPS 1.32 inch', 73);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (502, N'Th???i l?????ng pin', N'Kho???ng 10 ng??y', 73);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (503, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 5.0 tr??? l??n, iOS 11 tr??? l??n', 73);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (504, N'M???t', N'M???t k??nh nh???a 46 mm', 73);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (505, N'T??nh n??ng cho s???c kh???e', N'Nh???c nh??? ??t v???n ?????ng, Theo d??i nh???p tim 24h', 73);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (506, N'H??ng', N'BeU', 73);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (507, N'M??n h??nh', N'TFT 1.2 inch', 74);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (508, N'Th???i l?????ng pin', N'Kho???ng 12 ng??y', 74);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (509, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 5.0 tr??? l??n, iOS 9 tr??? l??n', 74);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (510, N'M???t', N'M???t k??nh nh???a 55.5 mm', 74);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (511, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 74);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (512, N'H??ng', N'BeU', 74);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (513, N'M??n h??nh', N'IPS 1.54 inch', 75);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (514, N'Th???i l?????ng pin', N'Kho???ng 7 ng??y', 75);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (515, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 5.0 tr??? l??n, iOS 11 tr??? l??n', 75);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (516, N'M???t', N'M???t k??nh nh???a53 mm', 75);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (518, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 75);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (519, N'H??ng', N'BeU', 75);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (520, N'M??n h??nh', N'MIP 1.4 inch', 76);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (521, N'Th???i l?????ng pin', N'Kho???ng 50 ng??y, Kho???ng 70 gi??? khi s??? d???ng GPS', 76);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (523, N'K???t n???i v???i h??? ??i???u h??nh', N'Android, iOS', 76);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (524, N'M???t', N'K??nh c?????ng l???c 51 mm', 76);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (525, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i chu k?? kinh nguy???t', 76);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (526, N'H??ng', N'Garmin', 76);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (527, N'M??n h??nh', N'MIP 1.3 inch', 77);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (528, N'Th???i l?????ng pin', N'Kho???ng 16 ng??y, Kho???ng 40 gi??? khi s??? d???ng GPS', 77);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (529, N'K???t n???i v???i h??? ??i???u h??nh', N'Android, iOS', 77);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (530, N'M???t', N'K??nh c?????ng l???c  rilla Glass 347 mm', 77);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (531, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 77);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (532, N'H??ng', N'Garmin', 77);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (533, N'M??n h??nh', N'MIP 1.3 inch', 78);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (534, N'Th???i l?????ng pin', N' Kho???ng 13 ng??y, Kho???ng 36 gi??? khi s??? d???ng GPS', 78);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (535, N'K???t n???i v???i h??? ??i???u h??nh', N'Android, iOS', 78);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (536, N'M???t', N'K??nh c?????ng l???c  rilla Glass 347 mm', 78);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (537, N'T??nh n??ng cho s???c kh???e', N' Ch??? ????? luy???n t???p, Theo d??i chu k?? kinh nguy???t', 78);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (538, N'H??ng', N'Garmin', 78);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (539, N'M??n h??nh', N'MIP 1.3 inch', 79);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (540, N'Th???i l?????ng pin', N'Kho???ng 21 ng??y, Kho???ng 60 gi??? khi s??? d???ng GPS', 79);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (541, N'K???t n???i v???i h??? ??i???u h??nh', N'Android, iOS', 79);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (542, N'M???t', N'K??nh Sapphire 51 mm', 79);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (543, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i chu k?? kinh nguy???t', 79);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (544, N'H??ng', N'Garmin', 79);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (545, N'M??n h??nh', N'MIP 1.2 inch', 80);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (547, N'Th???i l?????ng pin', N'Kho???ng 10 gi??? khi s??? d???ng GPS v?? ??m Nh???c', 80);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (548, N'K???t n???i v???i h??? ??i???u h??nh', N'Android, iOS', 80);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (549, N'M???t', N'K??nh c?????ng l???c  rilla Glass 347 mm', 80);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (550, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i chu k?? kinh nguy???t', 80);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (551, N'H??ng', N'Garmin', 80);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (552, N'M??n h??nh', N'LCD 1 inch', 81);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (553, N'Th???i l?????ng pin', N'Kho???ng 5 ng??y', 81);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (554, N'K???t n???i v???i h??? ??i???u h??nh', N'Android, iOS', 81);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (555, N'M???t', N'K??nh c?????ng l???c  rilla Glass 335 mm', 81);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (556, N'T??nh n??ng cho s???c kh???e', N'Theo d??i gi???c ng???, ??o nh???p tim', 81);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (557, N'H??ng', N'Garmin', 81);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (558, N'M??n h??nh', N'TFT 1.3 inch', 82);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (559, N'Th???i l?????ng pin', N'Kho???ng 1 ng??y, Kho???ng 12 ti???ng (s??? d???ng li??n t???c)', 82);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (560, N'M???t', N'M???t k??nh nh???a 33 mm', 82);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (561, N'D??y', N'Silicone', 82);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (562, N'K???t n???i', N' Android 4.3 tr??? l??n, iOS 10 tr??? l??n', 82);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (563, N'Ng??n ng???', N'Ti???ng Vi???t', 82);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (564, N'Ti???n ??ch', N'B??o th???c, C?? nghe g???i, C??i ?????t v??ng an to??n', 82);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (565, N'H??ng', N'Kidcare', 82);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (566, N'M??n h??nh', N'TFT 1.3 inch', 83);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (567, N'Th???i l?????ng pin', N'Kho???ng 1 ng??y, Kho???ng 12 ti???ng (s??? d???ng li??n t???c)', 83);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (568, N'M???t', N'M???t k??nh nh???a 33 mm', 83);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (569, N'K???t n???i', N'Android 4.3 tr??? l??n, iOS 10 tr??? l??n', 83);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (570, N'Ti???n ??ch kh??c', N'Ch???p ???nh, C?? nghe g???i, ?????nh v??? tr??? em', 83);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (571, N'H??ng', N'Kidcare', 83);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (572, N'M??n h??nh', N'TFT 1.44 inch', 84);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (574, N'Th???i l?????ng pin', N' Kho???ng 1.5 ng??y, Kho???ng 12 ti???ng', 84);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (575, N'M???t', N'M???t k??nh nh???a 36 mm', 84);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (576, N'K???t n???i', N'Android 4.3 tr??? l??n, iOS 10 tr??? l??n', 84);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (578, N'Ti???n ??ch kh??c', N'Cu???c g???i kh???n c???p SOS, Ch???p ???nh', 84);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (579, N'H??ng', N'Kidcare', 84);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (580, N'M??n h??nh', N'TFT 1.3 inch', 85);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (581, N'Th???i l?????ng pin', N'Kho???ng 1.5 ng??y, Kho???ng 12 ti???ng', 85);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (582, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 4.3 tr??? l??n, iOS 10 tr??? l??n', 85);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (583, N'M???t', N'K??nh c?????ng l???c 41.5 mm', 85);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (584, N'T??nh n??ng cho s???c kh???e', N'?????m s??? b?????c ch??n', 85);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (585, N'H??ng', N'Kidcare', 85);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (586, N'M??n h??nh', N'TFT 1.3 inch', 86);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (587, N'Th???i l?????ng pin', N'Kho???ng 1.5 ng??y, Kho???ng 12 ti???ng', 86);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (588, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 4.3 tr??? l??n, iOS 10 tr??? l??n', 86);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (589, N'M???t', N'K??nh c?????ng l???c 41.5 mm', 86);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (590, N'T??nh n??ng cho s???c kh???e', N'T??nh n??ng cho s???c kh???e', 86);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (591, N'H??ng', N'Kidcare', 86);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (592, N'M??n h??nh', N'TFT 1.4 inch', 87);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (593, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 4.3 tr??? l??n, iOS 10 tr??? l??n', 87);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (594, N'M???t', N'K??nh c?????ng l???c 43.4 mm', 87);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (595, N'T??nh n??ng cho s???c kh???e', N'?????m s??? b?????c ch??n', 87);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (597, N'H??ng', N'Kidcare', 87);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (598, N'M??n h??nh', N'AMOLED 1.1 inch', 88);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (599, N'Th???i l?????ng pin', N'Kho???ng 12 ng??y', 88);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (600, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 6.0 tr??? l??n, iOS 10 tr??? l??n', 88);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (601, N'T??nh n??ng cho s???c kh???e', N'Theo d??i gi???c ng???, ??o nh???p tim', 88);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (602, N'Ti???n ??ch', N'T??? ch???i cu???c g???i, ??i???u khi???n ch??i nh???c', 88);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (603, N'M??n h??nh', N'AMOLED 1.6 inch', 89);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (604, N'Th???i l?????ng pin', N'Kho???ng 14 ng??y', 89);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (605, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 6.0 tr??? l??n, iOS 12 tr??? l??n', 89);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (606, N'M???t', N'K??nh c?????ng l???c 41 mm', 89);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (607, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 89);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (608, N'M??n h??nh', N'AMOLED 1.6 inch', 90);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (609, N'Th???i l?????ng pin', N'Kho???ng 14 ng??y', 90);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (610, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 6.0 tr??? l??n, iOS 12 tr??? l??n', 90);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (611, N'M???t', N'K??nh c?????ng l???c 41 mm', 90);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (612, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 90);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (614, N'H??ng', N'Oppo Watch 46mm', 91);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (615, N'M??n h??nh', N'AMOLED 1.91 inch', 91);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (616, N'Th???i l?????ng pin', N'Kho???ng 21 ng??y', 91);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (617, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 6.0 tr??? l??n, iOS 12 tr??? l??n', 91);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (618, N'M???t', N'K??nh c?????ng l???c 46 mm', 91);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (619, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 91);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (620, N'H??ng', N'Watch 46mm', 92);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (621, N'M??n h??nh', N'AMOLED 1.91 inch', 92);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (622, N'Th???i l?????ng pin', N'Kho???ng 21 ng??y', 92);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (623, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 6.0 tr??? l??n, iOS 12 tr??? l??n', 92);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (624, N'M???t', N'K??nh c?????ng l???c 46 mm', 92);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (625, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 92);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (626, N'M??n h??nh', N'AMOLED 1.91 inch', 93);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (627, N'Th???i l?????ng pin', N'Kho???ng 21 ng??y', 93);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (628, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 6.0 tr??? l??n, iOS 12 tr??? l??n', 93);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (629, N'M???t', N'K??nh c?????ng l???c 46 mm', 93);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (631, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 93);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (632, N'M??n h??nh', N'SUPER AMOLED 1.4 inch', 95);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (633, N'Th???i l?????ng pin', N'Kho???ng 2 ng??y', 95);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (634, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 5.0 tr??? l??n, iOS 9 tr??? l??n', 95);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (635, N'M???t', N'K??nh c?????ng l???c  rrilla Glass Dx+ 45 mm', 95);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (636, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 95);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (637, N'H??ng', N'Samsung', 95);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (638, N'M??n h??nh', N'SUPER AMOLED 1.4 inch', 95);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (640, N'M??n h??nh', N'SUPER AMOLED 1.4 inch', 97);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (641, N'Th???i l?????ng pin', N'Kho???ng 2 ng??y', 97);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (642, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 5.0 tr??? l??n, iOS 9 tr??? l??n', 97);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (643, N'M???t', N'K??nh c?????ng l???c  rrilla Glass Dx+ 45 mm', 97);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (644, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 97);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (645, N'H??ng', N'Samsung', 97);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (646, N'M??n h??nh', N'SUPER AMOLED 1.4 inch', 98);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (647, N'Th???i l?????ng pin', N'Kho???ng 2 ng??y', 98);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (648, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 5.0 tr??? l??n, iOS 9 tr??? l??n', 98);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (649, N'M???t', N'K??nh c?????ng l???c  rrilla Glass Dx+ 45 mm', 98);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (650, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 98);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (651, N'H??ng', N'Samsung', 98);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (652, N'M??n h??nh', N'SUPER AMOLED 1.19 inch', 99);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (653, N'Th???i l?????ng pin', N'Kho???ng 1.5 ng??y', 99);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (654, N'K???t n???i v???i h??? ??i???u h??nh', N'Android d??ng  ogle Mobile Service', 99);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (655, N'M???t', N'K??nh c?????ng l???c  rrilla Glass Dx+ 42 mm', 99);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (656, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 99);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (657, N'H??ng', N'Samsung', 99);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (658, N'M??n h??nh', N'SUPER AMOLED 1.36 inch', 100);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (659, N'Th???i l?????ng pin', N'Kho???ng 1.5 ng??y', 100);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (660, N'K???t n???i v???i h??? ??i???u h??nh', N'Android d??ng  ogle Mobile Service', 100);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (661, N'M???t', N'K??nh c?????ng l???c  rrilla Glass Dx+ 46 mm', 100);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (662, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 100);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (663, N'H??ng', N'Samsung', 100);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (664, N'M??n h??nh', N'SUPER AMOLED 1.4 inch', 101);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (665, N'Th???i l?????ng pin', N'Kho???ng 1.5 ng??y', 101);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (666, N'K???t n???i v???i h??? ??i???u h??nh', N'Android 5.0iOS 10 tr??? l??n', 101);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (667, N'M???t', N'K??nh c?????ng l???c  rrilla Glass Dx+ 44 mm', 101);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (668, N'T??nh n??ng cho s???c kh???e', N'Ch??? ????? luy???n t???p, Theo d??i gi???c ng???', 101);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (669, N'H??ng', N'Samsung', 101);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (670, N'M??n h??nh', N'15.6 inch', 102);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (671, N'RAM', N'8 GB', 102);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (672, N'??? c???ng', N'SSD 512 GB NVMe PCIe', 102);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (673, N'Card m??n h??nh', N'Card r???i - NVIDIA GeForce GTX 1650Ti 4 GB', 102);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (674, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 102);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (675, N'K???t n???i kh??ng d??y', N'
Bluetooth 5.0Wi-Fi 6 (802.11ax)', 102);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (676, N'Ch???t li???u', N'V??? nh???a', 102);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (677, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 102);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (678, N'M??n h??nh', N'15.6 inch', 103);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (680, N'RAM', N'4 GB', 103);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (681, N'??? c???ng', N'SSD 256 GB NVMe PCIeH??? tr??? khe c???m HDD SATA', 103);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (682, N'Card m??n h??nh', N'
Card t??ch h???p - Intel UHD Graphics', 103);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (683, N'C???ng giao ti???p', N'HDMI', 103);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (684, N'K???t n???i kh??ng d??y', N'
Bluetooth 5.0Wi-Fi 802.11 a/b/g/n/ac', 103);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (685, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 103);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (686, N'M??n h??nh', N'14 inch', 104);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (687, N'RAM', N'16 GB', 104);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (689, N'??? c???ng', N'SSD 512 GB NVMe PCIe', 104);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (690, N'Card m??n h??nh', N'
Card t??ch h???p - Intel Iris Xe Graphics', 104);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (691, N'C???ng giao ti???p', N'Thunderbolt 4 USB-C', 104);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (692, N'K???t n???i kh??ng d??y', N'Wi-Fi 6 (802.11ax)Bluetooth 5.1', 104);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (693, N'Ch???t li???u', N'V??? kim lo???i', 104);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (694, N'H??? ??i???u h??nh', N'
Windows 10 Home SL', 104);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (695, N'M??n h??nh', N'15.6 inch', 105);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (696, N'RAM', N'8 GB', 105);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (697, N'??? c???ng', N'SSD 256 GB NVMe PCIe', 105);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (698, N'Card m??n h??nh', N'Card r???i - NVIDIA GeForce GTX 1650 4 GB', 105);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (699, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 105);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (700, N'K???t n???i kh??ng d??y', N'
Bluetooth 5.0Wi-Fi 6 (802.11ax)', 105);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (701, N'Ch???t li???u', N'V??? nh???a', 105);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (702, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 105);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (703, N'M??n h??nh', N'15.6 inch', 106);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (704, N'RAM', N'8 GB', 106);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (705, N'??? c???ng', N'SSD 512 GB NVMe PCIe', 106);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (706, N'Card m??n h??nh', N'Card r???i - NVIDIA GeForce RTX3050Ti, 4 GB', 106);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (707, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 106);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (709, N'K???t n???i kh??ng d??y', N'Wi-Fi 6 (802.11ax)Bluetooth 5.1', 106);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (710, N'Ch???t li???u', N'V??? nh???a', 106);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (711, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 106);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (713, N'M??n h??nh', N'15.6 inch', 108);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (715, N'RAM', N'8 GB', 108);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (716, N'??? c???ng', N'SSD 512 GB NVMe PCIe', 108);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (717, N'Card m??n h??nh', N'Card r???i - NVIDIA GeForce GTX 1650 4 GB', 108);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (718, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 108);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (719, N'K???t n???i kh??ng d??y', N'
Bluetooth 5.0Wi-Fi 6 (802.11ax)', 108);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (720, N'Ch???t li???u', N'V??? nh???a - n???p l??ng b???ng kim lo???i', 108);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (721, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 108);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (722, N'M??n h??nh', N'15.6 inch', 109);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (723, N'RAM', N'8 GB', 109);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (724, N'??? c???ng', N'SSD 512 GB NVMe PCIeH??? tr??? khe c???m HDD SATA', 109);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (725, N'Card m??n h??nh', N'Card t??ch h???p - Intel UHD Graphics', 109);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (726, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 109);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (727, N'K???t n???i kh??ng d??y', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 109);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (728, N'Ch???t li???u', N'
V??? nh???a - n???p l??ng b???ng kim lo???i', 109);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (729, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 109);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (730, N'M??n h??nh', N'13.3 inch', 110);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (731, N'RAM', N'16 GB', 110);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (732, N'??? c???ng', N'SSD 1 TB M.2 PCIe', 110);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (733, N'Card m??n h??nh', N'Card t??ch h???p - Intel Iris Xe Graphics', 110);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (734, N'C???ng giao ti???p', N'2 x Thunderbolt 4 USB-C', 110);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (735, N'K???t n???i kh??ng d??y', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 110);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (736, N'Ch???t li???u', N'V??? kim lo???i nguy??n kh???i', 110);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (738, N'H??? ??i???u h??nh', N'Windows 10 Home SL + Office Home', 110);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (739, N'M??n h??nh', N'15.6 inch', 111);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (740, N'RAM', N'16 GB', 111);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (741, N'??? c???ng', N'
SSD 512 GB NVMe PCIe', 111);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (742, N'Card m??n h??nh', N'Card r???i - NVIDIA GeForce RTX 3060, 6 GB', 111);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (743, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 111);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (744, N'K???t n???i kh??ng d??y', N'
Wi-Fi 6 (802.11ax)Bluetooth 5.1', 111);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (745, N'Ch???t li???u', N'V??? nh???a - n???p l??ng b???ng kim lo???i', 111);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (746, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 111);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (747, N'M??n h??nh', N'15.6 inch', 112);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (748, N'RAM', N'8 GB', 112);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (749, N'??? c???ng', N'
SSD 512 GB NVMe PCIeH??? tr??? khe c???m HDD SATA', 112);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (750, N'Card m??n h??nh', N'Card r???i - NVIDIA GeForce MX330, 2 GB', 112);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (751, N'
C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 112);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (752, N'K???t n???i kh??ng d??y', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 112);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (753, N'Ch???t li???u', N'V??? nh???a - n???p l??ng b???ng kim lo???i', 112);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (754, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 112);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (755, N'M??n h??nh', N'15.6 inch', 113);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (756, N'RAM', N'16 GB', 113);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (758, N'??? c???ng', N'SSD 512 GB NVMe PCIe', 113);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (759, N'Card m??n h??nh', N'Card r???i - NVIDIA GeForce GTX 1660Ti, 6 GB', 113);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (760, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 113);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (761, N'K???t n???i kh??ng d??y', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 113);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (762, N'Ch???t li???u', N'V??? nh???a', 113);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (763, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 113);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (764, N'
M??n h??nh', N'15.6 inch', 114);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (765, N'RAM', N'16 GB', 114);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (766, N'??? c???ng', N'
SSD 256 GB NVMe PCIe', 114);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (767, N'Card m??n h??nh', N'
Card r???i - NVIDIA GeForce GTX 1650Ti 4 GB', 114);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (768, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 114);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (769, N'K???t n???i kh??ng d??y', N'
Bluetooth 5.0Wi-Fi 802.11 a/b/g/n/ac', 114);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (770, N'Ch???t li???u', N'V??? nh???a', 114);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (771, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 114);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (772, N'M??n h??nh', N'13.4 inch', 115);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (773, N'RAM', N'8 GB', 115);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (774, N'??? c???ng', N'SSD 256 GB NVMe PCIe', 115);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (775, N'Card m??n h??nh', N'Card t??ch h???p - Intel Iris Xe Graphics', 115);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (776, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm2 x Thunderbolt 4 USB-C', 115);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (777, N'K???t n???i kh??ng d??y', N'Wi-Fi 6 (802.11ax)Bluetooth 5.1', 115);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (778, N'Ch???t li???u', N'V??? kim lo???i nguy??n kh???i', 115);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (779, N'H??? ??i???u h??nh', N'
Windows 10 Home SL', 115);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (780, N'M??n h??nh', N'
15.6 inch', 116);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (781, N'RAM', N'8 GB', 116);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (782, N'??? c???ng', N'SSD 512 GB NVMe PCIe', 116);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (783, N'Card m??n h??nh', N'
Card r???i - NVIDIA GeForce GTX 1660Ti, 6 GB', 116);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (784, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 116);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (785, N'K???t n???i kh??ng d??y', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 116);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (786, N'Ch???t li???u', N'V??? nh???a', 116);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (787, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 116);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (788, N'
M??n h??nh', N'15.6 inch', 117);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (789, N'RAM', N'8 GB', 117);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (790, N'??? c???ng', N'SSD 512 GB NVMe PCIe', 117);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (791, N'Card m??n h??nh', N'Card r???i - NVIDIA GeForce GTX 1650Ti 4 GB', 117);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (792, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 117);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (793, N'K???t n???i kh??ng d??y', N'Wi-Fi 6 (802.11ax)Bluetooth 5.1', 117);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (794, N'Ch???t li???u', N'V??? kim lo???i', 117);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (795, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 117);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (796, N'M??n h??nh', N'15.6 inch', 118);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (797, N'RAM', N'8 GB', 118);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (798, N'??? c???ng', N'SSD 512 GB NVMe PCIe', 118);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (799, N'Card m??n h??nh', N'Card t??ch h???p - Intel Iris Xe Graphics', 118);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (800, N'C???ng giao ti???p', N'2 x USB 3.1', 118);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (801, N'K???t n???i kh??ng d??y', N'Bluetooth 5.0Wi-Fi 802.11 a/b/g/n/ac', 118);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (802, N'Ch???t li???u', N'N???p l??ng v?? chi???u ngh??? tay b???ng kim lo???i', 118);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (803, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 118);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (805, N'M??n h??nh', N'15.6 inch', 119);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (806, N'RAM', N'8 GB', 119);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (807, N'??? c???ng', N'SSD 512 GB NVMe PCIe', 119);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (808, N'Card m??n h??nh', N'Card t??ch h???p - Intel Iris Xe Graphics', 119);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (809, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 119);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (810, N'K???t n???i kh??ng d??y', N'Bluetooth 5.0Wi-Fi 802.11 a/b/g/n/ac', 119);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (811, N'Ch???t li???u', N'V??? nh???a', 119);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (812, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 119);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (813, N'M??n h??nh', N'15.6 inch', 120);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (814, N'RAM', N'16 GB', 120);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (815, N'??? c???ng', N'SSD 1 TB M.2 PCIe', 120);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (818, N'
Card m??n h??nh', N'Card r???i - NVIDIA GeForce RTX2070', 120);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (819, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 120);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (820, N'K???t n???i kh??ng d??y', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 120);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (821, N'Ch???t li???u', N'Kim loa??i va?? polycarbonate', 120);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (822, N'H??? ??i???u h??nh', N'
Windows 10 Home SL + Office Home', 120);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (823, N'M??n h??nh', N'14 inch', 121);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (824, N'RAM', N'16 GB', 121);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (825, N'??? c???ng', N'SSD 512 GB NVMe PCIe', 121);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (826, N'Card m??n h??nh', N'Card t??ch h???p - Intel Iris Xe Graphics', 121);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (827, N'C???ng giao ti???p', N'
Jack tai nghe 3.5 mm', 121);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (828, N'K???t n???i kh??ng d??y', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 121);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (829, N'Ch???t li???u', N'V??? kim lo???i nguy??n kh???i', 121);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (830, N'H??? ??i???u h??nh', N'Windows 10 Pro', 121);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (831, N'M??n h??nh', N'13.3 inch', 122);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (832, N'RAM', N'8 GB', 122);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (833, N'??? c???ng', N'SSD 512 GB NVMe PCIe', 122);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (834, N'Card m??n h??nh', N'
Card t??ch h???p - Intel Iris Xe Graphics', 122);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (835, N'C???ng giao ti???p', N'
Thunderbolt 4 USB-C2 x USB 3.1', 122);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (836, N'K???t n???i kh??ng d??y', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 122);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (837, N'Ch???t li???u', N'V??? kim lo???i nguy??n kh???i', 122);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (838, N'H??? ??i???u h??nh', N'Windows 10 Home SL + Office Home', 122);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (839, N'M??n h??nh', N'13.3 inch', 1010);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (840, N'RAM', N'8 GB', 1010);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (841, N'??? c???ng', N'SSD 256 GB', 1010);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (842, N'Card m??n h??nh', N'Card t??ch h???p - 8 nh??n GPU', 1010);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (843, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm2 x Thunderbolt 3 ', 1010);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (844, N'K???t n???i kh??ng d??y', N'Bluetooth 5.0Wi-Fi 6', 1010);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (845, N'Ch???t li???u', N'V??? kim lo???i nguy??n kh???i', 1010);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (846, N'H??? ??i???u h??nh', N'Mac OS', 1010);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (847, N'M??n h??nh', N'13.3 inch', 1011);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (848, N'RAM', N'8 GB', 1011);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (849, N'??? c???ng', N'SSD 256 GB', 1011);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (850, N'Card m??n h??nh', N'Card t??ch h???p - 7 nh??n GPU', 1011);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (851, N'C???ng giao ti???p', N'2 x Thunderbolt 3', 1011);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (852, N'
K???t n???i kh??ng d??y', N'Bluetooth 5.0Wi-Fi 6', 1011);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (853, N'Ch???t li???u', N'V??? kim lo???i nguy??n kh???i', 1011);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (854, N'H??? ??i???u h??nh', N'Mac OS', 1011);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (855, N'M??n h??nh', N'13.3 inch', 1013);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (856, N'RAM', N'8 GB', 1013);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (857, N'??? c???ng', N'SSD 512 GB', 1013);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (858, N'Card m??n h??nh', N'Card t??ch h???p - 8 nh??n GPU', 1013);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (859, N'C???ng giao ti???p', N'2 x Thunderbolt 3 (USB-C)', 1013);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (860, N'K???t n???i kh??ng d??y', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 1013);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (862, N'Ch???t li???u', N'V??? kim lo???i nguy??n kh???i', 1013);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (863, N'H??? ??i???u h??nh', N'Mac OS', 1013);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (864, N'M??n h??nh', N'13.3 inch', 1014);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (865, N'RAM', N'8 GB', 1014);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (866, N'??? c???ng', N'SSD 512 GB', 1014);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (867, N'
Card m??n h??nh', N'Card t??ch h???p - 8 nh??n GPU', 1014);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (868, N'C???ng giao ti???p', N'2 x Thunderbolt 3 (USB-C)Jack tai nghe 3.5 mm', 1014);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (869, N'K???t n???i kh??ng d??y', N'Bluetooth 5.0Wi-Fi 6 (802.11ax)', 1014);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (870, N'Ch???t li???u', N'V??? kim lo???i nguy??n kh???i', 1014);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (871, N'H??? ??i???u h??nh', N'Mac OS', 1014);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (872, N'M??n h??nh', N'13.3 inch', 1015);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (873, N'RAM', N'16 GB', 1015);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (874, N'??? c???ng', N'SSD 1 TB', 1015);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (875, N'Card m??n h??nh', N'Card t??ch h???p - 8 nh??n GPU', 1015);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (876, N'C???ng giao ti???p', N'2 x Thunderbolt 3 (USB-C)', 1015);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (877, N'K???t n???i kh??ng d??y', N'
Bluetooth 5.0Wi-Fi 6 (802.11ax)', 1015);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (878, N'Ch???t li???u', N'V??? kim lo???i nguy??n kh???i', 1015);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (879, N'H??? ??i???u h??nh', N'Mac OS', 1015);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (880, N'M??n h??nh', N'15.6 inch', 1016);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (881, N'RAM', N'16 GB', 1016);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (882, N'??? c???ng', N'SSD 512 GB NVMe PCIe', 1016);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (883, N'Card m??n h??nh', N'Card r???i - NVIDIA GeForce RTX 3060 Max-Q, 6 GB', 1016);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (884, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 1016);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (885, N'K???t n???i kh??ng d??y', N'Wi-Fi 6 (802.11ax)Bluetooth 5.1', 1016);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (886, N'Ch???t li???u', N'V??? nh???a - n???p l??ng b???ng kim lo???i', 1016);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (887, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 1016);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (888, N'M??n h??nh', N'15.6 inch', 1017);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (889, N'RAM', N'8 GB', 1017);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (890, N'??? c???ng', N'SSD 512 GB NVMe PCIe', 1017);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (891, N'Card m??n h??nh', N'Card r???i - NVIDIA GeForce RTX3050, 4 GB', 1017);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (892, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 1017);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (893, N'K???t n???i kh??ng d??y', N'Bluetooth 5.2Wi-Fi 6 (802.11ax)', 1017);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (894, N'Ch???t li???u', N'V??? nh???a', 1017);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (895, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 1017);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (896, N'M??n h??nh', N'17.3 inch', 1018);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (897, N'RAM', N'16 GB', 1018);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (898, N'??? c???ng', N'SSD 1 TB M.2 PCIe', 1018);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (899, N'Card m??n h??nh', N'
Card r???i - NVIDIA GeForce RTX 3070, 8 GB', 1018);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (900, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 1018);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (901, N'K???t n???i kh??ng d??y', N'Bluetooth 5.2Wi-Fi 6 (802.11ax)', 1018);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (902, N'Ch???t li???u', N'V??? kim lo???i', 1018);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (903, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 1018);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (904, N'M??n h??nh', N'13.4 inch', 1019);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (905, N'RAM', N'16 GB', 1019);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (907, N'??? c???ng', N'SSD 1 TB NVMe PCIe Gen4x4', 1019);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (908, N'Card m??n h??nh', N'Card t??ch h???p - Intel Iris Xe Graphics', 1019);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (909, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 1019);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (910, N'K???t n???i kh??ng d??y', N'Bluetooth 5.2Wi-Fi 6E (802.11ax)', 1019);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (911, N'Ch???t li???u', N'
V??? kim lo???i nguy??n kh???i', 1019);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (912, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 1019);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (913, N'M??n h??nh', N'15.6 inch', 1020);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (914, N'RAM', N'16 GB', 1020);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (915, N'??? c???ng', N'
SSD 512 GB NVMe PCIeH??? tr??? khe c???m HDD SATA', 1020);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (916, N'Card m??n h??nh', N'
Card r???i - NVIDIA GeForce GTX 1660Ti, 6 GB', 1020);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (917, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 1020);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (918, N'K???t n???i kh??ng d??y', N'
Wi-Fi 6 (802.11ax)Bluetooth 5.1', 1020);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (919, N'Ch???t li???u:
', N'V??? nh???a', 1020);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (920, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 1020);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (921, N'M??n h??nh', N'15.6 inch', 1020);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (922, N'M??n h??nh', N'15.6 inch', 1021);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (923, N'RAM', N'16 GB', 1021);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (924, N'??? c???ng', N'SSD 512 GB NVMe PCIe', 1021);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (926, N'Card m??n h??nh', N'Card r???i - NVIDIA GeForce RTX 3060 Max-Q, 6 GB', 1021);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (927, N'
C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 1021);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (928, N'K???t n???i kh??ng d??y', N'
Wi-Fi 6 (802.11ax)Bluetooth 5.1', 1021);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (929, N'Ch???t li???u', N'V??? nh???a', 1021);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (930, N'H??? ??i???u h??nh', N'Windows 10 Home SL', 1021);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (931, N'M??n h??nh', N'15.6 inch', 1022);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (932, N'RAM', N'8 GB', 1022);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (933, N'??? c???ng', N'SSD 512 GB NVMe PCIeH??? tr??? khe c???m HDD SATA', 1022);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (934, N'Card m??n h??nh', N'
Card r???i - NVIDIA GeForce GTX 1650 4 GB', 1022);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (935, N'C???ng giao ti???p', N'Jack tai nghe 3.5 mm', 1022);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (936, N'K???t n???i kh??ng d??y', N'Wi-Fi 6 (802.11ax)Bluetooth 5.1', 1022);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (938, N'Ch???t li???u', N'N???p l??ng v?? chi???u ngh??? tay b???ng kim lo???i', 1022);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (939, N'H??? ??i???u h??nh', N'
Windows 10 Home SL', 1022);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (940, N'M??n h??nh', N'10.1"IPS LCD', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (941, N'H??? ??i???u h??nh', N'Android 10 (Kh??ng c??  ogle)', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (942, N'Chip', N'Kirin 710A', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (943, N'RAM', N'3 GB', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (944, N'B??? nh??? trong', N'64 GB', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (945, N'K???t n???i', N'H??? tr??? 4GC?? nghe g???i', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (946, N'SIM', N'1 Nano SIM', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (947, N'Camera sau', N'5 MP', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (948, N'Camera tr?????c', N'2 MP', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (949, N'Pin, S???c', N'5100 mAh10 W', 1023);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (950, N'M??n h??nh', N'10.4"IPS LCD', 1024);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (951, N'H??? ??i???u h??nh', N'Android 10 (Kh??ng c??  ogle)', 1024);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (952, N'Chip', N'Kirin 810', 1024);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (953, N'RAM', N'4 GB', 1024);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (954, N'B??? nh??? trong', N'64 GB', 1024);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (955, N'Camera sau', N'8 MP', 1024);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (956, N'Camera tr?????c', N'8 MP', 1024);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (957, N'Pin, S???c', N'7250 mAh10 W', 1024);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (958, N'M??n h??nh', N'10.4"IPS LCD', 1025);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (959, N'H??? ??i???u h??nh', N'Android 10 (Kh??ng c??  ogle)', 1025);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (961, N'Chip', N'Kirin 820 8 nh??n', 1025);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (962, N'RAM', N'4 GB', 1025);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (963, N'B??? nh??? trong', N'128 GB', 1025);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (964, N'Camera sau', N'8 MP', 1025);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (965, N'Camera tr?????c', N'8 MP', 1025);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (966, N'Pin, S???c', N'7250 mAh22.5 W', 1025);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (967, N'M??n h??nh', N'8"IPS LCD', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (968, N'H??? ??i???u h??nh', N'Android 10', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (969, N'Chip', N'MediaTek MT8768', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (970, N'RAM', N'2 GB', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (971, N'B??? nh??? trong', N'32 GB', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (972, N'K???t n???i', N'H??? tr??? 4GC?? nghe g???i', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (973, N'SIM', N'1 Nano SIM', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (975, N'Camera sau', N'5 MP', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (976, N'Camera tr?????c', N'2 MP', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (977, N'Pin, S???c', N'5100 mAh5 W', 1026);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (978, N'M??n h??nh', N'12.9"Liquid Retina XDR mini-LED LCD', 1027);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (979, N'H??? ??i???u h??nh', N'iPadOS 14', 1027);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (980, N'Chip', N'Apple M1 8 nh??n', 1027);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (981, N'RAM', N'8 GB', 1027);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (982, N'B??? nh??? trong', N'256 GB', 1027);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (983, N'K???t n???i', N'5GNghe g???i qua FaceTime', 1027);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (984, N'SIM', N'1 Nano SIM ho???c 1 eSIM', 1027);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (985, N'Camera sau', N'Ch??nh 12 MP & Ph??? 10 MP, TOF 3D LiDAR', 1027);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (986, N'Camera tr?????c', N'12 MP', 1027);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (987, N'Pin, S???c', N'40.88 Wh (~ 10.835 mAh)20 W', 1027);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (988, N'M??n h??nh', N'11"Liquid Retina', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (989, N'H??? ??i???u h??nh', N'iPadOS 14', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (990, N'Chip', N'Apple M1 8 nh??n', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (991, N'RAM', N'8 GB', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (992, N'B??? nh??? trong', N'256 GB', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (993, N'K???t n???i', N'5GNghe g???i qua FaceTime', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (994, N'SIM', N'1 Nano SIM ho???c 1 eSIM', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (995, N'Camera sau', N'Ch??nh 12 MP & Ph??? 10 MP, TOF 3D LiDAR', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (997, N'Camera tr?????c', N'12 MP', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (998, N'Pin, S???c', N'28.65 Wh (~ 7538 mAh)20 W', 1028);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (999, N'M??n h??nh', N'12.9"Liquid Retina', 1029);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1000, N'H??? ??i???u h??nh', N'iPadOS 14', 1029);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1001, N'Chip', N'Apple A12Z Bionic', 1029);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1002, N'RAM', N'6 GB', 1029);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1003, N'B??? nh??? trong', N'128 GB', 1029);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1004, N'K???t n???i', N'Nghe g???i qua FaceTime', 1029);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1005, N'Camera sau', N'Ch??nh 12 MP & Ph??? 10 MP, TOF 3D LiDAR', 1029);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1006, N'Camera tr?????c', N'7 MP', 1029);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1007, N'Pin, S???c:', N'36.71 Wh (~ 9720 mAh)20 W', 1029);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1008, N'M??n h??nh', N'11"Liquid Retina', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1009, N'H??? ??i???u h??nh', N'iPadOS 14', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1010, N'Chip', N'Apple A12Z Bionic', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1011, N'RAM', N'6 GB', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1012, N'B??? nh??? trong', N'128 GB', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1013, N'K???t n???i', N'H??? tr??? 4GNghe g???i qua FaceTime', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1014, N'SIM', N'1 Nano SIM ho???c 1 eSIM', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1015, N'Camera sau', N'Ch??nh 12 MP & Ph??? 10 MP, TOF 3D LiDAR', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1016, N'Camera tr?????c', N'7 MP', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1017, N'Pin, S???c', N'28.65 Wh (~ 7600 mAh)20 W', 1030);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1018, N'M??n h??nh', N'10.9"Liquid Retina', 1031);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1019, N'H??? ??i???u h??nh', N'iPadOS 14', 1031);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1020, N'Chip', N'Apple A14 Bionic', 1031);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1021, N'RAM', N'4 GB', 1031);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1022, N'B??? nh??? trong', N'256 GB', 1031);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1023, N'K???t n???i', N'Nghe g???i qua FaceTime', 1031);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1024, N'Camera sau', N'12 MP', 1031);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1025, N'Camera tr?????c', N'7 MP', 1031);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1026, N'Pin, S???c', N'28.65 Wh (~ 7600 mAh)20 W', 1031);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1028, N'M??n h??nh', N'7.9"LED-backlit IPS LCD', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1029, N'H??? ??i???u h??nh', N'iPadOS 14', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1031, N'Chip', N'Apple A12 Bionic', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1032, N'RAM', N'3 GB', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1033, N'B??? nh??? trong', N'64 GB', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1034, N'K???t n???i', N'H??? tr??? 4GNghe g???i qua FaceTime', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1035, N'SIM', N'1 Nano SIM & 1 eSIM', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1036, N'Camera sau', N'8 MP', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1038, N'Camera tr?????c', N'7 MP', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1039, N'Pin, S???c', N'19.1 Wh (~ 5124 mAh)10 W', 1032);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1041, N'M??n h??nh', N'10.2"Retina IPS LCD', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1042, N'H??? ??i???u h??nh', N'iPadOS 14', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1043, N'Chip', N'Apple A12 Bionic', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1044, N'RAM', N'3 GB', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1045, N'B??? nh??? trong', N'128 GB', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1046, N'K???t n???i', N'H??? tr??? 4GNghe g???i qua FaceTime', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1047, N'SIM', N'1 Nano SIM ho???c 1 eSIM', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1048, N'Camera sau', N'8 MP', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1049, N'Camera tr?????c', N'1.2 MP', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1050, N'Pin, S???c', N'32.4 Wh (~ 8600 mAh)', 1034);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1052, N'M??n h??nh', N'10.3"IPS LCD', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1053, N'H??? ??i???u h??nh', N'Android 9', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1054, N'Chip', N'MediaTek Helio P22T', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1055, N'RAM', N'4 GB', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1056, N'B??? nh??? trong', N'64 GB', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1057, N'K???t n???i', N'H??? tr??? 4G', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1058, N'SIM', N'1 Nano SIM', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1059, N'Camera sau', N'8 MP', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1060, N'Camera tr?????c', N'5 MP', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1061, N'Pin, S???c', N'5000 mAh10 W', 1035);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1062, N'M??n h??nh', N'10"IPS LCD', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1063, N'H??? ??i???u h??nh', N'Android 10', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1064, N'Chip', N'MediaTek Helio P22T', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1065, N'RAM', N'2 GB', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1066, N'B??? nh??? trong', N'32 GB', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1067, N'K???t n???i', N'H??? tr??? 4G', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1068, N'SIM', N'1 Nano SIM', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1069, N'Camera sau', N'8 MP', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1070, N'Camera tr?????c', N'5 MP', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1071, N'Pin, S???c', N'5000 mAh10 W', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1072, N'M??n h??nh', N'8"IPS LCD', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1073, N'H??? ??i???u h??nh', N'Android 9', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1074, N'Chip', N'MediaTek Helio A22', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1075, N'RAM', N'3 GB', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1076, N'B??? nh??? trong', N'32 GB', 1036);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1077, N'B??? nh??? trong', N'32 GB', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1078, N'K???t n???i', N'H??? tr??? 4GC?? nghe g???i', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1079, N'SIM', N'1 Nano SIM', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1080, N'Camera sau', N'5 MP', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1081, N'Camera tr?????c', N'2 MP', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1082, N'Pin, S???c', N'5000 mAh5 W', 1037);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1083, N'M??n h??nh', N'7"IPS LCD', 1038);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1084, N'H??? ??i???u h??nh', N'Android 9', 1038);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1085, N'Chip', N'MediaTek MT8765', 1038);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1086, N'RAM', N'2 GB', 1038);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1087, N'B??? nh??? trong', N'32 GB', 1038);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1088, N'K???t n???i', N'H??? tr??? 4GC?? nghe g???i', 1038);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1089, N'SIM', N'1 Nano SIM', 1038);
 
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1090, N'Camera sau', N'2 MP', 1038);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1091, N'Camera tr?????c', N'2 MP', 1038);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1092, N'Pin, S???c', N'3500 mAh5 W', 1038);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1093, N'M??n h??nh', N'7"IPS LCD', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1094, N'H??? ??i???u h??nh', N'Android 8 (  Edition)', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1095, N'Chip', N'Mediatek MT8167D', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1096, N'RAM', N'1 GB', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1097, N'B??? nh??? trong', N'16 GB', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1098, N'K???t n???i', N'3GC?? nghe g???i', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1099, N'SIM', N'1 SIM th?????ng', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1100, N'Camera sau', N'2 MP', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1101, N'Camera tr?????c', N'0.3 MP', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1102, N'Pin, S???c', N'2750mAh5 W', 1039);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1103, N'M??n h??nh', N'10.1"IPS LCD', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1104, N'H??? ??i???u h??nh', N'Android 10', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1105, N'Chip', N'Spreadtrum SC9863A', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1106, N'RAM', N'3 GB', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1107, N'B??? nh??? trong', N'32 GB', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1108, N'K???t n???i', N'H??? tr??? 4GC?? nghe g???i', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1109, N'SIM', N'2 Nano SIM (SIM 2 chung khe th??? nh???)', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1110, N'Camera sau', N'8 MP', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1111, N'Camera tr?????c', N'2 MP', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1112, N'Pin, S???c', N'6000 mAh', 1040);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1113, N'M??n h??nh', N'10.1"IPS LCD', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1114, N'H??? ??i???u h??nh', N'Android 10', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1115, N'Chip', N'Spreadtrum SC9863A', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1116, N'RAM', N'2 GB', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1118, N'B??? nh??? trong', N'32 GB', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1119, N'K???t n???i', N'H??? tr??? 4GC?? nghe g???i', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1120, N'SIM', N'2 Nano SIM (SIM 2 chung khe th??? nh???)', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1121, N'Camera sau', N'5 MP', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1122, N'Camera tr?????c', N'2 MP', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1123, N'Pin, S???c', N'6000 mAh10 W', 1041);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1124, N'M??n h??nh', N'10.1"IPS LCD', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1125, N'H??? ??i???u h??nh', N'Android 9', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1126, N'Chip', N'MediaTek MT6580', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1127, N'RAM', N'2 GB', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1128, N'B??? nh??? trong', N'16 GB', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1129, N'K???t n???i', N'3GC?? nghe g???i', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1130, N'SIM', N'2 SIM th?????ng', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1131, N'Camera sau', N'5 MP', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1132, N'Camera tr?????c', N'2 MP', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1133, N'Pin, S???c', N'5000 mAh10 W', 1042);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1134, N'M??n h??nh', N'12.4"TFT LCD', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1135, N'H??? ??i???u h??nh', N'Android 11', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1136, N'Chip', N'Snapdra n 750G', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1137, N'RAM', N'4 GB', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1139, N'B??? nh??? trong', N'64 GB', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1140, N'K???t n???i', N'H??? tr??? 4G, C?? nghe g???i', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1141, N'SIM', N'1 Nano SIM', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1142, N'Camera sau', N'8 MP', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1143, N'Camera tr?????c', N'5 MP', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1144, N'Pin, S???c', N'10090 mAh, 45 W', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1145, N'H??ng', N'Samsung', 1043);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1147, N'M??n h??nh', N'8.7"TFT LCD', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1148, N'H??? ??i???u h??nh', N'Android 11', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1149, N'Chip', N'MediaTek MT8768T 8 nh??n', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1150, N'RAM', N'3 GB', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1151, N'B??? nh??? trong', N'32 GB', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1152, N'K???t n???i', N'H??? tr??? 4G, C?? nghe g???i', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1153, N'SIM', N'1 Nano SIM', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1154, N'Camera sau', N'8 MP', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1155, N'Camera tr?????c', N'2 MP', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1156, N'Pin, S???c', N'5100 mAh, 15 W', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1157, N'H??ng', N'Samsung.
', 1044);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1158, N'M??n h??nh', N'11"LTPS IPS LCD', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1159, N'H??? ??i???u h??nh', N'Android 10', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1160, N'Chip', N'Snapdra n 865+', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1161, N'RAM', N'6 GB', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1162, N'B??? nh??? trong', N'128 GB', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1163, N'K???t n???i', N'H??? tr??? 4G, C?? nghe g???i', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1164, N'SIM', N'1 Nano SIM (chung th??? nh???)', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1165, N'Camera sau', N'Ch??nh 13 MP & Ph??? 5 MP', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1166, N'Camera tr?????c', N'8 MP', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1167, N'Pin, S???c', N'8000 mAh, 45 W', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1168, N'H??ng', N'Samsung', 1045);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1169, N'M??n h??nh', N'8"TFT LCD', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1170, N'H??? ??i???u h??nh', N'Android 10', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1171, N'Chip', N'Snapdra n 429', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1172, N'RAM', N'2 GB', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1173, N'B??? nh??? trong', N'32 GB', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1174, N'K???t n???i', N'H??? tr??? 4GC?? nghe g???i', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1175, N'SIM', N'1 Nano SIM', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1176, N'Camera sau', N'8 MP', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1177, N'Camera tr?????c', N'2 MP', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1178, N'Pin, S???c', N'5100 mAh10 W', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1179, N'H??ng', N'Samsung', 1046);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1180, N'M??n h??nh', N'10.4"PLS LCD', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1181, N'H??? ??i???u h??nh', N'Android 10', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1182, N'Chip', N'Exynos 9611', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1183, N'RAM', N'4 GB', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1184, N'B??? nh??? trong', N'64 GB', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1185, N'K???t n???i', N'H??? tr??? 4GC?? nghe g???i', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1186, N'SIM', N'1 Nano SIM', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1188, N'Camera sau', N'8 MP', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1189, N'Camera tr?????c', N'5 MP', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1190, N'Pin, S???c', N'7040 mAh10 W', 1047);
INSERT INTO Specification (Id, TenThuocTinh, GiaTri, ProductId) VALUES (1191, N'H??ng', N'Samsung', 1047);


INSERT INTO tintuc (id, noidung, username, image) VALUES (1, N'Hi???u n??ng l??m vi???c v?? h???c t???p m???nh m??? ?????n t??? HP Pavilion 15 eg0505TU i5 1135G7 (46M02PA) c??ng ki???u d??ng thanh l???ch l?? b???n ?????ng h??nh l?? t?????ng, ????p ???ng m???i nhu c???u h??ng ng??y c???a ng?????i d??ng.', N'hsang', N'18.590.000??.jpg');
INSERT INTO tintuc (id, noidung, username, image) VALUES (2, N'Laptop HP 15s fq2559TU i5 (46M27PA) s??? h???u n ???i h??nh thanh l???ch v?? vi x??? l?? Intel th??? h??? 11 hi???n ?????i, k???t h???p c??ng ngh??? m??n h??nh cao c???p cho hi???u n??ng ???n ?????nh v?? ch???t l?????ng h??nh ???nh tuy???t v???i.', N'hsang', N'17.590.000??.jpg');
INSERT INTO tintuc (id, noidung, username, image) VALUES (3, N'HP Omen 15 ek0078TX i7 (26Y68PA) l?? chi???c laptop gaming mang trong m??nh s???c m???nh si??u ph??m nh??? s??? h???u c???u h??nh g???m con chip Intel Core i7 m???nh m??? v?? vi x??? l?? ????? h???a c???c m?????t m?? nh??ng v???n gi??? n ???i h??nh t????ng ?????i m???ng nh???, ????y ch??nh l?? c??ng c??? ?????c l???c, ?????ng h??nh c??ng b???n trong m???i cu???c chi???n.', N'hsang', N'51.740.000??.jpg');
INSERT INTO tintuc (id, noidung, username, image) VALUES (4, N'?????ng c???p v?? ???n t?????ng h??n bao gi??? h???t c??ng laptop HP EliteBook X360 1040 G8 i7 (3G1H4PA) v???i thi???t k??? sang tr???ng, b???n l??? g???p xoay 360 ????? c??ng kh??? n??ng v???n h??nh v?? x??? l?? m???i t??c v??? m???nh m??? mang ?????n nh???ng tr???i nghi???m tr???n v???n, kh?? qu??n cho ng?????i d??ng.', N'hsang', N'49.090.000.jpg');
INSERT INTO tintuc (id, noidung, username, image) VALUES (5, N'Laptop HP Envy 13 ba1030TU i7 (2K0B6PA) s??? h???u thi???t k??? m???ng nh??? c??ng c???u h??nh c???c m???nh m??? ????p ???ng ??a d???ng nhu c???u l??m vi???c, gi??p b???n ?????t ???????c hi???u su???t l??m vi???c t???t nh???t.', N'hsang', N'28.890.000.jpg');
INSERT INTO tintuc (id, noidung, username, image) VALUES (8, N'lu???t d???n h??ng', N'2', N'9d308e13.jpg');
