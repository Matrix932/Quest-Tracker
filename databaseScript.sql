USE [master]
GO
/****** Object:  Database [DemoProject]    Script Date: 1/26/2022 11:38:22 AM ******/
CREATE DATABASE [DemoProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DemoProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DemoProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DemoProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DemoProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DemoProject] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DemoProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DemoProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DemoProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DemoProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DemoProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DemoProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [DemoProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DemoProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DemoProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DemoProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DemoProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DemoProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DemoProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DemoProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DemoProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DemoProject] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DemoProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DemoProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DemoProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DemoProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DemoProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DemoProject] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DemoProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DemoProject] SET RECOVERY FULL 
GO
ALTER DATABASE [DemoProject] SET  MULTI_USER 
GO
ALTER DATABASE [DemoProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DemoProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DemoProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DemoProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DemoProject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DemoProject] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DemoProject', N'ON'
GO
ALTER DATABASE [DemoProject] SET QUERY_STORE = OFF
GO
USE [DemoProject]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/26/2022 11:38:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/26/2022 11:38:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/26/2022 11:38:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/26/2022 11:38:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/26/2022 11:38:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/26/2022 11:38:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/26/2022 11:38:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/26/2022 11:38:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 1/26/2022 11:38:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[CompletionDate] [datetime2](7) NULL,
	[CurrentStatus] [nvarchar](max) NULL,
	[Priority] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 1/26/2022 11:38:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[Priority] [int] NOT NULL,
	[ProjectID] [int] NOT NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211206184326_AddIDentityTable', N'5.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211207121011_AddApplicationUser', N'5.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211207223816_AddedProjectAndTask', N'5.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211207234033_FixedProjectDate', N'5.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211208115954_AddedDescriptionToProject', N'5.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211208132759_ProjectValidation', N'5.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211209181546_UpdatedTask', N'5.0.11')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'26c8abbb-386d-494c-ab8e-1885c684b9b3', N'Intern', N'INTERN', N'a0b7b134-681d-4e97-a25e-31df05cbba33')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3e389c11-d68d-4fe9-a293-c3ac4493f5c8', N'Admin', N'ADMIN', N'aee3ae1f-dc3b-4800-a4e6-e1c6b2ba9cfd')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ccda6590-b378-45d7-8556-cbd71e47949d', N'Developer', N'DEVELOPER', N'b48b9243-2dcb-4c77-9ebb-7be40bc9b2b6')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e1ac7402-a6ec-4f7e-bddd-7322cf225069', N'26c8abbb-386d-494c-ab8e-1885c684b9b3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'18e0e398-826b-4579-a4d7-0ca8caa49e06', N'3e389c11-d68d-4fe9-a293-c3ac4493f5c8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'025f7042-b39f-4c79-802a-1e695ce7eee6', N'ccda6590-b378-45d7-8556-cbd71e47949d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4ecc2f75-1750-4189-a00f-180c694363f3', N'ccda6590-b378-45d7-8556-cbd71e47949d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ae2a4f2a-6eb5-432a-8260-d052713e005a', N'ccda6590-b378-45d7-8556-cbd71e47949d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c67967c6-1d0d-488b-ad7e-e5c253ef1b6a', N'ccda6590-b378-45d7-8556-cbd71e47949d')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'025f7042-b39f-4c79-802a-1e695ce7eee6', N'stevica@gmail.com', N'STEVICA@GMAIL.COM', N'stevica@gmail.com', N'STEVICA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEP3RFNV1XCQ3iKVMiqRVgGlfeC0F5bie8R6KS2FzNzzeG5m6akJG125cwLv8b+vnA==', N'ZIWOBR2FSTKW2RZDOWG4PGREIETXJRZY', N'c37489dd-7155-4896-b7b6-b86f649cb523', NULL, 0, 0, NULL, 1, 0, N'stevica')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'18e0e398-826b-4579-a4d7-0ca8caa49e06', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEN7FmBK2ir70HnBAjrCaesiL8/zBtUGatmHrfdBMhyjM8Ea8VPS4IvAoOrL3WwXntA==', N'UBL4UHGWYXHPXZPZOHGSIQ3LDNVGX37L', N'91e36a83-40bb-485f-8133-0ebfa874e587', NULL, 0, 0, NULL, 1, 0, N'admin')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'4ecc2f75-1750-4189-a00f-180c694363f3', N'dev@gmail.com', N'DEV@GMAIL.COM', N'dev@gmail.com', N'DEV@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDwyeDazJMYVSZPiRXoJ6Pbl+KApu/gMfppYPIiImfcf9ClTnC0aqEjXNs3O5PykNw==', N'THDGONZUGVABLXDKDDBRKUN7VLMIWGR7', N'89dd5381-a2ab-4db5-9ce2-528a04fc4f3c', NULL, 0, 0, NULL, 1, 0, N'dev')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'ae2a4f2a-6eb5-432a-8260-d052713e005a', N'test@gmail.com', N'TEST@GMAIL.COM', N'test@gmail.com', N'TEST@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMaNcpm18zk/LcEOa2QtuQ8pdQuqDgF+4aok4PQaOpCHPQnzj10GVS0WR1wv/hwS4Q==', N'42ZJTZIJR34WY63C3NJLETNRG4SOFI3Q', N'86b470b9-5257-4616-a9eb-956333f36943', NULL, 0, 0, NULL, 1, 0, N'test')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'c67967c6-1d0d-488b-ad7e-e5c253ef1b6a', N'delete@gmail.com', N'DELETE@GMAIL.COM', N'delete@gmail.com', N'DELETE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFY3GMWfya36eLkbtj+zrVij6Oiwqat8G+Hp4PEWix9dR4DvIk5Jy6OS3OBa3G3bcA==', N'I4QANAHSCK5M56OHCCRET4KLSU6ZLQJ3', N'2832acd4-ca27-4cf2-817e-5d18dc6243c8', NULL, 0, 0, NULL, 1, 0, N'DeleteMe')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'e1ac7402-a6ec-4f7e-bddd-7322cf225069', N'novi@gmail.com', N'NOVI@GMAIL.COM', N'novi@gmail.com', N'NOVI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJICcJjsySuOLQnWzGuPVUe6gTSiIq/Rr1SEfRdA7J3350sShQYmM5Jvm2wv0mjAXg==', N'36Y6PMLMESVNIJOTE3OQWS66ZAHQKJ42', N'99ec45d6-036f-411b-aba0-97a25d4de7c6', NULL, 0, 0, NULL, 1, 0, N'novi')
GO
SET IDENTITY_INSERT [dbo].[Projects] ON 

INSERT [dbo].[Projects] ([Id], [Name], [StartDate], [CompletionDate], [CurrentStatus], [Priority], [Description]) VALUES (2, N'Skynet', CAST(N'2021-01-11T00:00:00.0000000' AS DateTime2), NULL, N'Active', 7, N'Skynet is loking forward to bring automatation to the most basic and essential human behaviurs')
INSERT [dbo].[Projects] ([Id], [Name], [StartDate], [CompletionDate], [CurrentStatus], [Priority], [Description]) VALUES (3, N'Micro Verse', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, N'Completed', 9, N'Micro Verse a place of endless possibility and oportunity, we are looking forward to  seeing you there')
INSERT [dbo].[Projects] ([Id], [Name], [StartDate], [CompletionDate], [CurrentStatus], [Priority], [Description]) VALUES (11, N'strahinja', CAST(N'2021-12-09T00:00:00.0000000' AS DateTime2), NULL, N'Not started', 1, N'dasfsfasf')
INSERT [dbo].[Projects] ([Id], [Name], [StartDate], [CompletionDate], [CurrentStatus], [Priority], [Description]) VALUES (15, N'Delete', CAST(N'2021-12-25T00:00:00.0000000' AS DateTime2), NULL, N'Completed', 2, N'Helo whatsup')
SET IDENTITY_INSERT [dbo].[Projects] OFF
GO
SET IDENTITY_INSERT [dbo].[Tasks] ON 

INSERT [dbo].[Tasks] ([Id], [Name], [Description], [Status], [Priority], [ProjectID]) VALUES (22, N'Test', N'Test', N'In progress', 1, 3)
INSERT [dbo].[Tasks] ([Id], [Name], [Description], [Status], [Priority], [ProjectID]) VALUES (23, N'strahinja', N'sdas', N'In progress', 1, 3)
INSERT [dbo].[Tasks] ([Id], [Name], [Description], [Status], [Priority], [ProjectID]) VALUES (24, N'strahinja', N'Delete', N'To do', 2, 3)
INSERT [dbo].[Tasks] ([Id], [Name], [Description], [Status], [Priority], [ProjectID]) VALUES (25, N'2', NULL, N'Done', 2, 3)
INSERT [dbo].[Tasks] ([Id], [Name], [Description], [Status], [Priority], [ProjectID]) VALUES (26, N'3', NULL, N'To do', 3, 3)
INSERT [dbo].[Tasks] ([Id], [Name], [Description], [Status], [Priority], [ProjectID]) VALUES (27, N'4', NULL, N'In progress', 4, 3)
SET IDENTITY_INSERT [dbo].[Tasks] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 1/26/2022 11:38:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1/26/2022 11:38:23 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 1/26/2022 11:38:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 1/26/2022 11:38:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 1/26/2022 11:38:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 1/26/2022 11:38:23 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/26/2022 11:38:23 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_ProjectID]    Script Date: 1/26/2022 11:38:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_ProjectID] ON [dbo].[Tasks]
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Projects] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[Tasks] ADD  DEFAULT ((0)) FOR [ProjectID]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Projects_ProjectID] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Projects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Projects_ProjectID]
GO
USE [master]
GO
ALTER DATABASE [DemoProject] SET  READ_WRITE 
GO
