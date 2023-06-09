
USE [Bigschool]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Banner]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[MaBanner] [int] NOT NULL,
	[Anh] [nvarchar](50) NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[MaBanner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ghe]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ghe](
	[Maghe] [int] NOT NULL,
	[Gheso] [nvarchar](50) NOT NULL,
	[Maphong] [int] NOT NULL,
	[Phongso] [int] NOT NULL,
	[MaLG] [int] NOT NULL,
	[TenLG] [nvarchar](50) NOT NULL,
	[Giaghe] [int] NOT NULL,
 CONSTRAINT [PK_Ghe] PRIMARY KEY CLUSTERED 
(
	[Maghe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[TenPhim] [nvarchar](100) NULL,
	[TongTien] [nvarchar](100) NULL,
	[DateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Khach Hang]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khach Hang](
	[MaKH] [int] NOT NULL,
	[Hoten] [nvarchar](50) NOT NULL,
	[Ngaysinh] [nvarchar](50) NOT NULL,
	[Diachi] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SDT] [int] NOT NULL,
	[CMND] [int] NOT NULL,
	[Diemtichluy] [int] NOT NULL,
 CONSTRAINT [PK_Khach Hang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lich Chieu]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lich Chieu](
	[MaLC] [int] NOT NULL,
	[MaXC] [int] NOT NULL,
	[Ngaychieu] [nvarchar](50) NOT NULL,
	[Giochieu] [nvarchar](50) NOT NULL,
	[Trangthai] [nvarchar](50) NOT NULL,
	[GiaXC] [int] NOT NULL,
 CONSTRAINT [PK_Lich Chieu] PRIMARY KEY CLUSTERED 
(
	[MaLC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loai Ghe]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai Ghe](
	[MaLG] [int] NOT NULL,
	[TenLG] [nvarchar](50) NOT NULL,
	[Giaghe] [int] NOT NULL,
 CONSTRAINT [PK_Loai Ghe] PRIMARY KEY CLUSTERED 
(
	[MaLG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loai Phim]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai Phim](
	[MaLP] [int] NOT NULL,
	[Loaiphim] [nvarchar](50) NOT NULL,
	[GiaLP] [int] NOT NULL,
 CONSTRAINT [PK_Loai Phim] PRIMARY KEY CLUSTERED 
(
	[MaLP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phim]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[Maphim] [int] NOT NULL,
	[Tenphim] [nvarchar](50) NOT NULL,
	[Mota] [nvarchar](2000) NOT NULL,
	[Thoiluong] [nvarchar](50) NOT NULL,
	[Ngaykhoichieu] [nvarchar](50) NOT NULL,
	[Daodien] [nvarchar](50) NOT NULL,
	[Namsx] [int] NOT NULL,
	[Matheloai] [int] NOT NULL,
	[Theloai] [nvarchar](50) NOT NULL,
	[Apphich] [nvarchar](50) NULL,
	[MaLP] [int] NOT NULL,
	[Loaiphim] [nvarchar](50) NOT NULL,
	[GiaLP] [int] NOT NULL,
	[Trailer] [nvarchar](max) NULL,
 CONSTRAINT [PK_Phim] PRIMARY KEY CLUSTERED 
(
	[Maphim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phong Chieu]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong Chieu](
	[Maphong] [int] NOT NULL,
	[Marap] [int] NOT NULL,
	[Phongso] [int] NOT NULL,
	[Sochongoi] [int] NOT NULL,
	[Tinhtrang] [nvarchar](50) NOT NULL,
	[LoaiMH] [nvarchar](50) NOT NULL,
	[LoaiDD] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Phong Chieu] PRIMARY KEY CLUSTERED 
(
	[Maphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rap phim]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rap phim](
	[Marap] [int] NOT NULL,
	[Tenrap] [nvarchar](50) NOT NULL,
	[Diachi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Rap phim] PRIMARY KEY CLUSTERED 
(
	[Marap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[The Loai]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[The Loai](
	[Matheloai] [int] NOT NULL,
	[Tentheloai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_The Loai] PRIMARY KEY CLUSTERED 
(
	[Matheloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VE]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VE](
	[Mave] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[Maphim] [int] NOT NULL,
	[MaLC] [int] NOT NULL,
	[Maghe] [int] NOT NULL,
	[Tenphim] [nvarchar](50) NOT NULL,
	[Giochieu] [nvarchar](50) NOT NULL,
	[Ngaychieu] [nvarchar](50) NOT NULL,
	[Phongso] [int] NOT NULL,
	[Gheso] [int] NOT NULL,
	[Thoiluong] [nvarchar](50) NOT NULL,
	[Gia] [int] NOT NULL,
	[Maphong] [nchar](10) NOT NULL,
 CONSTRAINT [PK_VE] PRIMARY KEY CLUSTERED 
(
	[Mave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Xuat Chieu]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xuat Chieu](
	[MaXC] [int] NOT NULL,
	[Giochieu] [nvarchar](50) NOT NULL,
	[GiaXC] [int] NOT NULL,
 CONSTRAINT [PK_Xuat Chieu] PRIMARY KEY CLUSTERED 
(
	[MaXC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserName])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserName])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserName])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_Loai Ghe] FOREIGN KEY([MaLG])
REFERENCES [dbo].[Loai Ghe] ([MaLG])
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_Loai Ghe]
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_Phong Chieu] FOREIGN KEY([Maphong])
REFERENCES [dbo].[Phong Chieu] ([Maphong])
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_Phong Chieu]
GO
ALTER TABLE [dbo].[Lich Chieu]  WITH CHECK ADD  CONSTRAINT [FK_Lich Chieu_Xuat Chieu] FOREIGN KEY([MaXC])
REFERENCES [dbo].[Xuat Chieu] ([MaXC])
GO
ALTER TABLE [dbo].[Lich Chieu] CHECK CONSTRAINT [FK_Lich Chieu_Xuat Chieu]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_Loai Phim] FOREIGN KEY([MaLP])
REFERENCES [dbo].[Loai Phim] ([MaLP])
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_Loai Phim]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_The Loai] FOREIGN KEY([Matheloai])
REFERENCES [dbo].[The Loai] ([Matheloai])
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_The Loai]
GO
ALTER TABLE [dbo].[Phong Chieu]  WITH CHECK ADD  CONSTRAINT [FK_Phong Chieu_Rap phim] FOREIGN KEY([Marap])
REFERENCES [dbo].[Rap phim] ([Marap])
GO
ALTER TABLE [dbo].[Phong Chieu] CHECK CONSTRAINT [FK_Phong Chieu_Rap phim]
GO
ALTER TABLE [dbo].[VE]  WITH CHECK ADD  CONSTRAINT [FK_VE_Ghe] FOREIGN KEY([Maghe])
REFERENCES [dbo].[Ghe] ([Maghe])
GO
ALTER TABLE [dbo].[VE] CHECK CONSTRAINT [FK_VE_Ghe]
GO
ALTER TABLE [dbo].[VE]  WITH CHECK ADD  CONSTRAINT [FK_VE_Khach Hang] FOREIGN KEY([Maphim])
REFERENCES [dbo].[Khach Hang] ([MaKH])
GO
ALTER TABLE [dbo].[VE] CHECK CONSTRAINT [FK_VE_Khach Hang]
GO
ALTER TABLE [dbo].[VE]  WITH CHECK ADD  CONSTRAINT [FK_VE_Lich Chieu] FOREIGN KEY([MaLC])
REFERENCES [dbo].[Lich Chieu] ([MaLC])
GO
ALTER TABLE [dbo].[VE] CHECK CONSTRAINT [FK_VE_Lich Chieu]
GO
ALTER TABLE [dbo].[VE]  WITH CHECK ADD  CONSTRAINT [FK_VE_Phim1] FOREIGN KEY([Maphim])
REFERENCES [dbo].[Phim] ([Maphim])
GO
ALTER TABLE [dbo].[VE] CHECK CONSTRAINT [FK_VE_Phim1]
GO
/****** Object:  StoredProcedure [dbo].[P_LichChieu]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[P_LichChieu] @malc int
as
    begin
        select * from ve where  MaLC = @malc
    end
GO
/****** Object:  StoredProcedure [dbo].[P_Ve]    Script Date: 4/14/2022 8:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[P_Ve] @malc int,@tenphim nvarchar(100)
AS
BEGIN
	SELECT * FROM VE WHERE MaLC = @malc AND Tenphim = @tenphim
END

GO
