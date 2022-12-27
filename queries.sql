--Create DB
createdb RecordsDB

--Access RecordsDB
pgcli RecordsDB or UI

--Add a new band

CREATE TABLE "Bands"(
"Id" SERIAL PRIMARY KEY,
"Name" TEXT,
"CountryOfOrigin" TEXT,
"NumberOfMembers" INTEGER,
"Website" VARCHAR(67),
"Style" TEXT,
"IsSigned" BOOLEAN,
"ContactPhoneNumber" VARCHAR(16)
);

--View all the bands

Select * "Bands"

--Add an album for a band

--Add a song to an album

--Let a band go (update isSigned to false)

--Resign a band (update isSigned to true)

--Given a band name, view all their albums

--View all albums (and their associated songs) ordered by ReleaseDate

--View all bands that are signed

--View all bands that are not signed