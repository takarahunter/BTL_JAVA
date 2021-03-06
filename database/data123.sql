CREATE DATABASE [web_sound_device]
GO

USE [web_sound_device]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 5/6/2022 12:27:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[maHD] [int] NOT NULL,
	[maSp] [int] NOT NULL,
	[giaBan] [money] NULL,
	[soLuong] [int] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC,
	[maSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietLoaiSP]    Script Date: 5/6/2022 12:27:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietLoaiSP](
	[maLSP] [int] NOT NULL,
	[maSp] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietLoaiSP] PRIMARY KEY CLUSTERED 
(
	[maLSP] ASC,
	[maSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 5/6/2022 12:27:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[maChucVu] [int] IDENTITY(1,1) NOT NULL,
	[tenChucVu] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[maChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 5/6/2022 12:27:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[maND] [int] NOT NULL,
	[maSp] [int] NOT NULL,
	[soLuong] [int] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[maND] ASC,
	[maSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/6/2022 12:27:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHD] [int] IDENTITY(1,1) NOT NULL,
	[diaChiGiaoHang] [text] NULL,
	[ngayGiaoHang] [datetime] NULL,
	[ngayLHD] [datetime] NOT NULL,
	[tongSoLuong] [int] NOT NULL,
	[tongTien] [money] NOT NULL,
	[trangThaiDonHang] [nvarchar](100) NOT NULL,
	[maKH] [int] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 5/6/2022 12:27:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[maLSP] [int] IDENTITY(1,1) NOT NULL,
	[tenLSP] [nvarchar](100) NOT NULL,
	[hinhAnh] [text] NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[maLSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 5/6/2022 12:27:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[maND] [int] IDENTITY(1,1) NOT NULL,
	[diaChi] [text] NULL,
	[sdt] [varchar](10) NULL,
	[tenND] [nvarchar](125) NOT NULL,
	[email] [varchar](255) NOT NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[maND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/6/2022 12:27:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[maSp] [int] IDENTITY(1,1) NOT NULL,
	[giaSP] [money] NOT NULL,
	[hinhAnh] [text] NULL,
	[tenSp] [nvarchar](255) NOT NULL,
	[thuongHieu] [nvarchar](255) NOT NULL,
	[soLuongTon] [int] NOT NULL,
	[moTa] [text] NOT NULL,
	[giamGia] [float] NOT NULL,
	[giaMua] [money] NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[maSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 5/6/2022 12:27:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[tenDangNhap] [varchar](255) NOT NULL,
	[matKhau] [varchar](100) NOT NULL,
	[tinhTrang] [int] NOT NULL,
	[maChucVu] [int] NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[tenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietHoaDon] ([maHD], [maSp], [giaBan], [soLuong]) VALUES (1, 4, 5000000.0000, 1)
INSERT [dbo].[ChiTietHoaDon] ([maHD], [maSp], [giaBan], [soLuong]) VALUES (3, 4, 5000000.0000, 1)
GO
INSERT [dbo].[ChiTietLoaiSP] ([maLSP], [maSp]) VALUES (1, 1)
INSERT [dbo].[ChiTietLoaiSP] ([maLSP], [maSp]) VALUES (1, 2)
INSERT [dbo].[ChiTietLoaiSP] ([maLSP], [maSp]) VALUES (2, 3)
INSERT [dbo].[ChiTietLoaiSP] ([maLSP], [maSp]) VALUES (3, 4)
GO
SET IDENTITY_INSERT [dbo].[ChucVu] ON 

INSERT [dbo].[ChucVu] ([maChucVu], [tenChucVu]) VALUES (1, N'ADMIN')
INSERT [dbo].[ChucVu] ([maChucVu], [tenChucVu]) VALUES (2, N'KHACH HANG')
INSERT [dbo].[ChucVu] ([maChucVu], [tenChucVu]) VALUES (3, N'QUAN LY')
SET IDENTITY_INSERT [dbo].[ChucVu] OFF
GO
INSERT [dbo].[GioHang] ([maND], [maSp], [soLuong]) VALUES (5, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([maHD], [diaChiGiaoHang], [ngayGiaoHang], [ngayLHD], [tongSoLuong], [tongTien], [trangThaiDonHang], [maKH]) VALUES (1, N'234 Lê Quang Ð?nh,p1,Gò V?p', CAST(N'2022-06-05T00:00:00.000' AS DateTime), CAST(N'2022-05-05T00:00:00.000' AS DateTime), 1, 5000000.0000, N'Đã lên đơn', 5)
INSERT [dbo].[HoaDon] ([maHD], [diaChiGiaoHang], [ngayGiaoHang], [ngayLHD], [tongSoLuong], [tongTien], [trangThaiDonHang], [maKH]) VALUES (3, N'234 Lê Quang Ð?nh,p1,Gò V?p', CAST(N'2022-06-05T00:00:00.000' AS DateTime), CAST(N'2022-05-05T00:00:00.000' AS DateTime), 1, 5000000.0000, N'Đã lên đơn', 5)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([maLSP], [tenLSP], [hinhAnh]) VALUES (1, N'Loa', N'')
INSERT [dbo].[LoaiSanPham] ([maLSP], [tenLSP], [hinhAnh]) VALUES (2, N'Tai Nghe', N'')
INSERT [dbo].[LoaiSanPham] ([maLSP], [tenLSP], [hinhAnh]) VALUES (3, N'May Nghe Nhac', N'')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([maND], [diaChi], [sdt], [tenND], [email]) VALUES (5, N'Long An', N'0337857145', N'ADMIN', N'ADMIN')
INSERT [dbo].[NguoiDung] ([maND], [diaChi], [sdt], [tenND], [email]) VALUES (6, N'TPHCM', N'0798650812', N'SUSAN', N'SUSAN@gmail.com')
INSERT [dbo].[NguoiDung] ([maND], [diaChi], [sdt], [tenND], [email]) VALUES (8, N'TPHCM', N'0123654888', N'MARY', N'MARY123@gmail.com')
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([maSp], [giaSP], [hinhAnh], [tenSp], [thuongHieu], [soLuongTon], [moTa], [giamGia], [giaMua]) VALUES (1, 2150000.0000, NULL, N'Loa Bluetooth JBL Flip 5', N'JBL', 100, N'Dòng loa JBL Flip nh?ng nam qua luôn t?o du?c s?c hút c?c kì l?n v?i nh?ng ngu?i choi loa và âm thanh, d?c bi?t là nh?ng b?n tr?. Và m?i dây t?i s? ki?n CES 2019, JBL dã tung ra phiên b?n th? 5 c?a dòng s?n ph?m này, JBL Flip 5 ra m?t v?i nhi?u s? k? th?a, nâng c?p vô cùng dáng d? mong d?i (thông s? k? thu?t: th?i gian s? d?ng:12 gi?, dung lu?ng pin:4800mAh, ch?ng nu?c IPX7)', 0, 2550000.0000)
INSERT [dbo].[SanPham] ([maSp], [giaSP], [hinhAnh], [tenSp], [thuongHieu], [soLuongTon], [moTa], [giamGia], [giaMua]) VALUES (2, 4590000.0000, NULL, N'Loa Bluetooth JBL Pulse 4', N'JBL', 100, N'Dòng loa JBL Flip nh?ng nam qua luôn t?o du?c s?c hút c?c kì l?n v?i nh?ng ngu?i choi loa và âm thanh, d?c bi?t là nh?ng b?n tr?. Và m?i dây t?i s? ki?n CES 2019, JBL dã tung ra phiên b?n th? 5 c?a dòng s?n ph?m này, JBL Flip 4 ra m?t v?i nhi?u s? k? th?a, nâng c?p vô cùng dáng d? mong d?i (thông s? k? thu?t: th?i gian s? d?ng:12 gi?, dung lu?ng pin:4800mAh, ch?ng nu?c IPX7)', 0, 5090000.0000)
INSERT [dbo].[SanPham] ([maSp], [giaSP], [hinhAnh], [tenSp], [thuongHieu], [soLuongTon], [moTa], [giamGia], [giaMua]) VALUES (3, 4990000.0000, NULL, N'Tai nghe không dây Apple Airpods Pro VN/A', N'Apple', 100, N'Airpods Pro du?c trang b? chu?n ch?ng nu?c IPX4, di kèm kh? nang kh? ti?ng ?n ch? d?ng. Airpods Pro ch?c ch?n s? du?c xu?t hi?n nhi?u hon ? các phòng t?p, phòng th? hình.

Th?i lu?ng pin c?a AirPods Pro là 5 gi? s? d?ng và n?u b?t ch? d? kh? ti?ng ?n là 4.5 gi?. Ngoài ra, h?p s?c cung cung c?p m?t lu?ng pin lên t?i hon 18 gi?, nhu v?y t?ng th?i gian ho?t d?ng là hon 24 gi?', 0, 5200000.0000)
INSERT [dbo].[SanPham] ([maSp], [giaSP], [hinhAnh], [tenSp], [thuongHieu], [soLuongTon], [moTa], [giamGia], [giaMua]) VALUES (4, 4450000.0000, NULL, N'Máy nghe nhạc HiBy R3 Pro', N' HiBy', 98, N'Kích thu?c: 82x61x13mm, Màn hình: 3.2” IPS LCD Touch Screen, B? nh?: H? tr? th? nh? lên d?n 2TB, Pin: 1600 mAh, Th?i gian s? d?ng: Khi dùng c?ng 2.5mm: 16 gi?
Khi dùng c?ng 3.5mm: 20 gi?', 0, 5000000.0000)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
INSERT [dbo].[TaiKhoan] ([tenDangNhap], [matKhau], [tinhTrang], [maChucVu]) VALUES (N'ADMIN', N'ADMIN', 1, 1)
INSERT [dbo].[TaiKhoan] ([tenDangNhap], [matKhau], [tinhTrang], [maChucVu]) VALUES (N'MARY123@gmail.com', N'TEST123', 1, 2)
INSERT [dbo].[TaiKhoan] ([tenDangNhap], [matKhau], [tinhTrang], [maChucVu]) VALUES (N'SUSAN@gmail.com', N'TEST123', 1, 3)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_NguoiDung_email]    Script Date: 5/6/2022 12:27:03 PM ******/
ALTER TABLE [dbo].[NguoiDung] ADD  CONSTRAINT [UK_NguoiDung_email] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  DEFAULT ((0)) FOR [giaBan]
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  DEFAULT ((1)) FOR [soLuong]
GO
ALTER TABLE [dbo].[ChucVu] ADD  DEFAULT (N'') FOR [tenChucVu]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT ((1)) FOR [soLuong]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (N'') FOR [diaChiGiaoHang]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (getdate()) FOR [ngayLHD]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [tongSoLuong]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [tongTien]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (N'Chưa thanh toán') FOR [trangThaiDonHang]
GO
ALTER TABLE [dbo].[LoaiSanPham] ADD  DEFAULT (N'') FOR [hinhAnh]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  DEFAULT (N'') FOR [diaChi]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  DEFAULT ('') FOR [sdt]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  DEFAULT ('') FOR [email]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [giaSP]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (N'') FOR [moTa]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [giamGia]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [giaMua]
GO
ALTER TABLE [dbo].[TaiKhoan] ADD  DEFAULT ((1)) FOR [tinhTrang]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([maHD])
REFERENCES [dbo].[HoaDon] ([maHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([maSp])
REFERENCES [dbo].[SanPham] ([maSp])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[ChiTietLoaiSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietLoaiSP_LoaiSanPham] FOREIGN KEY([maLSP])
REFERENCES [dbo].[LoaiSanPham] ([maLSP])
GO
ALTER TABLE [dbo].[ChiTietLoaiSP] CHECK CONSTRAINT [FK_ChiTietLoaiSP_LoaiSanPham]
GO
ALTER TABLE [dbo].[ChiTietLoaiSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietLoaiSP_SanPham] FOREIGN KEY([maSp])
REFERENCES [dbo].[SanPham] ([maSp])
GO
ALTER TABLE [dbo].[ChiTietLoaiSP] CHECK CONSTRAINT [FK_ChiTietLoaiSP_SanPham]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_NguoiDung] FOREIGN KEY([maND])
REFERENCES [dbo].[NguoiDung] ([maND])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_NguoiDung]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_SanPham] FOREIGN KEY([maSp])
REFERENCES [dbo].[SanPham] ([maSp])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NguoiDung] FOREIGN KEY([maKH])
REFERENCES [dbo].[NguoiDung] ([maND])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NguoiDung]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_TaiKhoan] FOREIGN KEY([email])
REFERENCES [dbo].[TaiKhoan] ([tenDangNhap])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_TaiKhoan]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_ChucVu] FOREIGN KEY([maChucVu])
REFERENCES [dbo].[ChucVu] ([maChucVu])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_ChucVu]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD CHECK  (([giaBan]>=(0)))
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD CHECK  (([soLuong]>=(1)))
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD CHECK  (([soLuong]>=(1)))
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD CHECK  (([tongSoLuong]>=(0)))
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD CHECK  (([tongTien]>=(0)))
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD CHECK  (([giamGia]>=(0)))
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD CHECK  (([giaMua]>=(0)))
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD CHECK  (([giaSP]>=(0)))
GO
