USE [master]
GO
/****** Object:  Database [FacilitiesFeedbackManagement_SWP391]    Script Date: 11/15/2023 11:07:07 AM ******/
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
/****** Object:  Table [dbo].[tbl_CategoriesProblem]    Script Date: 11/15/2023 11:07:07 AM ******/
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
/****** Object:  Table [dbo].[tbl_Config]    Script Date: 11/15/2023 11:07:08 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Variable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Feedback]    Script Date: 11/15/2023 11:07:08 AM ******/
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
/****** Object:  Table [dbo].[tbl_Location]    Script Date: 11/15/2023 11:07:08 AM ******/
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
/****** Object:  Table [dbo].[Tbl_RefreshToken]    Script Date: 11/15/2023 11:07:08 AM ******/
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
/****** Object:  Table [dbo].[tbl_Specialist]    Script Date: 11/15/2023 11:07:08 AM ******/
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
/****** Object:  Table [dbo].[tbl_Task]    Script Date: 11/15/2023 11:07:08 AM ******/
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
/****** Object:  Table [dbo].[tbl_UserRole]    Script Date: 11/15/2023 11:07:08 AM ******/
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
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 11/15/2023 11:07:08 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__tbl_User__1788CCAD174AB4A3] UNIQUE NONCLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__tbl_User__A9D1053497C877FD] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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
/****** Object:  StoredProcedure [dbo].[ExpireFeedback]    Script Date: 11/15/2023 11:07:08 AM ******/
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
/****** Object:  StoredProcedure [dbo].[ExpireTask]    Script Date: 11/15/2023 11:07:08 AM ******/
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
