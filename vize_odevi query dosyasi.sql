
USE [Film veritabaný (vize ödevi)]


SELECT F.Film_ID, F.Film_Ad, FT.Tur_Ad, BO.Oyuncu_Ad, BO.Oyuncu_Soyad, Y.Yonetmen, Y.Yapimci FROM Filmler F INNER JOIN Baþrol_Oyuncular BO ON F.Film_ID = BO.Oyuncu_ID INNER JOIN Yoneticiler Y ON F.Film_ID = Y.Yonetici_ID INNER JOIN Film_Turler FT ON F.Film_ID = FT.Tur_ID;



CREATE TABLE Filmler
(
Film_ID int IDENTITY(1,1) NOT NULL,
Ad varchar(25) NOT NULL,
Tarih int NOT NULL,
IMDB_Puan int NULL,

PRIMARY KEY CLUSTERED
(
	Film_ID ASC
) ON [PRIMARY]

);

INSERT INTO Filmler (Ad, Tarih,IMDB_Puan) VALUES ('Esaretin Bedeli', 1994,9) 
INSERT INTO Filmler (Ad, Tarih,IMDB_Puan) VALUES ('Baba', 1972,9) 
INSERT INTO Filmler (Ad, Tarih,IMDB_Puan) VALUES ('Kara Þovalye', 2008,9)
INSERT INTO Filmler (Ad, Tarih,IMDB_Puan) VALUES ('12 Öfkeli Adam', 1957,9) 
INSERT INTO Filmler (Ad, Tarih,IMDB_Puan) VALUES ('Sýký Dostlar', 1990,8)
INSERT INTO Filmler (Ad, Tarih,IMDB_Puan) VALUES ('Yýldýzlararasý', 2014,8)
INSERT INTO Filmler (Ad, Tarih,IMDB_Puan) VALUES ('Yeþil Yol', 1999,8)
INSERT INTO Filmler (Ad, Tarih,IMDB_Puan) VALUES ('Yedi', 1995,8) 
INSERT INTO Filmler (Ad, Tarih,IMDB_Puan) VALUES ('Joker', 2019,8)
INSERT INTO Filmler (Ad, Tarih,IMDB_Puan) VALUES ('Gizemli Nehir', 2003,7)
INSERT INTO Filmler (Ad, Tarih,IMDB_Puan) VALUES ('Son Umut', 2006,7) 
INSERT INTO Filmler (Ad, Tarih,IMDB_Puan) VALUES ('Küçük Kadýnlar', 2019,7)


SELECT * FROM Filmler


CREATE TABLE Film_Turler 
(
Tur_ID int IDENTITY(1,1),
Tur_Ad varchar(20) NOT NULL,

PRIMARY KEY CLUSTERED
(
	Tur_ID ASC
) ON [PRIMARY]

);

INSERT INTO Film_Turler(Tur_Ad) VALUES ('Drama')
INSERT INTO Film_Turler(Tur_Ad) VALUES ('Suç')
INSERT INTO Film_Turler(Tur_Ad) VALUES ('Aksiyon')
INSERT INTO Film_Turler(Tur_Ad) VALUES ('Drama')
INSERT INTO Film_Turler(Tur_Ad) VALUES ('Suç')
INSERT INTO Film_Turler(Tur_Ad) VALUES ('Bilimkurgu')
INSERT INTO Film_Turler(Tur_Ad) VALUES ('Drama')
INSERT INTO Film_Turler(Tur_Ad) VALUES ('Gerilim')
INSERT INTO Film_Turler(Tur_Ad) VALUES ('Gerilim')
INSERT INTO Film_Turler(Tur_Ad) VALUES ('Drama')
INSERT INTO Film_Turler(Tur_Ad) VALUES ('Drama')
INSERT INTO Film_Turler(Tur_Ad) VALUES ('Drama')

SELECT * FROM Film_Turler

CREATE TABLE Baþrol_Oyuncular 
(
Oyuncu_ID int IDENTITY(1,1),
Ad varchar(20) NOT NULL,
Soyad varchar(30) NOT NULL,

PRIMARY KEY CLUSTERED
(
	Oyuncu_ID ASC
) ON [PRIMARY]

);


INSERT INTO Baþrol_Oyuncular (Ad, Soyad) VALUES ('Morgan', 'Freeman')
INSERT INTO Baþrol_Oyuncular (Ad, Soyad) VALUES ('Al', 'Pacino')
INSERT INTO Baþrol_Oyuncular (Ad, Soyad) VALUES ('Heath', 'Ledger')
INSERT INTO Baþrol_Oyuncular (Ad, Soyad) VALUES ('Henry', 'Fonda')
INSERT INTO Baþrol_Oyuncular (Ad, Soyad) VALUES ('Ray', 'Liotta')
INSERT INTO Baþrol_Oyuncular (Ad, Soyad) VALUES ('Matthew', 'McConaughey')
INSERT INTO Baþrol_Oyuncular (Ad, Soyad) VALUES ('Tom', 'Hanks')
INSERT INTO Baþrol_Oyuncular (Ad, Soyad) VALUES ('Brad', 'Pitt')
INSERT INTO Baþrol_Oyuncular (Ad, Soyad) VALUES ('Joaquin', 'Phoenix')
INSERT INTO Baþrol_Oyuncular (Ad, Soyad) VALUES ('Kevin', 'Bacon')
INSERT INTO Baþrol_Oyuncular (Ad, Soyad) VALUES ('Russell', 'Crowe')
INSERT INTO Baþrol_Oyuncular (Ad, Soyad) VALUES ('Saoirse', 'Ronan')

SELECT * FROM Baþrol_Oyuncular


CREATE TABLE Yöneticiler
(
Yönetici_ID int IDENTITY(1,1),
Yönetmen varchar(20) NOT NULL,
Yapýmcý varchar(20) NULL,

PRIMARY KEY CLUSTERED
(
	Yönetici_ID ASC
) ON [PRIMARY]

);


INSERT INTO Yöneticiler (Yönetmen,Yapýmcý) VALUES ('Frank Darabont', 'Niki Marvin')
INSERT INTO Yöneticiler (Yönetmen,Yapýmcý) VALUES ('Francis Ford Coppola', 'Francis Ford Coppola')
INSERT INTO Yöneticiler (Yönetmen,Yapýmcý) VALUES ('Cristopher Nolan', 'Cristopher Nolan')
INSERT INTO Yöneticiler (Yönetmen,Yapýmcý) VALUES ('Sidney Lumet', 'Henry Fonda')
INSERT INTO Yöneticiler (Yönetmen,Yapýmcý) VALUES ('Martin Scorsese', 'Irwin Winkler')
INSERT INTO Yöneticiler (Yönetmen,Yapýmcý) VALUES ('Christopher Nolan', 'Emma Thomas')
INSERT INTO Yöneticiler (Yönetmen,Yapýmcý) VALUES ('Frank Darabont', 'Frank Darabont')
INSERT INTO Yöneticiler (Yönetmen,Yapýmcý) VALUES ('Andrew Kopelson', 'Andrew Kevin Walker')
INSERT INTO Yöneticiler (Yönetmen,Yapýmcý) VALUES ('Todd Philips', 'Todd Philips')
INSERT INTO Yöneticiler (Yönetmen,Yapýmcý) VALUES ('Clint Eastwood', 'Robert Lorenz')
INSERT INTO Yöneticiler (Yönetmen,Yapýmcý) VALUES ('Russell Crowe', 'Troy Lum')
INSERT INTO Yöneticiler (Yönetmen,Yapýmcý) VALUES ('Greta Gerwig', 'Amy Pascal')


SELECT * FROM Yoneticiler













