RythmsGonnaGetYou ERD 
https://lucid.app/documents/view/b25a1b71-8723-4ea6-92f1-3b3183f27ea2

--Create DB createdb RhythmsGonnaGetYouDb

--Access RhythmsGonnaGetYouDb pgcli RhythmsGonnaGetYouDb or UI

--Create Tables

CREATE TABLE "Bands"( "Id" SERIAL PRIMARY KEY, "Name" TEXT, "CountryOfOrigin" TEXT, "NumberOfMembers" INTEGER, "Website" VARCHAR(67), "Style" TEXT, "IsSigned" BOOLEAN, "ContactPhoneNumber" VARCHAR(16) );

CREATE TABLE "Albums"( "Id" SERIAL PRIMARY KEY, "Title" TEXT, "ReleaseDate" DATE, "isExplicit" BOOLEAN, "BandId" INTEGER REFERENCES "Bands" );

CREATE TABLE "Songs"( "Id" SERIAL PRIMARY KEY, "Title" TEXT, "Duration" TIME, "TrackNumber" INTEGER, "AlbumId" INTEGER REFERENCES "Albums" );

--View all the bands SELECT * FROM "Bands"

--Add an album for a band 
INSERT INTO "Albums"("Title", "ReleaseDate", "isExplicit", "BandId") 
VALUES('Galore', '1997-10-23', true, 1);

--Add a song to an album 
INSERT INTO "Songs"("Title", "Duration", "TrackNumber", "AlbumId") 
VALUES('Pictures of You', '00:04:48', 1, 1);

--Let a band go (update isSigned to false) 
UPDATE "Bands" SET "IsSigned" = false WHERE "Id" = 1;

--Resign a band (update isSigned to true) 
UPDATE "Bands" SET "IsSigned" = true WHERE "Id" = 1;

--Given a band name, view all their albums 
SELECT * FROM "Albums" WHERE "BandId" = 1;

--View all albums (and their associated songs) ordered by ReleaseDate 
SELECT * FROM "Albums" INNER JOIN "Songs" ORDER BY "ReleaseDate";

--View all bands that are signed 
SELECT * FROM "Bands" WHERE "IsSigned" = true;

--View all bands that are not signed 
SELECT * FROM "Bands" WHERE "IsSigned" = false;