--Nicholas Russell--
--Professor Labouseur --
--Final Database Project: World Cup 2014--


--create teams table -- 
drop table teams; 
create table teams(
	tid text NOT NULL PRIMARY KEY,
	country text UNIQUE,
	qualifyingZone text,
	preWorldCupRanking int,
	postWorldCupRanking int,
	timesInWCIncluding2014 int
	);

INSERT INTO teams(tid, country, qualifyingZone, preWorldCupRanking, postWorldCupRanking, timesInWCIncluding2014)
	VALUES ('c01', 'Brazil', 'CONMEBOL', 3, 7, 20),
	       ('c02', 'Mexico', 'CONCACAF', 20, 18, 15),
	       ('c03', 'Croatia', 'UEFA', 18, 17, 4),
	       ('c04', 'Cameroon', 'CAF', 56, 53, 7),
	       ('c05', 'Netherlands', 'UEFA', 15, 3, 10),
	       ('c06', 'Chile', 'CONMEBOL', 14, 12, 9),
	       ('c07', 'Spain', 'UEFA', 1, 8, 14),
	       ('c08', 'Australia', 'AFC', 62, 76, 4),
	       ('c09', 'Colombia', 'CONMEBOL', 8, 4, 5),
	       ('c10', 'Greece', 'UEFA', 12, 13, 3),
	       ('c11', 'Ivory Coast', 'CAF', 23, 25, 3),
	       ('c12', 'Japan', 'AFC', 46, 45, 5),
	       ('c13', 'Costa Rica', 'CONCACAF', 28, 16, 4),
	       ('c14', 'Uruguay', 'CONMEBOL', 7, 6, 12),
	       ('c15', 'Italy', 'UEFA', 9, 14, 18),
	       ('c16', 'England', 'UEFA', 10, 20, 14),
	       ('c17', 'France', 'UEFA', 17, 10, 14),
	       ('c18', 'Switzerland', 'UEFA', 6, 9, 10),
	       ('c19', 'Ecuador', 'CONMEBOL', 26, 21, 3),
	       ('c20', 'Honduras', 'CONCACAF', 33, 40, 3),
	       ('c21', 'Argentina', 'CONMEBOL', 5, 2, 16),
	       ('c22', 'Nigeria', 'CAF', 44, 34, 5),
	       ('c23', 'Bosnia-Herzegovina', 'UEFA', 21, 19, 1),
	       ('c24', 'Iran', 'CAF', 43, 49, 4),
	       ('c25', 'Germany', 'UEFA', 2, 1, 18),
	       ('c26', 'United States', 'CONCACAF', 13, 15, 10),
	       ('c27', 'Portugal', 'UEFA', 4, 11, 6),
	       ('c28', 'Ghana', 'CAF', 37, 38, 3),
	       ('c29', 'Belgium', 'UEFA', 11, 5, 12),
	       ('c30', 'Algeria', 'CAF', 22, 24, 4),
	       ('c31', 'Russia', 'UEFA', 19, 23, 10),
	       ('c32', 'South Korea', 'AFC', 57, 56, 9);    

	       select *
	       from teams;   
--create referees table--
create table referees(
	rid text NOT NULL PRIMARY KEY,
	firstName text,
	lastName text,
	dateOfBirthMDY text,
	zoneOfRefereeing text,
	countryOfOrigin text,
	numberOfYearsInFifa int
	);

INSERT INTO referees (rid, firstName, lastName, dateOfBirthMDY, zoneOfRefereeing, countryOfOrigin, numberOfYearsInFifa)
	VALUES ('r01', 'Ravshan', 'Irmatov', '08/09/1977' , 'AFC', 'Uzbekistan', 11),
	       ('r02', 'Yuichi', 'Nishimura', '04/17/1972','AFC', 'Japan', 10),
	       ('r03', 'Nawaf', 'Shukralla', '10/13/1976','AFC', 'Bahrain', 7),
	       ('r04', 'Ben', 'Williams', '04/14/1977','AFC', 'Australia', 9),
	       ('r05', 'Noumandiez', 'Doue', '09/29/1970', 'CAF', 'Ivory Coast', 10),
	       ('r06', 'Bakary', 'Gassama', '02/10/1979','CAF', 'Gambia', 7),
	       ('r07', 'Djamel', 'Hairmoudi', '12/10/1970','CAF', 'Algeria', 10),
	       ('r08', 'Joel', 'Aguilar', '07/02/1975' ,'CONCACAF', 'El Salvador', 13),
	       ('r09', 'Mark', 'Geiger', '08/25/1974' , 'CONCACAF', 'United States', 6),
	       ('r10', 'Marco', 'Rodriguez', '11/10/1973' , 'CONCACAF', 'Mexico', 15),
	       ('r11', 'Nestor', 'Pitana', '06/17/1975', 'CONMEBOL', 'Argentina', 4),
	       ('r12', 'Sandro', 'Ricci', '11/19/1974' , 'CONMEBOL', 'Brazil', 3),
	       ('r13', 'Enrique', 'Osses', '06/25/1976' , 'CONMEBOL', 'Chile', 9),
	       ('r14', 'Wilmar', 'Roldan', '01/24/1980', 'CONMEBOL', 'Colombia', 6),
	       ('r15', 'Carlos', 'Vera', '06/25/1976' , 'CONMEBOL', 'Ecuador', 8),
	       ('r16', 'Peter', 'OLeary', '03/03/1972' ,'OFC', 'New Zealand', 11),
	       ('r17', 'Felix', 'Brych', '08/03/1975' ,'UEFA', 'Germany', 7),
	       ('r18', 'Cuneyt', 'Cakir', '11/23/1976' ,'UEFA', 'Turkey', 8),
	       ('r19', 'Jonas', 'Eriksson', '03/28/1974' ,'UEFA', 'Sweden', 12),
	       ('r20', 'Bjorn', 'Kuipers', '03/28/1973', 'UEFA', 'Netherlands', 8),
	       ('r21', 'Milorad', 'Mazic', '03/23/1973', 'UEFA', 'Serbia', 5),
	       ('r22', 'Nicola', 'Rizzoli', '10/05/1971','UEFA', 'Italy', 7),
	       ('r23', 'Carlos', 'Velasco Carballo', '03/16/1971', 'UEFA', 'Spain', 6),
	       ('r24', 'Pedro', 'Proenca', '11/03/1970','UEFA', 'Portugal', 11),
	       ('r25', 'Howard', 'Webb', '07/14/1971' ,'UEFA', 'England', 9);

select *
from referees;
--create refereedIn table--
create table refereedIn(
	gameNumber int references games(gameNumber),
	rid text references referees(rid),
	yellowCardsHome int,
	redCardsHome int,
	yellowCardsAway int,
	redCardsAway int,
	primary key(gameNumber)
	);
	       
	            
--create stadiums table--
drop table stadiums;
create table stadiums(
	sid text NOT NULL PRIMARY KEY,
	stadiumName text,
	locationCity text,
	capacity int,
	numberOfGamesHosted int,
	costToBuildUSDinMillions int
	);

INSERT INTO stadiums(sid, stadiumName, locationCity, capacity, numberOfGamesHosted, costToBuildUSDinMillions)
	VALUES ('s01', 'Maracana Stadium', 'Rio de Janeiro', 74738, 7, 1200),
	       ('s02', 'Estadio Mineirao', 'Belo Horizonte', 58259, 6, 695),
	       ('s03', 'Arena Fonte Nova', 'Salvador', 51708, 6, 267),
	       ('s04', 'Arena Pantanal', 'Cuiaba', 41112, 4, 293),
	       ('s05', 'Arena de Amazonia', 'Manaus', 40549, 4, 270),
	       ('s06', 'Arena das Dunas', 'Natal', 39971, 4, 400),
	       ('s07', 'Arena da Daixada', 'Curitiba', 39631, 4, 295),
	       ('s08', 'Arena Pernambuco', 'Recife', 42583, 5, 426),
	       ('s09', 'Estadio Beira-Rio', 'Porto Alegre', 43394, 5, 326),
	       ('s10', 'Estadio Castelao', 'Fortaleza', 60348, 6, 207),
	       ('s11', 'Arena Corinthians', 'Sao Paulo', 63321, 6, 435),
	       ('s12', 'Estadio Nacional Mane Garrincha', 'Brasilia', 69432, 7, 900);  

select *
from stadiums;
--create StadiumPlayedIn table--

create table stadiumPlayedIn(
	sid text references stadiums(sid),
	gameNumber int references games(gameNumber),
	attendance int,
	primary key(gameNumber)
	);

--create groups table --
create table groups(
	grid text NOT NULL PRIMARY KEY
	);

--create GroupedIn table --

create table groupedIn(
	tid text references teams(tid),
	grid text references groups(grid),
	primary key(tid)
	);


--create Games table--
create table games(
	gameNumber int NOT NULL PRIMARY KEY,
	dateOfGame text,
	typeOfGame text,
	tidHome text references teams(tid),
	tidAway text references teams(tid),
	goalsForHome int,
	CHECK (goalsForHome >= 0),
	goalsForAway int,
	CHECK (goalsForAway >= 0),
	resultForHome text,
	CHECK (resultForHome = 'W' OR resultForHome = 'T' OR resultForHome = 'L'),
	resultForAway text,
	CHECK (resultForAway = 'W' OR resultForAway = 'T' OR resultForAway = 'L'),
	CHECK ( 
		(resultForAway = 'T' AND resultForAway = 'T')
		OR (resultForAway = 'W' AND resultForAway = 'L') 
		OR (resultForAway = 'L' AND resultForAway = 'W')
		),
	wentIntoOvertime boolean,
	wentIntoPenaltyKicks boolean
	);
	
--create OvertimeGames table--
create table overtimeGames(
	gameNumber int references games(gameNumber) PRIMARY KEY,
	overtimeGoalsHome int,
	overtimeGoalsAway int
	);


--create penaltyShootout table--

create table penaltyShootout(
	gameNumber int references games(gameNumber) PRIMARY KEY,
	penaltiesMadeHome int,
	penaltiesMadeAway int
	);