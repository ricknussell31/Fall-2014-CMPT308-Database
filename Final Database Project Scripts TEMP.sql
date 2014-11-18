--Nicholas Russell--
--Professor Labouseur --
--Final Database Project: World Cup 2014--


--create teams table -- 
create table teams(
	tid text NOT NULL PRIMARY KEY,
	country text UNIQUE,
	qualifyingZone text,
	preWorldCupRanking int,
	postWorldCupRanking int,
	previousTimesInWC int
	);

--create referees table--
create table referees(
	rid text NOT NULL PRIMARY KEY,
	firstName text,
	lastName text,
	dateOfBirth date,
	zoneOfRefereeing text,
	countryOfOrigin text,
	numberOfYearsInFifa int
	);

--create stadiums table--
create table stadiums(
	sid text NOT NULL PRIMARY KEY,
	stadiumName text,
	locationCity text,
	capacity int,
	numberOfGamesHosted int,
	costToBuildUSD int
	);

--create groups table --

--create groupStageGames table--
create table groupStageGames(
	gameNumber int NOT NULL PRIMARY KEY,
	gid text references groups(gid),
	dateOfGame datetime,
	attendance int,
	tidHome text references teams(
