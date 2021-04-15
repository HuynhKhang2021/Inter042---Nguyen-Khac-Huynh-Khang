create table ViTri(
	idViTri int primary key auto_increment,
	tenViTri varchar(45));
create table TrinhDo(
	idTrinhDo int primary key auto_increment,
	tenTrinhDo varchar(45));
create table BoPhan(
	idBoPhan int primary key auto_increment,
	tenBoPhan varchar(45));
create table NhanVien(
	idNhanVien int primary key auto_increment,
	hoTen varchar(45),
	idViTri int,
	idTrinhDo int,
	idBoPhan int,
	ngaySinh date,
	soCMT varchar(45),
	luong varchar(45),
	SDT varchar(45),
	email varchar(45),
	diaChi varchar(45),
	foreign key (idViTri) references ViTri(idViTri),
	foreign key (idTrinhDo) references TrinhDo(idTrinhDo),
	foreign key (idBoPhan) references BoPhan(idBoPhan));
create table LoaiKhach(
	idLoaiKhach int primary key auto_increment,
	tenLoaiKhach varchar(45));
create table KhachHang(
	idKhachHang int primary key auto_increment,
	idLoaiKhach int,
	hoTen varchar(45),
	ngaySinh date,
	soCMT varchar(45),
	SDT varchar(45),
	email varchar(45),
	diaChi varchar(45),
	foreign key (idLoaiKhach) references LoaiKhach(idLoaiKhach));
create table KieuThue(
	idKieuThue int primary key auto_increment,
	tenKieuThue varchar(45),
	gia int);
create table LoaiDichVu(
	idLoaiDichVu int primary key auto_increment,
	tenLoaiDichVu varchar(45));
create table DichVu(
	idDichVu int primary key auto_increment,
	tenDichVu varchar(45),
	dienTich int,
	soTang int,
	soNguoiToiDa varchar(45),
	idKieuThue int,
	foreign key fo (idKieuThue) references KieuThue(idKieuThue),
	idLoaiDichVu int,
	trangThai varchar(45),
	foreign key (idLoaiDichVu) references LoaiDichVu(idLoaiDichVu)
);
create table DichVuDiKem(
	idDichVuDiKem int primary key auto_increment,
	tenDichVuDiKem varchar(45),
	gia int,
	donVi int,
	trangThaiKhaDung varchar(45));
create table HopDong(
	idHopDong int primary key auto_increment,
	idNhanVien int,
	idKhachHang int,
	idDichVu int,
	ngayLamHopDong date,
	ngayKeyThuc date,
	tienDatCoc int,
	tongTien int,
	foreign key (idNhanVien) references NhanVien(idNhanVien),
	foreign key (idKhachHang) references KhachHang(idKhachHang),
	foreign key (idDichVu) references DichVu(idDichVu));
create table HopDongChiTiet(
	idHopDongChiTiet int,
	idHopDong int,
	idDichVuDiKem int,
	soLuong int,
	foreign key (idHopDong) references HopDong(idHopDong),
	foreign key (idDichVuDiKem) references DichVuDiKem(idDichVuDiKem));