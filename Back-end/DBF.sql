USE [master]
GO
/****** Object:  Database [FacilitiesFeedbackManagement_SWP391]    Script Date: 11/18/2023 2:41:49 PM ******/
CREATE DATABASE [FacilitiesFeedbackManagement_SWP391]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FacilitiesFeedbackManagement_SWP391', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SA\MSSQL\DATA\FacilitiesFeedbackManagement_SWP391.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FacilitiesFeedbackManagement_SWP391_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SA\MSSQL\DATA\FacilitiesFeedbackManagement_SWP391_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FacilitiesFeedbackManagement_SWP391].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET ARITHABORT OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET RECOVERY FULL 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET  MULTI_USER 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FacilitiesFeedbackManagement_SWP391', N'ON'
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET QUERY_STORE = ON
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [FacilitiesFeedbackManagement_SWP391]
GO
/****** Object:  Table [dbo].[tbl_CategoriesProblem]    Script Date: 11/18/2023 2:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CategoriesProblem](
	[ID] [char](3) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__tbl_Cate__3214EC2739C90B10] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Config]    Script Date: 11/18/2023 2:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Config](
	[Id] [uniqueidentifier] NOT NULL,
	[Variable] [varchar](30) NULL,
	[Value] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Feedback]    Script Date: 11/18/2023 2:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Feedback](
	[FeedbackID] [uniqueidentifier] NOT NULL,
	[UserID] [varchar](36) NOT NULL,
	[Date_time] [datetime] NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](300) NOT NULL,
	[DataUrl] [varchar](300) NOT NULL,
	[Response] [nvarchar](100) NULL,
	[CateID] [char](3) NOT NULL,
	[LocationID] [nvarchar](15) NOT NULL,
	[Status] [int] NULL,
	[Notify] [int] NULL,
 CONSTRAINT [Feedback] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Location]    Script Date: 11/18/2023 2:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Location](
	[LocationID] [nvarchar](15) NOT NULL,
	[DISABLE] [int] NULL,
 CONSTRAINT [PK__tbl_Posi__70B8202851753999] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_RefreshToken]    Script Date: 11/18/2023 2:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_RefreshToken](
	[UserId] [varchar](36) NOT NULL,
	[TokenId] [varchar](50) NULL,
	[RefreshToken] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Specialist]    Script Date: 11/18/2023 2:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Specialist](
	[UserID] [varchar](36) NOT NULL,
	[CateID] [char](3) NOT NULL,
 CONSTRAINT [Specialist_PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Task]    Script Date: 11/18/2023 2:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Task](
	[ID] [uniqueidentifier] NOT NULL,
	[FeedbackID] [uniqueidentifier] NOT NULL,
	[EmployeeID] [varchar](36) NOT NULL,
	[ManagerID] [varchar](36) NOT NULL,
	[Date_Time] [datetime] NULL,
	[ImgConfirmationURL] [varchar](300) NOT NULL,
	[Note] [nvarchar](300) NULL,
	[Status] [int] NULL,
	[Responsed] [nvarchar](300) NULL,
 CONSTRAINT [PK__tbl_Task__3214EC27ABB4FF31] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserRole]    Script Date: 11/18/2023 2:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserRole](
	[RoleID] [int] NOT NULL,
	[Description] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 11/18/2023 2:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Users](
	[UserID] [varchar](36) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[RoleID] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C01', N'Điện')
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C02', N'Nước')
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C03', N'Tivi')
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C04', N'Điều hòa')
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C05', N'Bình lọc nước')
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C06', N'Thang máy')
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C07', N'Máy chiếu')
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C08', N'Bàn')
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C09', N'Ghế')
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C10', N'Loa')
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C11', N'Micro')
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C12', N'Wifi')
GO
INSERT [dbo].[tbl_Config] ([Id], [Variable], [Value]) VALUES (N'1c072362-3188-4a29-a42a-cd1c850d46c5', N'MaxTaskDelivered', N'5')
INSERT [dbo].[tbl_Config] ([Id], [Variable], [Value]) VALUES (N'47a671ac-4a60-45aa-9d02-e46ac1c3d288', N'FeedbackExpiredHour', N'48')
INSERT [dbo].[tbl_Config] ([Id], [Variable], [Value]) VALUES (N'83bfb6fb-aedb-477e-a276-f18538ce4d29', N'TaskExpiredHour', N'48')
GO
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'303869fc-4e35-4958-b330-0cf941e9900d', N'SE170585', CAST(N'2023-10-26T00:00:00.000' AS DateTime), N'Vấn đề với bình lọc nước', N'Bình lọc nước không hoạt động', N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Feedback\303869fc-4e35-4958-b330-0cf941e9900d', N'Đã xong', N'C05', N'NVH 613', 3, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'44a1fbed-39cd-4b97-92bf-0d7b681ba92d', N'SE172437', CAST(N'2023-09-21T00:00:00.000' AS DateTime), N'Vấn đề với điện', N'Điện trong phòng bị mất', N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Feedback\44a1fbed-39cd-4b97-92bf-0d7b681ba92d', N'FPT Check!!!!', N'C01', N'P.005', 3, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'1b7f0205-aa93-4c14-9b1e-1fa66acfb375', N'SA165555', CAST(N'2023-09-25T00:00:00.000' AS DateTime), N'Bàn b? h?ng', N'Bàn trong phòng tôi b? h?ng.', N'DataUrl', NULL, N'C08', N'P.315', 1, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'e245a760-834c-4ecf-b799-2cf615e915fe', N'SS183425', CAST(N'2023-10-25T00:00:00.000' AS DateTime), N'Máy chi?u không ho?t d?ng', N'Máy chi?u trong phòng h?p c?a tôi không ho?t d?ng.', N'DataUrl', NULL, N'C07', N'P.314', 1, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'72e684b0-39a7-4163-a55c-2eac5a9bdf84', N'SE171455', CAST(N'2023-09-29T00:00:00.000' AS DateTime), N'Wifi không ho?t d?ng', N'Wifi trong nhà tôi không ho?t d?ng.', N'DataUrl', NULL, N'C12', N'P.408', 0, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'31521a5f-f896-4a10-897d-340a22eccf67', N'SS183425', CAST(N'2023-10-06T00:00:00.000' AS DateTime), N'Nu?c b? t?t', N'Nu?c trong nhà tôi b? t?t.', N'DataUrl', NULL, N'C02', N'P.410', 0, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'db724b23-ef0c-4a12-b13a-347f43a8d9f6', N'SE160990', CAST(N'2023-09-25T00:00:00.000' AS DateTime), N'Vấn đề với bàn', N'Bàn trong phòng bị hỏng', N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Feedback\db724b23-ef0c-4a12-b13a-347f43a8d9f6', NULL, N'C08', N'P.004', 0, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'c6f225a4-6945-4614-82e8-3c8246b311bf', N'SS183425', CAST(N'2023-09-20T00:00:00.000' AS DateTime), N'Vấn đề với nước', N'Nước trong phòng bị rò rỉ', N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Feedback\c6f225a4-6945-4614-82e8-3c8246b311bf', NULL, N'C02', N'P.006', 2, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'4445c055-ff26-498d-beac-3e053b8eaaad', N'SE160643', CAST(N'2023-10-18T00:00:00.000' AS DateTime), N'Nu?c b? t?t', N'Nu?c trong nhà tôi b? t?t.', N'DataUrl', NULL, N'C02', N'NVH 402', 0, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'881af0b1-cdd1-47f1-bf21-4cc24fcacd77', N'SE160990', CAST(N'2023-11-01T00:00:00.000' AS DateTime), N'Loa không ho?t d?ng', N'Loa trong phòng tôi không ho?t d?ng.', N'DataUrl', NULL, N'C10', N'P.406', 1, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'56c7dffb-1e47-4048-8dd5-54e15a5e3a2e', N'SA165555', CAST(N'2023-10-06T00:00:00.000' AS DateTime), N'Tivi h?ng', N'Tivi trong phòng tôi b? h?ng.', N'DataUrl', NULL, N'C03', N'P.412', 1, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'd428b877-d885-4941-88f5-59813e343a15', N'SE170585', CAST(N'2023-10-29T00:00:00.000' AS DateTime), N'Vấn đề với tivi', N'Tivi không hiển thị hình ảnh', N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Feedback\d428b877-d885-4941-88f5-59813e343a15', N'Do chưa cắm dây', N'C03', N'P.007', 4, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'7147d96c-a5a8-4d8a-9ef9-962e09cb184b', N'SE171455', CAST(N'2023-09-28T00:00:00.000' AS DateTime), N'Bình l?c nu?c b? h?ng', N'Bình l?c nu?c trong nhà tôi b? h?ng.', N'DataUrl', NULL, N'C05', N'NVH 405', 0, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'f6bf10a2-e1ba-4a83-8b8b-9af571686222', N'SE172437', CAST(N'2023-09-21T00:00:00.000' AS DateTime), N'Máy chiếu không hoạt động', N'Máy chiếu trong phòng không hoạt động', N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Feedback\f6bf10a2-e1ba-4a83-8b8b-9af571686222', NULL, N'C07', N'NVH 611', 1, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'10301bc5-8f39-4588-8730-a4241875c603', N'SA165555', CAST(N'2023-09-30T00:00:00.000' AS DateTime), N'Vấn đề với thang máy', N'Thang máy không hoạt động', N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Feedback\10301bc5-8f39-4588-8730-a4241875c603', NULL, N'C06', N'NVH 608', 2, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'ce6aedb2-0cca-470d-af1a-a591845184b3', N'SE170585', CAST(N'2023-09-26T00:00:00.000' AS DateTime), N'Ði?u hòa không ho?t d?ng', N'Ði?u hòa trong phòng tôi không ho?t d?ng.', N'DataUrl', NULL, N'C04', N'NVH 404', 0, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'adaa305c-d6ac-409b-9e66-ac4c6d262a7b', N'SS183425', CAST(N'2023-09-21T00:00:00.000' AS DateTime), N'Vấn đề với Wifi', N'Wifi không hoạt động', N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Feedback\adaa305c-d6ac-409b-9e66-ac4c6d262a7b', NULL, N'C12', N'NVH 612', 0, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'8df9be00-d977-4dda-ac34-b3c67321ba66', N'SE160990', CAST(N'2023-10-08T00:00:00.000' AS DateTime), N'Tivi h?ng', N'Tivi trong phòng tôi b? h?ng.', N'DataUrl', NULL, N'C03', N'NVH 403', 1, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'453b49ed-d105-41c4-8946-b6cbf0ace8ae', N'SE170585', CAST(N'2023-09-23T00:00:00.000' AS DateTime), N'Micro không ho?t d?ng', N'Micro trong phòng h?p c?a tôi không ho?t d?ng.', N'DataUrl', NULL, N'C11', N'P.407', 0, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'6b9e5bcd-4113-46bc-b232-cd8b09c406cb', N'SE160643', CAST(N'2023-10-01T00:00:00.000' AS DateTime), N'Vấn đề với micro', N'Micro không thu âm thanh', N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Feedback\6b9e5bcd-4113-46bc-b232-cd8b09c406cb', NULL, N'C11', N'P.002', 2, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'1437996a-9aac-4a4b-81b6-d52da272c95e', N'SE172437', CAST(N'2023-09-29T00:00:00.000' AS DateTime), N'Ði?n b? m?t', N'Ði?n trong phòng tôi b? m?t.', N'DataUrl', NULL, N'C01', N'P.409', 1, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'a8c9bcae-70df-4643-a750-d671eb2fc853', N'SE160643', CAST(N'2023-10-16T00:00:00.000' AS DateTime), N'Gh? b? h?ng', N'Gh? trong phòng tôi b? h?ng.', N'DataUrl', NULL, N'C09', N'P.404', 0, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'0ab53f0d-451b-4630-ab4c-d83f95c1d973', N'SA165555', CAST(N'2023-10-14T00:00:00.000' AS DateTime), N'Vấn đề với loa', N'Loa không phát âm thanh', N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Feedback\0ab53f0d-451b-4630-ab4c-d83f95c1d973', N'Do chưa cắm điện', N'C10', N'P.001', 4, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'772c5e74-dc7c-4721-b8c7-d87b2b30dfb8', N'SE160990', CAST(N'2023-10-26T00:00:00.000' AS DateTime), N'Ghế bị hỏng', N'Ghế trong phòng bị hỏng', N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Feedback\772c5e74-dc7c-4721-b8c7-d87b2b30dfb8', NULL, N'C09', N'NVH 610', 0, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'408a9e18-3030-48a5-8d7a-dacaf75b5016', N'SE160643', CAST(N'2023-09-30T00:00:00.000' AS DateTime), N'Vấn đề với điều hòa', N'Điều hòa không làm lạnh đúng cách', N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Feedback\408a9e18-3030-48a5-8d7a-dacaf75b5016', NULL, N'C04', N'NVH 609', 1, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'1727f991-c979-4edd-8df4-e8942d3217d5', N'SE172437', CAST(N'2023-09-20T00:00:00.000' AS DateTime), N'Thang máy b? h?ng', N'Thang máy trong tòa nhà tôi b? h?ng.', N'DataUrl', NULL, N'C06', N'P.313', 1, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [DataUrl], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'1acfe1d9-c196-4668-aed4-f989a148aa95', N'SA165555', CAST(N'2023-10-01T00:00:00.000' AS DateTime), N'Ði?n b? m?t', N'Ði?n trong phòng tôi b? m?t.', N'DataUrl', NULL, N'C01', N'NVH 401', 1, 0)
GO
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'Hall A_1', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'Hall A_2', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'Hall A_3', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'Hall B_1', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'Hall B_2', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'Hall B_3', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 401', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 402', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 403', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 404', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 405', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 406', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 407', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 408', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 409', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 410', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 411', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 412', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 413', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 414', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 416', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 601', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 602', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 603', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 604', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 605', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 606', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 606.1', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 606.2', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 607', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 608', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 609', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 610', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 611', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 612', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 613', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 614', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 615', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 616', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 617', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 618', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 619', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 620', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 621', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 622', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 623', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 624', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH_606', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH_Hall', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH_Hall 1', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH_Hall 2', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.001', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.002', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.004', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.005', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.006', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.007', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.008', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.010', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.011', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.012', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.013', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.016', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.020', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.021', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.022', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.023', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.024', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.025', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.030', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.033', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.034', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.035', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.036', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.037', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.039', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.101', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.104', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.105', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.106', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.107', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.108', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.110', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.111', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.112', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.115', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.116', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.117', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.118', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.119', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.121', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.122', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.123', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.124', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.125', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.126', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.127', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.130', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.131', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.132', 0)
GO
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.133', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.134', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.136', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.137', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.203', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.204', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.205', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.206', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.207', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.209', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.211', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.212', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.213', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.214', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.215', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.219', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.220', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.221', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.222', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.223', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.224', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.225', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.226', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.227', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.230', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.231', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.232', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.233', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.234', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.301', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.302', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.303', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.304', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.305', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.310', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.311', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.312', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.313', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.314', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.315', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.404', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.406', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.407', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.408', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.409', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.410', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.412', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.413', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.414', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.415', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.419', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.420', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.421', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.422', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.502', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.503', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.504', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.505', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.601', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.602', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.603', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.604', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.605', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.606', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.607', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.608', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.609', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.616', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.617', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.618', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.619', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.Hall A', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.Hall B', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.Hall C', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.LB01', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.LB02', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.LB13', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.Seminar', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.Seminar_TV', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'Sảnh lầu 5_1', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'Sảnh lầu 5_2', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'Sảnh lầu 5_3', 0)
GO
INSERT [dbo].[Tbl_RefreshToken] ([UserId], [TokenId], [RefreshToken]) VALUES (N'SE172437', N'2032157026', N'ZxWtjfelOEmRx7H0IhTzNSxs1j6FjmJHSexP8m2G6a0=')
GO
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'50EB43FE-030A-4B49-ACF6-05ABB619F18F', N'C03')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'50EB43FE-030A-4B49-ACF6-05ABB619F18F', N'C04')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'50EB43FE-030A-4B49-ACF6-05ABB619F18F', N'C05')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'50EB43FE-030A-4B49-ACF6-05ABB619F18F', N'C06')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'50EB43FE-030A-4B49-ACF6-05ABB619F18F', N'C12')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', N'C01')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', N'C02')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', N'C07')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', N'C08')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', N'C09')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'A642D3F3-B4DF-448B-A198-5E902E6395CE', N'C04')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'A642D3F3-B4DF-448B-A198-5E902E6395CE', N'C10')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'A642D3F3-B4DF-448B-A198-5E902E6395CE', N'C11')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'A642D3F3-B4DF-448B-A198-5E902E6395CE', N'C12')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'SE161125', N'C01')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'SE161125', N'C02')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'SE161125', N'C03')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'SE161125', N'C04')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'SE161125', N'C07')
GO
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (N'c14463f2-edbb-4994-aabd-0114d1fd4c67', N'303869fc-4e35-4958-b330-0cf941e9900d', N'50EB43FE-030A-4B49-ACF6-05ABB619F18F', N'SE161231', CAST(N'2023-09-16T00:00:00.000' AS DateTime), N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Task\c14463f2-edbb-4994-aabd-0114d1fd4c67', N'Sửa liền', 2, N'Đã sửa xong')
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (N'2e3fb9b9-5536-4d55-bf6c-018603da3eef', N'e245a760-834c-4ecf-b799-2cf615e915fe', N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', N'239A36CE-4DDA-4486-AA2E-731065263963', CAST(N'2023-09-29T00:00:00.000' AS DateTime), N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Task\2e3fb9b9-5536-4d55-bf6c-018603da3eef', N'Fix trong hôm nay', 0, NULL)
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (N'e360d37f-1c36-407f-a028-15af0e35064b', N'1acfe1d9-c196-4668-aed4-f989a148aa95', N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', N'CD1ED5B9-A924-484F-866D-6DD7D7F0318D', CAST(N'2023-10-04T00:00:00.000' AS DateTime), N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Task\e360d37f-1c36-407f-a028-15af0e35064b', N'Sửa trong hôm nay !!', 0, NULL)
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (N'5bda0131-d7a1-437c-a5e7-25cbe744225f', N'44a1fbed-39cd-4b97-92bf-0d7b681ba92d', N'SE161125', N'SE161231', CAST(N'2023-10-11T00:00:00.000' AS DateTime), N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Task\5bda0131-d7a1-437c-a5e7-25cbe744225f', N'Sửa gấp', 2, N'Xong lúc 17h30')
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (N'b35631cd-6085-4e3d-ac66-2acd6c1d21f2', N'408a9e18-3030-48a5-8d7a-dacaf75b5016', N'50EB43FE-030A-4B49-ACF6-05ABB619F18F', N'3AB3F7F9-AFF1-483C-8F69-B46D5717FD9F', CAST(N'2023-10-15T00:00:00.000' AS DateTime), N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Task\b35631cd-6085-4e3d-ac66-2acd6c1d21f2', N'Liên hệ phòng ... để lấy dụng cụ', 0, NULL)
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (N'f8cf19b6-3725-4724-87ba-41abe1396718', N'1727f991-c979-4edd-8df4-e8942d3217d5', N'50EB43FE-030A-4B49-ACF6-05ABB619F18F', N'CD1ED5B9-A924-484F-866D-6DD7D7F0318D', CAST(N'2023-10-13T00:00:00.000' AS DateTime), N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Task\f8cf19b6-3725-4724-87ba-41abe1396718', N'Sửa gấp', 0, NULL)
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (N'8e6b03fd-216c-472f-bfe1-7b48f9493a53', N'56c7dffb-1e47-4048-8dd5-54e15a5e3a2e', N'SE161125', N'3AB3F7F9-AFF1-483C-8F69-B46D5717FD9F', CAST(N'2023-09-19T00:00:00.000' AS DateTime), N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Task\8e6b03fd-216c-472f-bfe1-7b48f9493a53', N'Deadline ngày mai', 0, NULL)
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (N'a3ede659-2793-489d-8e33-9ac9f3cd3d39', N'10301bc5-8f39-4588-8730-a4241875c603', N'50EB43FE-030A-4B49-ACF6-05ABB619F18F', N'239A36CE-4DDA-4486-AA2E-731065263963', CAST(N'2023-10-04T00:00:00.000' AS DateTime), N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Task\a3ede659-2793-489d-8e33-9ac9f3cd3d39', N'Fix lẹ nha', 2, N'Đã sửa xong')
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (N'ecef0286-60cd-4cd7-af4e-a9fb13b6a3bb', N'f6bf10a2-e1ba-4a83-8b8b-9af571686222', N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', N'3AB3F7F9-AFF1-483C-8F69-B46D5717FD9F', CAST(N'2023-10-27T00:00:00.000' AS DateTime), N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Task\ecef0286-60cd-4cd7-af4e-a9fb13b6a3bb', N'Chiều nay xong nha', 0, NULL)
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (N'8a502747-36d0-4e9a-b3b1-ad0861cc63c2', N'881af0b1-cdd1-47f1-bf21-4cc24fcacd77', N'A642D3F3-B4DF-448B-A198-5E902E6395CE', N'3AB3F7F9-AFF1-483C-8F69-B46D5717FD9F', CAST(N'2023-11-03T00:00:00.000' AS DateTime), N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Task\8a502747-36d0-4e9a-b3b1-ad0861cc63c2', N'Fix trong hôm nay', 0, NULL)
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (N'81b0218f-7b8b-49d0-bf42-b0e6f4e5dc2a', N'6b9e5bcd-4113-46bc-b232-cd8b09c406cb', N'A642D3F3-B4DF-448B-A198-5E902E6395CE', N'239A36CE-4DDA-4486-AA2E-731065263963', CAST(N'2023-10-28T00:00:00.000' AS DateTime), N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Task\81b0218f-7b8b-49d0-bf42-b0e6f4e5dc2a', N'Sửa nhanh cho mấy em nó học !!', 1, N'Có vấn đề ở ...')
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (N'fb32dc6e-8331-4d28-961c-b9891d698de0', N'c6f225a4-6945-4614-82e8-3c8246b311bf', N'SE161125', N'SE161231', CAST(N'2023-10-13T00:00:00.000' AS DateTime), N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Task\fb32dc6e-8331-4d28-961c-b9891d698de0', N'Fix nha!', 3, N'Có vấn đề ở ...')
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (N'983d5547-9b09-43f5-bff7-bc468eb8fd98', N'1b7f0205-aa93-4c14-9b1e-1fa66acfb375', N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', N'239A36CE-4DDA-4486-AA2E-731065263963', CAST(N'2023-11-03T00:00:00.000' AS DateTime), N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Task\983d5547-9b09-43f5-bff7-bc468eb8fd98', N'Fix trong hôm nay', 0, NULL)
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (N'f9dd0ed0-33ce-46c7-a997-def218580f68', N'8df9be00-d977-4dda-ac34-b3c67321ba66', N'SE161125', N'3AB3F7F9-AFF1-483C-8F69-B46D5717FD9F', CAST(N'2023-10-16T00:00:00.000' AS DateTime), N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Task\f9dd0ed0-33ce-46c7-a997-def218580f68', N'Fix nhanh !!', 0, NULL)
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (N'6ac5047f-f7c4-45cd-bfee-ed439c62728d', N'1437996a-9aac-4a4b-81b6-d52da272c95e', N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', N'CD1ED5B9-A924-484F-866D-6DD7D7F0318D', CAST(N'2023-09-24T00:00:00.000' AS DateTime), N'D:\code.Capstone\SWP391-Project\Group4.FacilitiesReport\Group4.FacilitiesReport.API\wwwroot\Uploading\Task\6ac5047f-f7c4-45cd-bfee-ed439c62728d', N'Sửa gấp', 0, NULL)
GO
INSERT [dbo].[tbl_UserRole] ([RoleID], [Description]) VALUES (0, N'Student')
INSERT [dbo].[tbl_UserRole] ([RoleID], [Description]) VALUES (1, N'Manager')
INSERT [dbo].[tbl_UserRole] ([RoleID], [Description]) VALUES (2, N'Task Employee')
INSERT [dbo].[tbl_UserRole] ([RoleID], [Description]) VALUES (3, N'System Handler')
INSERT [dbo].[tbl_UserRole] ([RoleID], [Description]) VALUES (4, N'Lecturer')
INSERT [dbo].[tbl_UserRole] ([RoleID], [Description]) VALUES (5, N'Casual Employee')
GO
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'03ACF346-2D0E-45AF-908E-7A0157D760A7', N'Trương Tuấn Kiệt', N'kiettt@fe.edu.vn', N'12345', 3, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'239A36CE-4DDA-4486-AA2E-731065263963', N'Nguyễn Thị Kiều Trung', N'trungntk@fe.edu.vn', N'12345', 1, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'3AB3F7F9-AFF1-483C-8F69-B46D5717FD9F', N'Nguyễn Trần Hồng Phúc', N'phucnthse172426@fpt.edu.vn', N'12345', 1, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'50EB43FE-030A-4B49-ACF6-05ABB619F18F', N'Nguyễn Trần Phúc', N'phucnt@fe.edu.vn', N'12345', 2, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', N'Hoàng Minh Tiến', N'tienhm@fe.edu.vn', N'12345', 2, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'A642D3F3-B4DF-448B-A198-5E902E6395CE', N'Nguyễn Thế Hoàng', N'hoangnt@fe.edu.vn', N'12345', 2, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'CD1ED5B9-A924-484F-866D-6DD7D7F0318D', N'Nguyễn Lê Gia Bảo', N'baonlg@fe.edu.vn', N'12345', 1, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'SA165555', N'Võ Ngọc Ngạn', N'nganvnsa165555@fpt.edu.vn', N'12345', 0, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'SE160643', N'Lê Ngọc Huỳnh Đức', N'duclnhse160643@fpt.edu.vn', N'12345', 5, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'SE160990', N'Nguyễn Tuấn Lộc', N'locntse160990@fpt.edu.vn', N'12345', 4, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'SE161125', N'Phan Hoàng Duy', N'duyphse161125@fpt.edu.vn', N'12345', 2, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'SE161231', N'Nguyễn Minh Tuấn', N'tuannmse161231@fpt.edu.vn', N'12345', 1, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'SE170585', N'Phạm Bích Ngọc', N'ngocpbse170585@fpt.edu.vn', N'12345', 0, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'SE171455', N'Dương Quang Huy', N'huydq@fpt.edu.vn', N'12345', 0, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'SE172247', N'Võ Bá Nhật Trường', N'truongvbnse172247@fpt.edu.vn', N'12345', 2, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'SE172276', N'Đỗ Văn Hiệp', N'hiepdvse172276@fpt.edu.vn', N'12345', 2, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'SE172277', N'Vũ Lê Lâm Hoàng', N'hoangvllse172277@fpt.edu.vn', N'12345', 2, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'SE172292', N'Võ Minh Mẫn', N'manvmse172292@fpt.edu.vn', N'12345', 2, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'SE172295', N'Nguyễn Đức Linh', N'linhndse172295@fpt.edu.vn', N'12345', 2, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'SE172343', N'Trần Nhựt Minh Tâm', N'tamtnmse172343@fpt.edu.vn', N'12345', 1, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'SE172437', N'Nguyễn Vũ', N'vunse172437@fpt.edu.vn', N'12345', 0, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'SS183425', N'Nguyễn Nhật Ánh', N'anhnnss183425@fpt.edu.vn', N'12345', 0, 0)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbl_Conf__038C0B3A0C84C87D]    Script Date: 11/18/2023 2:41:49 PM ******/
ALTER TABLE [dbo].[tbl_Config] ADD UNIQUE NONCLUSTERED 
(
	[Variable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbl_User__1788CCAD174AB4A3]    Script Date: 11/18/2023 2:41:49 PM ******/
ALTER TABLE [dbo].[tbl_Users] ADD  CONSTRAINT [UQ__tbl_User__1788CCAD174AB4A3] UNIQUE NONCLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbl_User__A9D1053497C877FD]    Script Date: 11/18/2023 2:41:49 PM ******/
ALTER TABLE [dbo].[tbl_Users] ADD  CONSTRAINT [UQ__tbl_User__A9D1053497C877FD] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_Config] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[tbl_Feedback] ADD  CONSTRAINT [DF__tbl_Feedb__Feedb__412EB0B6]  DEFAULT (newid()) FOR [FeedbackID]
GO
ALTER TABLE [dbo].[tbl_Feedback] ADD  CONSTRAINT [DF__tbl_Feedb__Date___4316F928]  DEFAULT (getdate()) FOR [Date_time]
GO
ALTER TABLE [dbo].[tbl_Feedback] ADD  CONSTRAINT [DF__tbl_Feedb__Respo__45F365D3]  DEFAULT (NULL) FOR [Response]
GO
ALTER TABLE [dbo].[tbl_Feedback] ADD  CONSTRAINT [DF__tbl_Feedb__Statu__48CFD27E]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[tbl_Feedback] ADD  CONSTRAINT [DF__tbl_Feedb__Notif__49C3F6B7]  DEFAULT ((0)) FOR [Notify]
GO
ALTER TABLE [dbo].[tbl_Task] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[tbl_Task] ADD  CONSTRAINT [DF__tbl_Task__Date_T__5FB337D6]  DEFAULT (getdate()) FOR [Date_Time]
GO
ALTER TABLE [dbo].[tbl_Task] ADD  CONSTRAINT [DF__tbl_Task__Status__60A75C0F]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[tbl_Users] ADD  CONSTRAINT [DF__tbl_Users__UserI__398D8EEE]  DEFAULT (CONVERT([varchar](36),newid())) FOR [UserID]
GO
ALTER TABLE [dbo].[tbl_Users] ADD  CONSTRAINT [DF__tbl_Users__Statu__3A81B327]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[tbl_Feedback]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Feedb__CateI__46E78A0C] FOREIGN KEY([CateID])
REFERENCES [dbo].[tbl_CategoriesProblem] ([ID])
GO
ALTER TABLE [dbo].[tbl_Feedback] CHECK CONSTRAINT [FK__tbl_Feedb__CateI__46E78A0C]
GO
ALTER TABLE [dbo].[tbl_Feedback]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Feedb__Posit__47DBAE45] FOREIGN KEY([LocationID])
REFERENCES [dbo].[tbl_Location] ([LocationID])
GO
ALTER TABLE [dbo].[tbl_Feedback] CHECK CONSTRAINT [FK__tbl_Feedb__Posit__47DBAE45]
GO
ALTER TABLE [dbo].[tbl_Feedback]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Feedb__UserI__4222D4EF] FOREIGN KEY([UserID])
REFERENCES [dbo].[tbl_Users] ([UserID])
GO
ALTER TABLE [dbo].[tbl_Feedback] CHECK CONSTRAINT [FK__tbl_Feedb__UserI__4222D4EF]
GO
ALTER TABLE [dbo].[tbl_Specialist]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Speci__CateI__534D60F1] FOREIGN KEY([CateID])
REFERENCES [dbo].[tbl_CategoriesProblem] ([ID])
GO
ALTER TABLE [dbo].[tbl_Specialist] CHECK CONSTRAINT [FK__tbl_Speci__CateI__534D60F1]
GO
ALTER TABLE [dbo].[tbl_Specialist]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Speci__UserI__52593CB8] FOREIGN KEY([UserID])
REFERENCES [dbo].[tbl_Users] ([UserID])
GO
ALTER TABLE [dbo].[tbl_Specialist] CHECK CONSTRAINT [FK__tbl_Speci__UserI__52593CB8]
GO
ALTER TABLE [dbo].[tbl_Task]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Task__Employ__5DCAEF64] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[tbl_Users] ([UserID])
GO
ALTER TABLE [dbo].[tbl_Task] CHECK CONSTRAINT [FK__tbl_Task__Employ__5DCAEF64]
GO
ALTER TABLE [dbo].[tbl_Task]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Task__Feedba__5CD6CB2B] FOREIGN KEY([FeedbackID])
REFERENCES [dbo].[tbl_Feedback] ([FeedbackID])
GO
ALTER TABLE [dbo].[tbl_Task] CHECK CONSTRAINT [FK__tbl_Task__Feedba__5CD6CB2B]
GO
ALTER TABLE [dbo].[tbl_Task]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Task__Manage__5EBF139D] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[tbl_Users] ([UserID])
GO
ALTER TABLE [dbo].[tbl_Task] CHECK CONSTRAINT [FK__tbl_Task__Manage__5EBF139D]
GO
ALTER TABLE [dbo].[tbl_Users]  WITH CHECK ADD  CONSTRAINT [FK_tblUser_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[tbl_UserRole] ([RoleID])
GO
ALTER TABLE [dbo].[tbl_Users] CHECK CONSTRAINT [FK_tblUser_RoleID]
GO
/****** Object:  StoredProcedure [dbo].[ExpireFeedback]    Script Date: 11/18/2023 2:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ExpireFeedback]
AS
BEGIN
	DECLARE @myVariable INT
	SELECT @myVariable = Convert(int,[Value])
FROM tbl_Config 
WHERE Variable = 'FeedbackExpiredHour'
  UPDATE tbl_Feedback 
  SET [Status] = 5
  WHERE tbl_Feedback.Date_time <= DATEADD(HOUR, -@myVariable, GETDATE()) AND [status] = 0
END
GO
/****** Object:  StoredProcedure [dbo].[ExpireTask]    Script Date: 11/18/2023 2:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ExpireTask]
AS
BEGIN
	DECLARE @myVariable INT
	SELECT @myVariable = Convert(int,[Value])
FROM tbl_Config 
WHERE Variable = 'TaskExpiredHour'
  UPDATE tbl_Task 
  SET [status] = 4
  WHERE tbl_Task.Date_time <= DATEADD(HOUR, -@myVariable, GETDATE()) AND [status] = 0
END
GO
USE [master]
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET  READ_WRITE 
GO
