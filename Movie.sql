BEGIN TRANSACTION;
DROP TABLE IF EXISTS "Movie";
CREATE TABLE IF NOT EXISTS "Movie" (
	"ID"	INTEGER NOT NULL,
	"Genre"	TEXT,
	"Price"	TEXT NOT NULL,
	"ReleaseDate"	TEXT NOT NULL,
	"Title"	TEXT,
	"Rating"	TEXT,
	PRIMARY KEY("ID")
);
INSERT INTO "Movie" VALUES (1,'Romantic Comedy','8.0','1989-02-12 00:00:00','When Harry Met Sally',NULL);
INSERT INTO "Movie" VALUES (2,'Comedy','8.99','1984-03-13 00:00:00','Ghostbusters ',NULL);
INSERT INTO "Movie" VALUES (3,'Comedy','9.99','1986-02-23 00:00:00','Ghostbusters 2',NULL);
INSERT INTO "Movie" VALUES (4,'Western','3.99','1959-04-15 00:00:00','Rio Bravo',NULL);
COMMIT;
