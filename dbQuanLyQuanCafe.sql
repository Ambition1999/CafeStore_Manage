USE [QL_QuanCafe]
GO
/****** Object:  Table [dbo].[tblBan]    Script Date: 19/06/2020 20:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBan](
	[MaBan] [int] IDENTITY(1,1) NOT NULL,
	[TenBan] [nvarchar](100) NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblBan] PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblChiTietHD]    Script Date: 19/06/2020 20:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietHD](
	[MaHD] [int] NOT NULL,
	[MaMon] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[TongTien] [money] NOT NULL,
	[GiamGia] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblChiTietHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCongThuc]    Script Date: 19/06/2020 20:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCongThuc](
	[MaMon] [int] NOT NULL,
	[MaNL] [int] NOT NULL,
	[HamLuong] [float] NOT NULL,
	[Tong] [float] NOT NULL,
 CONSTRAINT [PK_tblCongThuc] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC,
	[MaNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblHoaDon]    Script Date: 19/06/2020 20:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[TGVao] [datetime] NOT NULL,
	[TGRa] [datetime] NOT NULL,
	[MaBan] [int] NOT NULL,
	[MaNV] [int] NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
	[TongTienTT] [money] NOT NULL,
 CONSTRAINT [PK_tblHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLoaiMon]    Script Date: 19/06/2020 20:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoaiMon](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tblLoaiMon] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLoaiNhanVien]    Script Date: 19/06/2020 20:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoaiNhanVien](
	[MaLoaiNV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiNV] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tblLoaiNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNguyenLieu]    Script Date: 19/06/2020 20:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNguyenLieu](
	[MaNL] [int] IDENTITY(1,1) NOT NULL,
	[TenNL] [nvarchar](100) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonViTinh] [nvarchar](50) NOT NULL,
	[NgayNhap] [date] NOT NULL,
 CONSTRAINT [PK_tblNguyenLieu] PRIMARY KEY CLUSTERED 
(
	[MaNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 19/06/2020 20:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](1000) NOT NULL,
	[SDT] [char](100) NOT NULL,
	[MaLoaiNV] [int] NOT NULL,
	[TaiKhoan] [char](100) NOT NULL,
 CONSTRAINT [PK_tblNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTaiKhoan]    Script Date: 19/06/2020 20:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTaiKhoan](
	[MaNV] [int] NOT NULL,
	[TenDN] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[Quyen] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[TenDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblThucDon]    Script Date: 19/06/2020 20:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThucDon](
	[MaMon] [int] IDENTITY(1,1) NOT NULL,
	[TenMon] [nvarchar](100) NOT NULL,
	[MaLoai] [int] NOT NULL,
	[MaNL] [int] NOT NULL,
	[DonViTinh] [nchar](10) NOT NULL,
	[DonGia] [nchar](10) NOT NULL,
 CONSTRAINT [PK_tblThucDon] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblThucDon] ADD  CONSTRAINT [DF_tblThucDon_DonGia]  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[tblChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHD_tblHoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tblHoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[tblChiTietHD] CHECK CONSTRAINT [FK_tblChiTietHD_tblHoaDon]
GO
ALTER TABLE [dbo].[tblChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHD_tblThucDon] FOREIGN KEY([MaMon])
REFERENCES [dbo].[tblThucDon] ([MaMon])
GO
ALTER TABLE [dbo].[tblChiTietHD] CHECK CONSTRAINT [FK_tblChiTietHD_tblThucDon]
GO
ALTER TABLE [dbo].[tblCongThuc]  WITH CHECK ADD  CONSTRAINT [FK_tblCongThuc_tblNguyenLieu] FOREIGN KEY([MaNL])
REFERENCES [dbo].[tblNguyenLieu] ([MaNL])
GO
ALTER TABLE [dbo].[tblCongThuc] CHECK CONSTRAINT [FK_tblCongThuc_tblNguyenLieu]
GO
ALTER TABLE [dbo].[tblCongThuc]  WITH CHECK ADD  CONSTRAINT [FK_tblCongThuc_tblThucDon] FOREIGN KEY([MaMon])
REFERENCES [dbo].[tblThucDon] ([MaMon])
GO
ALTER TABLE [dbo].[tblCongThuc] CHECK CONSTRAINT [FK_tblCongThuc_tblThucDon]
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDon_tblBan] FOREIGN KEY([MaBan])
REFERENCES [dbo].[tblBan] ([MaBan])
GO
ALTER TABLE [dbo].[tblHoaDon] CHECK CONSTRAINT [FK_tblHoaDon_tblBan]
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDon_tblNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblHoaDon] CHECK CONSTRAINT [FK_tblHoaDon_tblNhanVien]
GO
ALTER TABLE [dbo].[tblNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tblNhanVien_tblLoaiNhanVien] FOREIGN KEY([MaLoaiNV])
REFERENCES [dbo].[tblLoaiNhanVien] ([MaLoaiNV])
GO
ALTER TABLE [dbo].[tblNhanVien] CHECK CONSTRAINT [FK_tblNhanVien_tblLoaiNhanVien]
GO
ALTER TABLE [dbo].[tblTaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_tblTaiKhoan_tblNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblTaiKhoan] CHECK CONSTRAINT [FK_tblTaiKhoan_tblNhanVien]
GO
ALTER TABLE [dbo].[tblThucDon]  WITH CHECK ADD  CONSTRAINT [FK_tblThucDon_tblLoaiMon] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[tblLoaiMon] ([MaLoai])
GO
ALTER TABLE [dbo].[tblThucDon] CHECK CONSTRAINT [FK_tblThucDon_tblLoaiMon]
GO
