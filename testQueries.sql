RythmsGonnaGetYou ERD 
https://lucid.app/documents/view/b25a1b71-8723-4ea6-92f1-3b3183f27ea2

--Create DB createdb RhythmsGonnaGetYouDb
createdb RhythmsGonnaGetYouDb
--Access RhythmsGonnaGetYouDb pgcli RhythmsGonnaGetYouDb or UI
pgcli RhythmsGonnaGetYouDb
--Create Tables

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

--View all the bands SELECT * FROM "Band"

--Add an album for a band 
INSERT INTO "Album"("Title", "ReleaseDate", "isExplicit", "BandId") 
VALUES('Galore', '1997-10-23', true, 1);

--Add a song to an album 
INSERT INTO "Song"("Title", "Duration", "TrackNumber", "AlbumId") 
VALUES('Pictures of You', '00:04:48', 1, 1);

--Let a band go (update isSigned to false) 
UPDATE "Band" SET "IsSigned" = false WHERE "Id" = 1;

--Resign a band (update isSigned to true) 
UPDATE "Band" SET "IsSigned" = true WHERE "Id" = 1;

--Given a band name, view all their albums 
SELECT * FROM "Album" WHERE "BandId" = 1;

--View all albums (and their associated songs) ordered by ReleaseDate 
SELECT * FROM "Album" INNER JOIN "Songs" ORDER BY "ReleaseDate";

--View all bands that are signed 
SELECT * FROM "Band" WHERE "IsSigned" = true;

--View all bands that are not signed 
SELECT * FROM "Band" WHERE "IsSigned" = false;