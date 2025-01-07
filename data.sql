USE [22T1020777]
GO
/****** Object:  Table [dbo].[Certificate]    Script Date: 12/12/2024 12:24:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificate](
	[CertificateId] [int] NOT NULL,
	[CertificateName] [nvarchar](100) NOT NULL,
	[NumberOfRegister] [int] NOT NULL,
	[NumberOfPass] [int] NOT NULL,
 CONSTRAINT [PK_Certificate] PRIMARY KEY CLUSTERED 
(
	[CertificateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Examinee]    Script Date: 12/12/2024 12:24:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Examinee](
	[ExamineeId] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Examinee] PRIMARY KEY CLUSTERED 
(
	[ExamineeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Registration]    Script Date: 12/12/2024 12:24:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[ExamineeId] [int] NOT NULL,
	[CertificateId] [int] NOT NULL,
	[RegisterTime] [date] NOT NULL,
	[ExamResult] [int] NOT NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[ExamineeId] ASC,
	[CertificateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Certificate] ([CertificateId], [CertificateName], [NumberOfRegister], [NumberOfPass]) VALUES (1, N'Tin Học', 5, 4)
INSERT [dbo].[Certificate] ([CertificateId], [CertificateName], [NumberOfRegister], [NumberOfPass]) VALUES (2, N'Ngoại Ngữ', 5, 2)
INSERT [dbo].[Examinee] ([ExamineeId], [FirstName], [LastName], [BirthDate], [Email], [Address]) VALUES (1, N'Phạm Phước', N'Tiến', CAST(N'1993-03-05' AS Date), N'phamtien@gmail.com', N'Huế')
INSERT [dbo].[Examinee] ([ExamineeId], [FirstName], [LastName], [BirthDate], [Email], [Address]) VALUES (2, N'Trần Việt', N'Lân', CAST(N'1994-04-06' AS Date), N'tranlan@gmail.com', N'Huế')
INSERT [dbo].[Examinee] ([ExamineeId], [FirstName], [LastName], [BirthDate], [Email], [Address]) VALUES (3, N'Lê Thanh', N'Thuyết', CAST(N'1995-01-05' AS Date), N'lethuyet@gmail.com', N'Hà Nội')
INSERT [dbo].[Examinee] ([ExamineeId], [FirstName], [LastName], [BirthDate], [Email], [Address]) VALUES (4, N'Nguyễn Hữu', N'Thiện', CAST(N'1992-02-11' AS Date), N'nguyenthien@gmail.com', N'Quảng Bình')
INSERT [dbo].[Examinee] ([ExamineeId], [FirstName], [LastName], [BirthDate], [Email], [Address]) VALUES (5, N'Hồng', N'Phương', CAST(N'1993-03-12' AS Date), N'hongphuong@gmail.com', N'Đà Nẵng')
INSERT [dbo].[Registration] ([ExamineeId], [CertificateId], [RegisterTime], [ExamResult]) VALUES (1, 1, CAST(N'2004-01-05' AS Date), 9)
INSERT [dbo].[Registration] ([ExamineeId], [CertificateId], [RegisterTime], [ExamResult]) VALUES (2, 1, CAST(N'2004-02-03' AS Date), 6)
INSERT [dbo].[Registration] ([ExamineeId], [CertificateId], [RegisterTime], [ExamResult]) VALUES (3, 2, CAST(N'2005-01-02' AS Date), 7)
INSERT [dbo].[Registration] ([ExamineeId], [CertificateId], [RegisterTime], [ExamResult]) VALUES (4, 2, CAST(N'2006-01-02' AS Date), 3)
INSERT [dbo].[Registration] ([ExamineeId], [CertificateId], [RegisterTime], [ExamResult]) VALUES (5, 1, CAST(N'2005-02-03' AS Date), 7)
INSERT [dbo].[Registration] ([ExamineeId], [CertificateId], [RegisterTime], [ExamResult]) VALUES (6, 2, CAST(N'2005-02-03' AS Date), 7)
INSERT [dbo].[Registration] ([ExamineeId], [CertificateId], [RegisterTime], [ExamResult]) VALUES (7, 1, CAST(N'2005-02-03' AS Date), 2)
INSERT [dbo].[Registration] ([ExamineeId], [CertificateId], [RegisterTime], [ExamResult]) VALUES (8, 1, CAST(N'2024-12-09' AS Date), 0)
INSERT [dbo].[Registration] ([ExamineeId], [CertificateId], [RegisterTime], [ExamResult]) VALUES (9, 2, CAST(N'2024-12-09' AS Date), 0)
INSERT [dbo].[Registration] ([ExamineeId], [CertificateId], [RegisterTime], [ExamResult]) VALUES (10, 2, CAST(N'2024-12-09' AS Date), 0)
