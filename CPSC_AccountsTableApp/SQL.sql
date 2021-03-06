USE [CentralPublicSchoolAndCollegeDB]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 09/18/2017 12:07:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Class](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](100) NULL,
	[Name] [varchar](200) NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cost]    Script Date: 09/18/2017 12:07:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cost](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Amount] [decimal](18, 2) NULL,
	[Description] [varchar](500) NULL,
 CONSTRAINT [PK_Cost] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Section]    Script Date: 09/18/2017 12:07:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Section](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[ClassId] [int] NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HDFee]    Script Date: 09/18/2017 12:07:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDFee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Month] [int] NULL,
	[SectionId] [int] NULL,
	[HostelFee] [decimal](18, 2) NULL,
	[DayCareFee] [decimal](18, 2) NULL,
	[HostelAdmissionFee] [decimal](18, 2) NULL,
	[DayCareAdmissionFee] [decimal](18, 2) NULL,
 CONSTRAINT [PK_HDFee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassFee]    Script Date: 09/18/2017 12:07:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClassFee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Month] [int] NULL,
	[SectionId] [int] NULL,
	[TutionFee] [decimal](18, 2) NULL,
	[ExamFee] [decimal](18, 2) NULL,
	[OthersFee] [decimal](18, 2) NULL,
	[Descriptions] [varchar](200) NULL,
	[AdmissionFee] [decimal](18, 2) NULL,
 CONSTRAINT [PK_ClassFee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 09/18/2017 12:07:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[FatherName] [varchar](100) NULL,
	[MotherName] [varchar](100) NULL,
	[ContactNo] [varchar](100) NULL,
	[Address] [varchar](200) NULL,
	[RollNo] [int] NULL,
	[SectionId] [int] NULL,
	[PreviousDue] [decimal](18, 2) NULL,
	[StartReg] [date] NULL,
	[Hostel] [bit] NULL,
	[HostelDate] [date] NULL,
	[Daycare] [bit] NULL,
	[DayDate] [date] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentPayment]    Script Date: 09/18/2017 12:07:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentPayment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[TutionFee] [decimal](18, 2) NULL,
	[ExamFee] [decimal](18, 2) NULL,
	[OthersFee] [decimal](18, 2) NULL,
	[HostelOrDayCareFee] [decimal](18, 2) NULL,
	[StudentId] [int] NULL,
	[AdmissionFee] [decimal](18, 2) NULL,
	[AdmissionFeeHD] [decimal](18, 2) NULL,
	[Schoolarship] [decimal](18, 2) NOT NULL,
	[Description] [varchar](500) NULL,
 CONSTRAINT [PK_StudentPayment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_ClassFee_Section]    Script Date: 09/18/2017 12:07:01 ******/
ALTER TABLE [dbo].[ClassFee]  WITH CHECK ADD  CONSTRAINT [FK_ClassFee_Section] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Section] ([Id])
GO
ALTER TABLE [dbo].[ClassFee] CHECK CONSTRAINT [FK_ClassFee_Section]
GO
/****** Object:  ForeignKey [FK_HDFee_HDFee]    Script Date: 09/18/2017 12:07:01 ******/
ALTER TABLE [dbo].[HDFee]  WITH CHECK ADD  CONSTRAINT [FK_HDFee_HDFee] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Section] ([Id])
GO
ALTER TABLE [dbo].[HDFee] CHECK CONSTRAINT [FK_HDFee_HDFee]
GO
/****** Object:  ForeignKey [FK_Section_Class]    Script Date: 09/18/2017 12:07:01 ******/
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_Section_Class] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Class] ([Id])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_Section_Class]
GO
/****** Object:  ForeignKey [FK_Student_Section]    Script Date: 09/18/2017 12:07:01 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Section] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Section] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Section]
GO
/****** Object:  ForeignKey [FK_StudentPayment_Student]    Script Date: 09/18/2017 12:07:01 ******/
ALTER TABLE [dbo].[StudentPayment]  WITH CHECK ADD  CONSTRAINT [FK_StudentPayment_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[StudentPayment] CHECK CONSTRAINT [FK_StudentPayment_Student]
GO
