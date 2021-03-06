USE [master]
GO
/****** Object:  Database [Film veritabanı (vize ödevi)]    Script Date: 4.12.2020 16:47:35 ******/
CREATE DATABASE [Film veritabanı (vize ödevi)]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Film veritabanı (vize ödevi)', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Film veritabanı (vize ödevi).mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Film veritabanı (vize ödevi)_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Film veritabanı (vize ödevi)_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Film veritabanı (vize ödevi)].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET ARITHABORT OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET RECOVERY FULL 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET  MULTI_USER 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Film veritabanı (vize ödevi)', N'ON'
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET QUERY_STORE = OFF
GO
USE [Film veritabanı (vize ödevi)]
GO
/****** Object:  Table [dbo].[Başrol_Oyuncular]    Script Date: 4.12.2020 16:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Başrol_Oyuncular](
	[Oyuncu_ID] [int] IDENTITY(1,1) NOT NULL,
	[Oyuncu_Ad] [varchar](20) NOT NULL,
	[Oyuncu_Soyad] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Oyuncu_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Film_Turler]    Script Date: 4.12.2020 16:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Film_Turler](
	[Tur_ID] [int] IDENTITY(1,1) NOT NULL,
	[Tur_Ad] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Tur_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filmler]    Script Date: 4.12.2020 16:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filmler](
	[Film_ID] [int] IDENTITY(1,1) NOT NULL,
	[Film_Ad] [varchar](25) NOT NULL,
	[Tarih] [int] NOT NULL,
	[IMDB_Puan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Film_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yoneticiler]    Script Date: 4.12.2020 16:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yoneticiler](
	[Yonetici_ID] [int] IDENTITY(1,1) NOT NULL,
	[Yonetmen] [varchar](20) NOT NULL,
	[Yapimci] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Yonetici_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Başrol_Oyuncular] ON 

INSERT [dbo].[Başrol_Oyuncular] ([Oyuncu_ID], [Oyuncu_Ad], [Oyuncu_Soyad]) VALUES (1, N'Morgan', N'Freeman')
INSERT [dbo].[Başrol_Oyuncular] ([Oyuncu_ID], [Oyuncu_Ad], [Oyuncu_Soyad]) VALUES (2, N'Al', N'Pacino')
INSERT [dbo].[Başrol_Oyuncular] ([Oyuncu_ID], [Oyuncu_Ad], [Oyuncu_Soyad]) VALUES (3, N'Heath', N'Ledger')
INSERT [dbo].[Başrol_Oyuncular] ([Oyuncu_ID], [Oyuncu_Ad], [Oyuncu_Soyad]) VALUES (4, N'Henry', N'Fonda')
INSERT [dbo].[Başrol_Oyuncular] ([Oyuncu_ID], [Oyuncu_Ad], [Oyuncu_Soyad]) VALUES (5, N'Ray', N'Liotta')
INSERT [dbo].[Başrol_Oyuncular] ([Oyuncu_ID], [Oyuncu_Ad], [Oyuncu_Soyad]) VALUES (6, N'Matthew', N'McConaughey')
INSERT [dbo].[Başrol_Oyuncular] ([Oyuncu_ID], [Oyuncu_Ad], [Oyuncu_Soyad]) VALUES (7, N'Tom', N'Hanks')
INSERT [dbo].[Başrol_Oyuncular] ([Oyuncu_ID], [Oyuncu_Ad], [Oyuncu_Soyad]) VALUES (8, N'Brad', N'Pitt')
INSERT [dbo].[Başrol_Oyuncular] ([Oyuncu_ID], [Oyuncu_Ad], [Oyuncu_Soyad]) VALUES (9, N'Joaquin', N'Phoenix')
INSERT [dbo].[Başrol_Oyuncular] ([Oyuncu_ID], [Oyuncu_Ad], [Oyuncu_Soyad]) VALUES (10, N'Kevin', N'Bacon')
INSERT [dbo].[Başrol_Oyuncular] ([Oyuncu_ID], [Oyuncu_Ad], [Oyuncu_Soyad]) VALUES (11, N'Russell', N'Crowe')
INSERT [dbo].[Başrol_Oyuncular] ([Oyuncu_ID], [Oyuncu_Ad], [Oyuncu_Soyad]) VALUES (12, N'Saoirse', N'Ronan')
SET IDENTITY_INSERT [dbo].[Başrol_Oyuncular] OFF
GO
SET IDENTITY_INSERT [dbo].[Film_Turler] ON 

INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (1, N'Drama')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (2, N'Suç')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (3, N'Aksiyon')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (4, N'Drama')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (5, N'Suç')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (6, N'Bilimkurgu')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (7, N'Drama')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (8, N'Gerilim')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (9, N'Gerilim')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (10, N'Drama')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (11, N'Drama')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (12, N'Drama')
SET IDENTITY_INSERT [dbo].[Film_Turler] OFF
GO
SET IDENTITY_INSERT [dbo].[Filmler] ON 

INSERT [dbo].[Filmler] ([Film_ID], [Film_Ad], [Tarih], [IMDB_Puan]) VALUES (1, N'Esaretin Bedeli', 1994, 9)
INSERT [dbo].[Filmler] ([Film_ID], [Film_Ad], [Tarih], [IMDB_Puan]) VALUES (2, N'Baba', 1972, 9)
INSERT [dbo].[Filmler] ([Film_ID], [Film_Ad], [Tarih], [IMDB_Puan]) VALUES (3, N'Kara Şovalye', 2008, 9)
INSERT [dbo].[Filmler] ([Film_ID], [Film_Ad], [Tarih], [IMDB_Puan]) VALUES (4, N'12 Öfkeli Adam', 1957, 9)
INSERT [dbo].[Filmler] ([Film_ID], [Film_Ad], [Tarih], [IMDB_Puan]) VALUES (5, N'Sıkı Dostlar', 1990, 8)
INSERT [dbo].[Filmler] ([Film_ID], [Film_Ad], [Tarih], [IMDB_Puan]) VALUES (6, N'Yıldızlararası', 2014, 8)
INSERT [dbo].[Filmler] ([Film_ID], [Film_Ad], [Tarih], [IMDB_Puan]) VALUES (7, N'Yeşil Yol', 1999, 8)
INSERT [dbo].[Filmler] ([Film_ID], [Film_Ad], [Tarih], [IMDB_Puan]) VALUES (8, N'Yedi', 1995, 8)
INSERT [dbo].[Filmler] ([Film_ID], [Film_Ad], [Tarih], [IMDB_Puan]) VALUES (9, N'Joker', 2019, 8)
INSERT [dbo].[Filmler] ([Film_ID], [Film_Ad], [Tarih], [IMDB_Puan]) VALUES (10, N'Gizemli Nehir', 2003, 7)
INSERT [dbo].[Filmler] ([Film_ID], [Film_Ad], [Tarih], [IMDB_Puan]) VALUES (11, N'Son Umut', 2006, 7)
INSERT [dbo].[Filmler] ([Film_ID], [Film_Ad], [Tarih], [IMDB_Puan]) VALUES (12, N'Küçük Kadınlar', 2019, 7)
SET IDENTITY_INSERT [dbo].[Filmler] OFF
GO
SET IDENTITY_INSERT [dbo].[Yoneticiler] ON 

INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (1, N'Frank Darabont', N'Niki Marvin')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (2, N'Francis Ford Coppola', N'Francis Ford Coppola')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (3, N'Cristopher Nolan', N'Cristopher Nolan')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (4, N'Sidney Lumet', N'Henry Fonda')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (5, N'Martin Scorsese', N'Irwin Winkler')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (6, N'Christopher Nolan', N'Emma Thomas')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (7, N'Frank Darabont', N'Frank Darabont')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (8, N'Andrew Kopelson', N'Andrew Kevin Walker')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (9, N'Todd Philips', N'Todd Philips')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (10, N'Clint Eastwood', N'Robert Lorenz')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (11, N'Russell Crowe', N'Troy Lum')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (12, N'Greta Gerwig', N'Amy Pascal')
SET IDENTITY_INSERT [dbo].[Yoneticiler] OFF
GO
ALTER TABLE [dbo].[Başrol_Oyuncular]  WITH CHECK ADD  CONSTRAINT [FK_Başrol_Oyuncular_Filmler] FOREIGN KEY([Oyuncu_ID])
REFERENCES [dbo].[Filmler] ([Film_ID])
GO
ALTER TABLE [dbo].[Başrol_Oyuncular] CHECK CONSTRAINT [FK_Başrol_Oyuncular_Filmler]
GO
ALTER TABLE [dbo].[Film_Turler]  WITH CHECK ADD  CONSTRAINT [FK_Film_Turler_Filmler] FOREIGN KEY([Tur_ID])
REFERENCES [dbo].[Filmler] ([Film_ID])
GO
ALTER TABLE [dbo].[Film_Turler] CHECK CONSTRAINT [FK_Film_Turler_Filmler]
GO
ALTER TABLE [dbo].[Yoneticiler]  WITH CHECK ADD  CONSTRAINT [FK_Yoneticiler_Filmler] FOREIGN KEY([Yonetici_ID])
REFERENCES [dbo].[Filmler] ([Film_ID])
GO
ALTER TABLE [dbo].[Yoneticiler] CHECK CONSTRAINT [FK_Yoneticiler_Filmler]
GO
USE [master]
GO
ALTER DATABASE [Film veritabanı (vize ödevi)] SET  READ_WRITE 
GO
