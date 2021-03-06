USE [master]
GO
/****** Object:  Database [hci231_MobitelShop]    Script Date: 16.6.2018 0:45:05 ******/
CREATE DATABASE [hci231_MobitelShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'hci231_MobitelShop', FILENAME = N'C:\Program Files (x86)\Parallels\Plesk\Databases\MSSQL\MSSQL12.MSSQLSERVER2014\MSSQL\DATA\hci231_MobitelShop.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'hci231_MobitelShop_log', FILENAME = N'C:\Program Files (x86)\Parallels\Plesk\Databases\MSSQL\MSSQL12.MSSQLSERVER2014\MSSQL\DATA\hci231_MobitelShop_log.ldf' , SIZE = 1024KB , MAXSIZE = 51200KB , FILEGROWTH = 10%)
GO
ALTER DATABASE [hci231_MobitelShop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [hci231_MobitelShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [hci231_MobitelShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [hci231_MobitelShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [hci231_MobitelShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [hci231_MobitelShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [hci231_MobitelShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [hci231_MobitelShop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [hci231_MobitelShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [hci231_MobitelShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [hci231_MobitelShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [hci231_MobitelShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [hci231_MobitelShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [hci231_MobitelShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [hci231_MobitelShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [hci231_MobitelShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [hci231_MobitelShop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [hci231_MobitelShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [hci231_MobitelShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [hci231_MobitelShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [hci231_MobitelShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [hci231_MobitelShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [hci231_MobitelShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [hci231_MobitelShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [hci231_MobitelShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [hci231_MobitelShop] SET  MULTI_USER 
GO
ALTER DATABASE [hci231_MobitelShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [hci231_MobitelShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [hci231_MobitelShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [hci231_MobitelShop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [hci231_MobitelShop] SET DELAYED_DURABILITY = DISABLED 
GO
USE [hci231_MobitelShop]
GO
/****** Object:  User [admin1]    Script Date: 16.6.2018 0:45:05 ******/
CREATE USER [admin1] FOR LOGIN [admin1] WITH DEFAULT_SCHEMA=[admin1]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [admin1]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [admin1]
GO
ALTER ROLE [db_datareader] ADD MEMBER [admin1]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [admin1]
GO
/****** Object:  Schema [admin1]    Script Date: 16.6.2018 0:45:05 ******/
CREATE SCHEMA [admin1]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 16.6.2018 0:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Brendovi]    Script Date: 16.6.2018 0:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brendovi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Brendovi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CpuJezgre]    Script Date: 16.6.2018 0:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CpuJezgre](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BrojJezgri] [int] NOT NULL,
	[Opis] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.CpuJezgre] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kupci]    Script Date: 16.6.2018 0:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kupci](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](max) NULL,
	[Prezime] [nvarchar](max) NULL,
	[DatumRegistracije] [datetime] NOT NULL,
	[Email] [nvarchar](max) NULL,
	[KorisnickoIme] [nvarchar](max) NULL,
	[Lozinka] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Kupci] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Memorija]    Script Date: 16.6.2018 0:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Memorija](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kapacitet] [real] NOT NULL,
 CONSTRAINT [PK_dbo.Memorija] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mobiteli]    Script Date: 16.6.2018 0:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mobiteli](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](max) NULL,
	[Cijena] [real] NOT NULL,
	[Status] [bit] NOT NULL,
	[MemorijaId] [int] NOT NULL,
	[CpuJezgreId] [int] NOT NULL,
	[BrendoviId] [int] NOT NULL,
	[OperativniSistemId] [int] NOT NULL,
	[SlikaUrl] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NarudzbaStavke]    Script Date: 16.6.2018 0:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NarudzbaStavke](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kolicina] [int] NOT NULL,
	[Cijena] [real] NOT NULL,
	[Iznos] [real] NOT NULL,
	[MobiteliId] [int] NOT NULL,
	[NarudzbaId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Narudzbe]    Script Date: 16.6.2018 0:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Narudzbe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BrojNarudzbe] [nvarchar](max) NULL,
	[Datum] [datetime] NOT NULL,
	[UkupniIznos] [real] NOT NULL,
	[KupacId] [int] NOT NULL,
	[StatusNarudzbeId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OperativniSistem]    Script Date: 16.6.2018 0:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperativniSistem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.OperativniSistem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StatusNarudzbe]    Script Date: 16.6.2018 0:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusNarudzbe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.StatusNarudzbe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Uloge]    Script Date: 16.6.2018 0:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uloge](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](max) NULL,
	[Opis] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Uloge] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Uposlenici]    Script Date: 16.6.2018 0:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uposlenici](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](max) NULL,
	[Prezime] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Telefon] [nvarchar](max) NULL,
	[KorisnickoIme] [nvarchar](max) NULL,
	[Lozinka] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
	[UlogeId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Uposlenici] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_UlogeId]    Script Date: 16.6.2018 0:45:05 ******/
CREATE NONCLUSTERED INDEX [IX_UlogeId] ON [dbo].[Uposlenici]
(
	[UlogeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Mobiteli]  WITH CHECK ADD FOREIGN KEY([BrendoviId])
REFERENCES [dbo].[Brendovi] ([Id])
GO
ALTER TABLE [dbo].[Mobiteli]  WITH CHECK ADD FOREIGN KEY([CpuJezgreId])
REFERENCES [dbo].[CpuJezgre] ([Id])
GO
ALTER TABLE [dbo].[Mobiteli]  WITH CHECK ADD FOREIGN KEY([MemorijaId])
REFERENCES [dbo].[Memorija] ([Id])
GO
ALTER TABLE [dbo].[Mobiteli]  WITH CHECK ADD FOREIGN KEY([OperativniSistemId])
REFERENCES [dbo].[OperativniSistem] ([Id])
GO
ALTER TABLE [dbo].[NarudzbaStavke]  WITH CHECK ADD FOREIGN KEY([MobiteliId])
REFERENCES [dbo].[Mobiteli] ([Id])
GO
ALTER TABLE [dbo].[NarudzbaStavke]  WITH CHECK ADD FOREIGN KEY([NarudzbaId])
REFERENCES [dbo].[Narudzbe] ([Id])
GO
ALTER TABLE [dbo].[Narudzbe]  WITH CHECK ADD FOREIGN KEY([KupacId])
REFERENCES [dbo].[Kupci] ([Id])
GO
ALTER TABLE [dbo].[Narudzbe]  WITH CHECK ADD FOREIGN KEY([StatusNarudzbeId])
REFERENCES [dbo].[Kupci] ([Id])
GO
ALTER TABLE [dbo].[Uposlenici]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Uposlenici_dbo.Uloge_Uloge_Id] FOREIGN KEY([UlogeId])
REFERENCES [dbo].[Uloge] ([Id])
GO
ALTER TABLE [dbo].[Uposlenici] CHECK CONSTRAINT [FK_dbo.Uposlenici_dbo.Uloge_Uloge_Id]
GO
/****** Object:  StoredProcedure [admin1].[ms_SelectMobitelByNaziv]    Script Date: 16.6.2018 0:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [admin1].[ms_SelectMobitelByNaziv] 
	@Naziv NVARCHAR(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM Mobiteli
	WHERE Naziv Like '%' + @Naziv + '%'
END

GO
/****** Object:  StoredProcedure [admin1].[ms_SelectNarudzbaStavkeByKupacId]    Script Date: 16.6.2018 0:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [admin1].[ms_SelectNarudzbaStavkeByKupacId] 
	@KupacId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT N.BrojNarudzbe, N.Datum, M.Id as 'MobitelId', B.Naziv +' '+ M.Naziv as 'Naziv', NS.Cijena, 
			NS.Kolicina, M.SlikaUrl
	FROM Brendovi as B JOIN Mobiteli as M 
	ON B.Id = M.BrendoviId JOIN NarudzbaStavke as NS 
	ON M.Id = NS.MobiteliId JOIN Narudzbe as N
	ON NS.NarudzbaId = N.Id
	WHERE N.KupacId = @KupacId
END

GO
USE [master]
GO
ALTER DATABASE [hci231_MobitelShop] SET  READ_WRITE 
GO
