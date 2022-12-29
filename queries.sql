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
);

CREATE TABLE "Songs"
(
  "Id" SERIAL PRIMARY KEY, 
  "Title" TEXT, 
  "Duration" TIME, 
  "TrackNumber" INTEGER"
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



--A Band has many Albums
--Album belongs to one Band
--An Album has many Songs
--A Song belongs to one Album.