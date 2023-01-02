createdb RhythmsGonnaGetYouDb

pgcli RhythmsGonnaGetYouDb
--Creating Tables
CREATE TABLE "Band" (
  "Id " SERIAL PRIMARY KEY,
  "Name" TEXT,
  "CountryOfOrigin" TEXT,
  "NumbeOfMembers" INT,
  "Website" TEXT,
  "Genre" TEXT,
  "IsSigned" BOOL,
  "ContactName" TEXT
);

CREATE TABLE "Album" (
  "Id" SERIAL PRIMARY KEY,
  "Title" TEXT,
  "IsExplicit" BOOL,
  "ReleaseDate" DATE,
  "BandId" INT NULL REFERENCES "Band" ("Id")
);

CREATE TABLE "Song" (
  "Id" SERIAL PRIMARY KEY,
  "TrackNumber" INT,
  "Title" TEXT,
  "Duration" DATE,
  "AlbumId" INT NULL REFERENCES "Album" ("Id")
);

--Adding Bands
INSERT INTO "Band" ("Id", "Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName") 
VALUES (1, 'ColdPlay', 'United Kingdom', 5, 'https://www.coldplay.com', 'Alternative Rock Pop', true, 'Phil Harvey');

INSERT INTO "Band" ("Id", "Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName") 
VALUES (2, 'Aerosmith', 'United States of America', 8, 'https://www.aerosmith.com', 'Rock', true, 'Larry Rudolph');

INSERT INTO "Band" ("Id", "Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName") 
VALUES (3, 'Guns N'' Roses', 'United States of America', 6, 'https://www.gunsnroses.com', 'Rock', true, 'Alan Niven');

INSERT INTO "Band" ("Id", "Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName") 
VALUES (4, 'The Cure', 'United Kingdom', 5, 'https://www.thecure.com/bio/', 'Gothic Rock', true, 'Chris Parry');

INSERT INTO "Band" ("Id", "Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName")
VALUES (5, 'New Order', 'United Kingdom', 6, 'http://www.neworder.com', 'Rock', true, 'Rob Gretton');


Entity Relationships Requirements:
--A Band has many Albums
--Album belongs to one Band
--An Album has many Songs
--A Song belongs to one Album.

--Adding Albums

INSERT INTO "Album"("Id", "Title", "IsExplicit", "ReleaseDate", "BandId") 
VALUES (1, 'Parachutes', false, '2000-06-12', 1);

INSERT INTO "Album" ("Id", "Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES (2, 'The Music of the Spheres', false, '2015-12-04', 2);

INSERT INTO "Album" ("Id", "Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES (3, 'X&Y', false, '2005-09-10', 3);

INSERT INTO "Album" ("Id", "Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES (4, 'Aerosmith', false, '1973-12-01', 4);

INSERT INTO "Album" ("Id", "Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES (5, 'Get A Grip', false, '1993-12-01', 5);

INSERT INTO "Album" ("Id", "Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES (6, 'I Don''t want to Miss a Thing', false, '1998-08-01', 6);

INSERT INTO "Album" ("Id", "Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES (7, 'Permanent Vacation', false, '1987-05-01', 7);

INSERT INTO "Album" ("Id", "Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES (8, 'Greatest Hits', false, '2020-06-10', 8);

INSERT INTO "Album" ("Id", "Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES (9, 'Appetite for Destruction', false, '1987-02-01', 9);

INSERT INTO "Album" ("Id", "Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES (11, 'G N'' R Lies', false, '1988-10-01', 10);

INSERT INTO "Album" ("Id", "Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES (12, 'Galore', false, '1997-05-12', 11);

INSERT INTO "Album" ("Id", "Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES (13, 'Kiss me, kiss me, kiss me', false, '1987-05-01', 12);

INSERT INTO "Album" ("Id", "Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES (14, 'Disintegration', false, '1989-05-01', 13);

INSERT INTO "Album" ("Id", "Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES (15, 'Power, Corruptions & Lies', false, '1983-07-01', 14);

INSERT INTO "Album" ("Id", "Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES (16, 'Brotherhood', false, '1986-05-01', 15);

INSERT INTO "Album" ("Id", "Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES (17, 'New Order 511', false, '2002-11-01', 16);

INSERT INTO "Album" ("Id", "Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES (18, 'A Rush Of Blood', true, '2002-10-01'17);

INSERT INTO "Album" ("Id", "Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES (19, 'Viva La Vida', false, '2008-05-01', 18);

INSERT INTO "Album" ("Id", "Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES (20, 'Substance', false, '1987-12-01', 19);

--Adding Songs

--Parachutes
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (1, 5, 'Yellow', '00:04:26', 1);--'00:04:26' duration in seconds is 266

--Music of the Spheres
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (2, 5, 'Let Someone Go', (4*60 + 1), 2);--'00:04:01' duration in seconds is 241

--Music of the Spheres
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (3, 10, 'My Universe', '00:03:46', 3);--'00:03:46' duration in seconds is 226

--X&Y
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (4, 4, 'Fix You', '00:04:55', 4);--'00:04:55' duration in seconds is 295

--X&Y
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (5, 5, 'Talk', '00:05:11', 5);--'00:05:11' duration in seconds is 311

--A Rush of Blood to the Head
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (6, 1, 'The Scientist', '00:04:15', 6);--'00:04:15' duration in seconds is 255

--A Rush of Blood to the Head
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (7, 1, 'Clocks', '00:05:07', 7);--'00:05:07' duration in seconds is 307

--A Rush of Blood to the Head
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (8, 1, 'In My Place', '00:04:15', 8);--'00:04:15' duration in seconds is 255

--Viva La Vida
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (9, 3, 'Lost!', '00:03:56', 9);--'00:03:56' duration in seconds is 236

--Viva La Vida
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (10, 7, 'Viva La Vida', '00:04:02', 10);--'00:04:02' duration in seconds is 242

--X&Y
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (11, 7 'Speed of Sound', '00:04:47', 11);--'00:04:47' duration in seconds is 287

--Viva La Vida
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (12, 1, 'Life in Technicolor', '00:02:29', 12);--'00:02:29' duration in seconds is 149

--Mylo Xykoto
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (13, 7, 'Every Teardrop is a Waterfall', '00:04:00', 13);--'00:04:00' duration in seconds is 240

--Mylo Xykoto
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (14, 11, 'Don''t Let It Break Your Heart', '00:03:54', 14);--'00:03:54' duration in seconds is 234

--Get A Grip 1993
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (15, 9, 'Cryin''', '00:05:08', 15);--'00:05:08' duration in seconds is 308

--Get A Grip 1993
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (16, 11, 'Crazy', '00:05:16', 16);--'00:05:16' duration in seconds is 316

--Permanent Vacation 1987
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (17, 5, 'Dude Looks Like A Lady', '00:04:25', );--'00:04:25' duration in seconds is 265

--Permanent Vacation 1987
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (18, 'Angel', '00:05:08', 9, 17);--'00:05:08' duration in seconds is 308

--Appetite for Destruction 1987
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (19, 1, 'Welcome to the Jungle', '00:05:03', 18);--'00:05:03' duration in seconds is 303

--Appetite for Destruction 1987
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (20, 9, 'Sweet Child O'' Mine', '00:05:56', 19);--'00:05:56' duration in seconds is 356

--Appetite for Destruction 1987
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (21, 6, 'Paradise City', '00:06:45', 20);--'00:06:45' duration in seconds is 405

--G N' R Lies 1988
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (22, 1, 'Patience', '00:05:00', 21);--'00:05:00' duration in seconds is 300

--G N' R Lies 1988
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (23, 7, 'You Could Be Mine', '00:04:55', 22);--'00:04:55' duration in seconds is 295

--Galore 1997
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (24, 2, 'Catch', '00:02:45', 23);--'00:02:45' duration in seconds is 165

--Galore 1997
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (25, 8, 'Pictures of You', '00:04:48', 24);--'00:04:48' duration in seconds is 288

--Galore 1997
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (26, 3, 'Just Like Heaven', '00:03:32', 25);--'00:03:32' duration in seconds is 212

--Galore 1997
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (27, 5, 'Lullaby', '00:04:10', 26);--'00:04:10' Duration in seconds is 250

--Galore 1997
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (28, 6, 'Fascination Street', '00:04:20', 27);--'00:04:20' duration in seconds is 260

--Galore 1997
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES (29, 7, 'Love Song', '00:03:28', 28)--'00:03:28' duration in seconds is 208

--Galore 1997
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES(30, 10, 'Close to Me', '00:04:21', 29);--'00:04:21' duration in seconds is 261

--Galore 1997
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES(31, 13, 'A Letter to Elise', '00:05:11', 30);--'00:05:11' duration in seconds is 311

--Power of Corruption and Lies 1983
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES(32, 1, 'Age of Consent', '00:05:15', 31);--'00:05:15' duration in seconds is 315

--Substance 1987
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES(33, 3, 'Temptation', '00:06:59', 32);--'00:06:59' duration in seconds is 419

--Substance 1987
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES(34, 4, 'Blue Monday', '00:07:29', 33);--'00:07:29' duration in seconds is 449

--Substance 1987
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES(35, 11, 'Bizarre Love Triangle', '00:06:42', 34);--'00:06:42' duration in seconds is 402

--Substance 1987
INSERT INTO "Song" ("Id", "TrackNumber", "Title", "Duration", "AlbumId")
VALUES(36, 12, 'True Faith', '00:05:55', 35);--'00:05:55' duration in seconds is 355






