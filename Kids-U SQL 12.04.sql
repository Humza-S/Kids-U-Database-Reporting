USE [master]
GO
/****** Object:  Database [kidsU]    Script Date: 12/4/2019 3:36:21 PM ******/
CREATE DATABASE [kidsU]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kidsU', FILENAME = N'C:\C\Soft\Microsoft SQL server 2019\MSSQL15.MSSQLSERVER\MSSQL\DATA\kidsU.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'kidsU_log', FILENAME = N'C:\C\Soft\Microsoft SQL server 2019\MSSQL15.MSSQLSERVER\MSSQL\DATA\kidsU_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [kidsU] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kidsU].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kidsU] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [kidsU] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [kidsU] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [kidsU] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [kidsU] SET ARITHABORT OFF 
GO
ALTER DATABASE [kidsU] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [kidsU] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [kidsU] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [kidsU] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [kidsU] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [kidsU] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [kidsU] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [kidsU] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [kidsU] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [kidsU] SET  DISABLE_BROKER 
GO
ALTER DATABASE [kidsU] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [kidsU] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [kidsU] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [kidsU] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [kidsU] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [kidsU] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [kidsU] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [kidsU] SET RECOVERY FULL 
GO
ALTER DATABASE [kidsU] SET  MULTI_USER 
GO
ALTER DATABASE [kidsU] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [kidsU] SET DB_CHAINING OFF 
GO
ALTER DATABASE [kidsU] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [kidsU] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [kidsU] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'kidsU', N'ON'
GO
ALTER DATABASE [kidsU] SET QUERY_STORE = OFF
GO
USE [kidsU]
GO
/****** Object:  Table [dbo].[language_arts]    Script Date: 12/4/2019 3:36:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[language_arts](
	[first] [int] NULL,
	[second] [int] NULL,
	[third] [int] NULL,
	[fourth] [int] NULL,
	[fifth] [int] NULL,
	[semester] [int] NOT NULL,
	[student_Unique_ID] [int] NOT NULL,
 CONSTRAINT [PK_language_arts] PRIMARY KEY CLUSTERED 
(
	[student_Unique_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[math]    Script Date: 12/4/2019 3:36:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[math](
	[first] [int] NULL,
	[second] [int] NULL,
	[third] [int] NULL,
	[fourth] [int] NULL,
	[fifth] [int] NULL,
	[semester] [int] NOT NULL,
	[student_Unique_ID] [int] NOT NULL,
 CONSTRAINT [PK_math] PRIMARY KEY CLUSTERED 
(
	[student_Unique_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[organizations]    Script Date: 12/4/2019 3:36:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[organizations](
	[organization_name] [varchar](50) NOT NULL,
	[program_Number] [varchar](50) NULL,
	[is_Active] [tinyint] NOT NULL,
 CONSTRAINT [PK_organizations] PRIMARY KEY CLUSTERED 
(
	[organization_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[outcome_measurement]    Script Date: 12/4/2019 3:36:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[outcome_measurement](
	[grade] [varchar](50) NOT NULL,
	[math_Pre_Test] [int] NOT NULL,
	[math_Post_Test] [int] NOT NULL,
	[language_Pre_Test] [int] NOT NULL,
	[language_Post_Test] [int] NOT NULL,
	[reading_Pre_Test] [int] NOT NULL,
	[reading_Fluency_Test_1] [int] NOT NULL,
	[reading_Fluency_Test_2] [int] NOT NULL,
	[reading_Fluency_Test_3] [int] NOT NULL,
	[self_Esteem_Pre_Test] [int] NOT NULL,
	[self_Esteem_Post_Test] [int] NOT NULL,
	[student_Unique_ID] [int] NOT NULL,
 CONSTRAINT [PK_outcome_measurement] PRIMARY KEY CLUSTERED 
(
	[student_Unique_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[program_facility_sites]    Script Date: 12/4/2019 3:36:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[program_facility_sites](
	[facility_Name] [varchar](50) NOT NULL,
	[is_Active] [tinyint] NOT NULL,
 CONSTRAINT [PK_program_Facility_Sites] PRIMARY KEY CLUSTERED 
(
	[facility_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reading]    Script Date: 12/4/2019 3:36:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reading](
	[first] [int] NULL,
	[second] [int] NULL,
	[third] [int] NULL,
	[fourth] [int] NULL,
	[fifth] [int] NULL,
	[semester] [int] NOT NULL,
	[student_Unique_ID] [int] NOT NULL,
 CONSTRAINT [PK_reading] PRIMARY KEY CLUSTERED 
(
	[student_Unique_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_card]    Script Date: 12/4/2019 3:36:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_card](
	[student_Unique_ID] [int] NOT NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [PK_report_card] PRIMARY KEY CLUSTERED 
(
	[student_Unique_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[school_districts]    Script Date: 12/4/2019 3:36:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[school_districts](
	[district_name] [varchar](50) NOT NULL,
	[is_active] [tinyint] NOT NULL,
 CONSTRAINT [PK_school_districts] PRIMARY KEY CLUSTERED 
(
	[district_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schools]    Script Date: 12/4/2019 3:36:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schools](
	[school_name] [varchar](50) NOT NULL,
	[district_name] [varchar](50) NOT NULL,
	[is_active] [tinyint] NOT NULL,
 CONSTRAINT [PK_schools] PRIMARY KEY CLUSTERED 
(
	[school_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[staff_directory]    Script Date: 12/4/2019 3:36:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff_directory](
	[email] [varchar](50) NOT NULL,
	[assigned_site] [varchar](50) NULL,
	[role] [varchar](50) NULL,
	[is_Active] [tinyint] NOT NULL,
 CONSTRAINT [PK_staff_directory] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[students]    Script Date: 12/4/2019 3:36:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[students](
	[student_Unique_ID] [int] NOT NULL,
	[first_Name] [varchar](50) NOT NULL,
	[last_Name] [varchar](50) NOT NULL,
	[school_Grade] [varchar](2) NOT NULL,
	[kids_U_Site] [varchar](50) NOT NULL,
	[gender] [varchar](50) NOT NULL,
	[income] [varchar](50) NOT NULL,
	[ethnicity] [varchar](50) NOT NULL,
	[enrolled] [varchar](13) NOT NULL,
	[lunch] [varchar](15) NOT NULL,
	[school_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_students] PRIMARY KEY CLUSTERED 
(
	[student_Unique_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_staff_directory]    Script Date: 12/4/2019 3:36:21 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ_staff_directory] ON [dbo].[staff_directory]
(
	[assigned_site] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[language_arts]  WITH CHECK ADD  CONSTRAINT [FK_language_arts_report_card] FOREIGN KEY([student_Unique_ID])
REFERENCES [dbo].[report_card] ([student_Unique_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[language_arts] CHECK CONSTRAINT [FK_language_arts_report_card]
GO
ALTER TABLE [dbo].[math]  WITH CHECK ADD  CONSTRAINT [FK_math_report_card] FOREIGN KEY([student_Unique_ID])
REFERENCES [dbo].[report_card] ([student_Unique_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[math] CHECK CONSTRAINT [FK_math_report_card]
GO
ALTER TABLE [dbo].[outcome_measurement]  WITH CHECK ADD  CONSTRAINT [FK_outcome_measurement_students] FOREIGN KEY([student_Unique_ID])
REFERENCES [dbo].[students] ([student_Unique_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[outcome_measurement] CHECK CONSTRAINT [FK_outcome_measurement_students]
GO
ALTER TABLE [dbo].[program_facility_sites]  WITH CHECK ADD  CONSTRAINT [FK_program_facility_sites_staff_directory] FOREIGN KEY([facility_Name])
REFERENCES [dbo].[staff_directory] ([assigned_site])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[program_facility_sites] CHECK CONSTRAINT [FK_program_facility_sites_staff_directory]
GO
ALTER TABLE [dbo].[reading]  WITH CHECK ADD  CONSTRAINT [FK_reading_report_card] FOREIGN KEY([student_Unique_ID])
REFERENCES [dbo].[report_card] ([student_Unique_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[reading] CHECK CONSTRAINT [FK_reading_report_card]
GO
ALTER TABLE [dbo].[report_card]  WITH CHECK ADD  CONSTRAINT [FK_report_card_students] FOREIGN KEY([student_Unique_ID])
REFERENCES [dbo].[students] ([student_Unique_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[report_card] CHECK CONSTRAINT [FK_report_card_students]
GO
ALTER TABLE [dbo].[schools]  WITH CHECK ADD  CONSTRAINT [FK_schools_school_districts] FOREIGN KEY([school_name])
REFERENCES [dbo].[school_districts] ([district_name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[schools] CHECK CONSTRAINT [FK_schools_school_districts]
GO
ALTER TABLE [dbo].[students]  WITH CHECK ADD  CONSTRAINT [FK_students_schools1] FOREIGN KEY([school_name])
REFERENCES [dbo].[schools] ([school_name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[students] CHECK CONSTRAINT [FK_students_schools1]
GO
USE [master]
GO
ALTER DATABASE [kidsU] SET  READ_WRITE 
GO
