createdb RhythmsGonnaGetYouDB

pgcli RhythmsGonnaGetYouDB

CREATE TABLE "Bands"
(
  "Id" SERIAL PRIMARY KEY, 
  "Name" TEXT, 
  "CountryOfOrigin" TEXT, 
  "NumberOfMembers" INTEGER, 
  "Website" VARCHAR(67), 
  "Genre" TEXT, 
  "IsSigned" BOOLEAN, 
  "ContactName" TEXT
);

CREATE TABLE "Albums"
(
  "Id" SERIAL PRIMARY KEY, 
  "Title" TEXT, 
  "isExplicit" BOOLEAN, 
  "ReleaseDate" DATE
  "BandId" INTEGER NULL REFERENCES "Bands" ("Id")--ALTER TABLE "Album" ADD COLUMN "BandId" INTEGER NULL REFERENCES "Bands" ("Id");
);

CREATE TABLE "Songs"
(
  "Id" SERIAL PRIMARY KEY, 
  "Title" TEXT, 
  "Duration" TIME, 
  "TrackNumber" INTEGER,
  "AlbumID" INTEGER NULL REFERENCES "Albums" ("Id")--ALTER TABLE "Songs" ADD COLUMN "AlbumID" INTEGER NULL REFERENCES "Albums" ("Id");
);

INSERT INTO "Bands" ("Id", "Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName") 
VALUES (1, 'ColdPlay', 'United Kingdom', 5, 'https://www.coldplay.com', 'Alternative Rock Pop', 'True', 'Phil Harvey');

INSERT INTO "Bands" ("Id", "Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName") 
VALUES (2, 'Aerosmith', 'United States of America', 8, 'https://www.aerosmith.com', 'Rock', 'True', 'Larry Rudolph');

INSERT INTO "Bands" ("Id", "Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName") 
VALUES (3, 'Guns N'' Roses', 'United States of America', 6, 'https://www.gunsnroses.com', 'Rock', 'True', 'Alan Niven');

INSERT INTO "Bands" ("Id", "Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName") 
VALUES (4, 'The Cure', 'United Kingdom', 5, 'https://www.thecure.com/bio/', 'Gothic Rock', 'True', 'Chris Parry');

INSERT INTO "Bands" ("Id", "Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName")
VALUES (5, 'New Order', 'United Kingdom', 6, 'http://www.neworder.com', 'Rock', 'True', 'Rob Gretton');


Entity Relationships Requirements:
--A Band has many Albums
--Album belongs to one Band
--An Album has many Songs
--A Song belongs to one Album.

--Adding Albums

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (1, 'Parachutes', 'False', '2000-06-12');

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (2, 'The Music of the Spheres', 'False', '2015-12-04');

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (3, 'X&Y', 'False', '2005-09-10');

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (4, 'Aerosmith', 'False', '1973-12-01');

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (5, 'Get A Grip', 'False', '1993-12-01');

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (6, 'I Don't want to Miss a Thing', 'False', '1998-08-01');

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (7, 'Permanent Vacation', 'False', '1987-05-01');

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (8, 'Greatest Hits', 'False', '2020-06-10');

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (9, 'Appetite for Destruction', 'False', '1987-02-01');

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (11, 'G N'' R Lies', 'False', '1988-10-01');

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (12, 'Galore', 'False', '1997-05-12');

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (13, 'Kiss me, kiss me, kiss me', 'False', '1987-05-01');

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (14, 'Disintegration', 'False', '1989-05-01');

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (15, 'Power, Corruptions & Lies', 'False', '1983-07-01');

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (16, 'Brotherhood', 'False', '1986-05-01');

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (17, 'New Order 511', 'False', '2002-11-01');

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (18, 'A Rush Of Blood', 'True', '2002-10-01');

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (19, 'Viva La Vida', 'False', '2008-05-01');

INSERT INTO "Albums" ("Id", "Title", "isExplicit", "ReleaseDate")
VALUES (20, 'Substance', 'False', '1987-12-01');

--Adding Songs


--Parachutes
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (1, 'Yellow', '00:04:26', 5);

--Music of the Spheres
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (2, 'Let Someone Go', '00:04:01', 5);

--Music of the Spheres
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (3, 'My Universe', '00:03:46', 10);

--X&Y
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (4, 'Fix You', '00:04:55', 4);

--X&Y
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (5, 'Talk', '00:05:11', 5);

--A Rush of Blood to the Head
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (6, 'The Scientist', '00:04:15', 1);

--A Rush of Blood to the Head
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (7, 'Clocks', '00:05:07', 1);

--A Rush of Blood to the Head
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (8, 'In My Place', '00:04:15', 1);

--Viva La Vida
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (9, 'Lost!', '00:03:56', 3);

--Viva La Vida
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (10, 'Viva La Vida', '00:04:02', 7);

--X&Y
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (11, 'Speed of Sound', '00:04:47', 7);

--Viva La Vida
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (12, 'Life in Technicolor', '00:02:29', 1);

--Mylo Xykoto
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (13, 'Every Teardrop is a Waterfall', '00:04:00', 7);

--Mylo Xykoto
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (14, 'Don't Let It Break Your Heart', '00:03:54', 11);

--Get A Grip 1993
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (15, 'Cryin'', '00:05:08', 9);

--Get A Grip 1993
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (16, 'Crazy', '00:05:16', 11);

--Permanent Vacation 1987
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (17, 'Dude Looks Like A Lady', '00:04:25', 5);

--Permanent Vacation 1987
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (18, 'Angel', '00:05:08', 9);

--Appetite for Destruction 1987
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (19, 'Welcome to the Jungle', '00:05:03', 1);

--Appetite for Destruction 1987
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (20, 'Sweet Child O'' Mine', '00:05:56', 9);

--Appetite for Destruction 1987
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (21, 'Paradise City', '00:06:45', 6);

--G N' R Lies 1988
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (22, 'Patience', '00:05:00', 1);

--G N' R Lies 1988
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (23, 'You Could Be Mine', '00:04:55', 2);

--Galore 1997
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (24, 'Catch', '00:02:45', 2);

--Galore 1997
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (25, 'Pictures of You', '00:04:48', 8);

--Galore 1997
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (26, 'Just Like Heaven', '00:03:32', 3);

--Galore 1997
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (27, 'Lullaby', '00:04:10', 5);

--Galore 1997
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (28, 'Fascination Street', '00:04:20', 6);

--Galore 1997
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES (29, 'Love Song', '00:03:28', 7)

--Galore 1997
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES(30, 'Close to Me', '00:04:21', 10);

--Galore 1997
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES(31, 'A Letter to Elise', '00:05:11', 13);

--Power of Corruption and Lies 1983
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES(32, 'Age of Consent', '00:05:15', 1);

--Substance 1987
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES(33, 'Temptation', '00:06:59', 3);

--Substance 1987
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES(34, 'Blue Monday', '00:07:29', 4);

--Substance 1987
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES(35, 'Bizarre Love Triangle', '00:06:42', 11);

--Substance 1987
INSERT INTO Songs ("Id", "Title", "Duration", "TrackNumber")
VALUES(36, 'True Faith', '00:05:55', 12);

--END OF DATA



--POSSIBLE QUERIES
CREATE TABLE "Band" (
  "Id " SERIAL PRIMARY KEY,
  "Name" Text,
  "CountryOfOrigin" Text,
  "NumbeOfMembers" Int,
  "Website" Text,
  "Genre" Text,
  "IsSigned" Bool,
  "ContactName" Text,
  "AlbumId" Int
);

CREATE TABLE "Album" (
  "Id" SERIAL PRIMARY KEY,
  "Title" Text,
  "IsExplicit" Bool,
  "ReleaseDate" DateTime,
  "BandId" Int,
  CONSTRAINT "FK_Album.BandId"
    FOREIGN KEY ("BandId")
      REFERENCES "Band"("Id ")
);

CREATE TABLE "Song" (
  "Id" SERIAL PRIMARY KEY,
  "TrackNumber" Int,
  "Title" Text,
  "Duration" DateTime 00:00:00,
  "AlbumId" Int,
  CONSTRAINT "FK_Song.AlbumId"
    FOREIGN KEY ("AlbumId")
      REFERENCES "Album"("Id")
);

UPDATE "Songs" SET "AlbumId" = 1 WHERE "Id" IN (1);
UPDATE "Songs" SET "AlbumId" = 2 WHERE "Id" IN (2);
UPDATE "Songs" SET "AlbumId" = 3 WHERE "Id" IN (3);
UPDATE "Songs" SET "AlbumId" = 4 WHERE "Id" IN (4);
UPDATE "Songs" SET "AlbumId" = 5 WHERE "Id" IN (5);

UPDATE "Albums" SET "BandId" = 1 WHERE "Id" IN (1);
UPDATE "Albums" SET "BandId" = 2 WHERE "Id" IN (2);
UPDATE "Albums" SET "BandId" = 3 WHERE "Id" IN (3);
UPDATE "Albums" SET "BandId" = 4 WHERE "Id" IN (4);
UPDATE "Albums" SET "BandId" = 5 WHERE "Id" IN (5);



