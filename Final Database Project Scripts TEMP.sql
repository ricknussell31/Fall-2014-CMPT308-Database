--Nicholas Russell--
--Professor Labouseur --
--Final Database Project: World Cup 2014--


--create teams table -- 
drop table teams; 
create table countries(
	cid text NOT NULL PRIMARY KEY,
	country text UNIQUE,
	qualifyingZone text,
	preWorldCupRanking int,
	postWorldCupRanking int,
	timesInWCIncluding2014 int
	);

INSERT INTO countries(cid, country, qualifyingZone, preWorldCupRanking, postWorldCupRanking, timesInWCIncluding2014)
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
	       from countries;   
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
from referees
order by lastName ASC;
--create refereedIn table--
create table refereedIn(
	gameNumber int PRIMARY KEY references games(gameNumber),
	rid text references referees(rid),
	totalYellowCards int,
	totalRedCards int
	);

INSERT INTO refereedIn(gameNumber, rid, totalYellowCards, totalRedCards)
VALUES (1, 'r02', 4,0),
       (2, 'r14', 2,0),
       (3, 'r22', 4,0),
       (4, 'r05', 4,0),
       (5, 'r09', 3,0),
       (6, 'r17', 4,0),
       (7, 'r20', 3,1),
       (8, 'r13', 1,0),
       (9, 'r01', 2,0),
       (10,'r12', 7,1),
       (11,'r08', 2,0),
       (12,'r21', 1,0),
       (13,'r15', 1,1),
       (14,'r19', 2,0),
       (15,'r10', 4,0),
       (16,'r18', 2,0),
       (17,'r11', 4,0),
       (18,'r07', 1,1),
       (19,'r09', 2,0),
       (20,'r24', 3,0),
       (21,'r25', 2,0),
       (22,'r23', 5,1),
       (23,'r08', 2,0),
       (24,'r12', 2,0),
       (25,'r20', 1,0),
       (26,'r04', 5,0),
       (27,'r21', 2,0),
       (28,'r16', 2,0),
       (29,'r12', 1,0),
       (30,'r11', 1,0),
       (31,'r17', 3,0),
       (32,'r14', 3,0),
       (33,'r19', 3,0),
       (34,'r01', 3,1),
       (35,'r03', 3,0),
       (36,'r06', 2,0),
       (37,'r24', 2,0),
       (38,'r15', 3,0),
       (39,'r10', 4,1),
       (40,'r07', 3,0),
       (41,'r11', 1,0),
       (42,'r05', 1,2),
       (43,'r22', 2,0),
       (44,'r23', 2,0),
       (45,'r01', 3,0),
       (46,'r03', 4,0),
       (47,'r04', 2,1),
       (48,'r18', 5,0),
       (49,'r25', 7,0),
       (50,'r20', 3,0),
       (51,'r24', 3,0),
       (52,'r04', 8,0),
       (53,'r09', 1,0),
       (54,'r12', 2,0),
       (55,'r19', 5,0),
       (56,'r07', 2,0),
       (57,'r11', 2,0),
       (58,'r23', 4,0),
       (59,'r22', 3,0),
       (60,'r01', 6,0),
       (61,'r10', 1,0),
       (62,'r18', 3,0),
       (63,'r07', 5,0),
       (64,'r22', 4,0);

      
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
	       ('s07', 'Arena da Baixada', 'Curitiba', 39631, 4, 295),
	       ('s08', 'Arena Pernambuco', 'Recife', 42583, 5, 426),
	       ('s09', 'Estadio Beira-Rio', 'Porto Alegre', 43394, 5, 326),
	       ('s10', 'Estadio Castelao', 'Fortaleza', 60348, 6, 207),
	       ('s11', 'Arena Corinthians', 'Sao Paulo', 63321, 6, 435),
	       ('s12', 'Estadio Nacional Mane Garrincha', 'Brasilia', 69432, 7, 900);  

select *
from stadiums;
--create StadiumPlayedIn table--

create table stadiumPlayedIn(
	gameNumber int references games(gameNumber),
	sid text references stadiums(sid),
	attendance int,
	primary key(gameNumber)
	);

INSERT INTO stadiumPlayedIn(gameNumber, sid, attendance)
VALUES (1, 's11', 62103),
       (2, 's06', 39216),
       (3, 's03', 48173),
       (4, 's04', 40275),
       (5, 's02', 57174),
       (6, 's08', 40267),
       (7, 's10', 58679),
       (8, 's05', 39800),
       (9, 's12', 68351),
       (10,'s09', 43012),
       (11,'s01', 74738),
       (12,'s07', 39081),
       (13,'s03', 51081),
       (14,'s06', 39760),
       (15,'s02', 56800),
       (16,'s04', 37603),
       (17,'s10', 60342),
       (18,'s05', 39982),
       (19,'s01', 42877),
       (20,'s09', 74101),
       (21,'s12', 68748),
       (22,'s06', 39485),
       (23,'s11', 62575),
       (24,'s08', 40285),
       (25,'s03', 51003),
       (26,'s07', 39224),
       (27,'s02', 57698),
       (28,'s04', 40499),
       (29,'s10', 59621),
       (30,'s05', 40123),
       (31,'s01', 73819),
       (32,'s09', 42732),
       (33,'s12', 69112),
       (34,'s08', 41212),
       (35,'s07', 39375),
       (36,'s11', 62996),
       (37,'s04', 40340),
       (38,'s10', 59095),
       (39,'s06', 39706),
       (40,'s02', 57823),
       (41,'s05', 40322),
       (42,'s01', 73749),
       (43,'s09', 43285),
       (44,'s03', 48011),
       (45,'s08', 41876),
       (46,'s12', 67540),
       (47,'s11', 61397),
       (48,'s07', 39311),
       (49,'s02', 57714),
       (50,'s01', 73804),
       (51,'s10', 58817),
       (52,'s08', 41242),
       (53,'s12', 67882),
       (54,'s09', 43063),
       (55,'s11', 63255),
       (56,'s03', 51227),
       (57,'s10', 74240),
       (58,'s01', 60342),
       (59,'s03', 68551),
       (60,'s12', 51179),
       (61,'s02', 58141),
       (62,'s11', 63267),
       (63,'s12', 68034),
       (64,'s01', 74738);

select *
from stadiumPlayedIn;       
	
--create groups table --
create table groups(
	grid text NOT NULL PRIMARY KEY
	);

INSERT INTO groups (grid)
	VALUES ('groupA'),
	       ('groupB'),
	       ('groupC'),
	       ('groupD'),
	       ('groupE'),
	       ('groupF'),
	       ('groupG'),
	       ('groupH');
--create GroupedIn table --
drop table groupedIn;
create table groupedIn(
	cid text references countries(cid),
	grid text references groups(grid),
	groupStageWins int,
	groupStageTies int,
	groupStageLosses int,
	goalsForInGroup int,
	goalsAgainstInGroup int,
	goalDifferentialInGroup int,
	pointsTotaledInGroup int,
	placeInGroup int,
	CHECK (groupStageWins >= 0 
           AND groupStageTies >= 0
           AND groupStageWins >= 0
           AND goalsForInGroup >= 0
           AND goalsAgainstInGroup >=0
           AND pointsTotaledInGroup >= 0
           AND pointsTotaledInGroup <= 9
           AND placeInGroup >= 1
           AND placeInGroup <= 4
           ),
	primary key(cid)
	);
INSERT INTO groupedIn(cid, grid, groupStageWins, groupStageTies, groupStageLosses, goalsForInGroup, goalsAgainstInGroup, goalDifferentialInGroup, pointsTotaledInGroup, placeInGroup)
	VALUES ('c01', 'groupA', 2, 1, 0, 7, 2, 5, 7, 1),
	       ('c02', 'groupA', 2, 1, 0, 4, 1, 3, 7, 2),
	       ('c03', 'groupA', 1, 0, 2, 6, 6, 0, 3, 3),
	       ('c04', 'groupA', 0, 0, 3, 1, 9, -8, 0,4),
	       ('c05', 'groupB', 3, 0, 0, 10, 3, 7, 9, 1),
	       ('c06', 'groupB', 2, 0, 1, 5, 3, 2, 6, 2),
	       ('c07', 'groupB', 1, 0, 2, 4, 7, -3, 3, 3),
	       ('c08', 'groupB', 0, 0, 3, 3, 9, -6, 0, 4),
	       ('c09', 'groupC', 3, 0, 0, 9, 2, 7, 9, 1),
	       ('c10', 'groupC', 1, 1, 1, 2, 4, -2, 4, 2),
	       ('c11', 'groupC', 1, 0, 2, 4, 5, -1, 3, 3),
	       ('c12', 'groupC', 0, 1, 2, 2, 6, -4, 1, 4),
	       ('c13', 'groupD', 2, 1, 0, 4, 1, 3, 7, 1),
	       ('c14', 'groupD', 2, 0, 1, 4, 4, 0, 6, 2),
	       ('c15', 'groupD', 1, 0, 2, 2, 3, -1, 3, 3),
	       ('c16', 'groupD', 0, 1, 2, 2, 4, -2, 1, 4),
	       ('c17', 'groupE', 2, 1, 0, 8, 2, 6, 7, 1),
	       ('c18', 'groupE', 2, 0, 1, 7, 6, 1, 6, 2),
	       ('c19', 'groupE', 1, 1, 1, 3, 3, 0, 4, 3),
	       ('c20', 'groupE', 0, 0, 3, 1, 8, -7, 0, 4),
	       ('c21', 'groupF', 3, 0, 0, 6, 3, 3, 9, 1),
	       ('c22', 'groupF', 1, 1, 1, 3, 3, 0, 4, 2),
	       ('c23', 'groupF', 1, 0, 2, 4, 4, 0, 3, 3),
	       ('c24', 'groupF', 0, 1, 2, 1, 4, -3, 1, 4),
	       ('c25', 'groupG', 2, 1, 0, 7, 2, 5, 7, 1),
	       ('c26', 'groupG', 1, 1, 1, 4, 4, 0, 4, 2),
	       ('c27', 'groupG', 1, 1, 1, 4, 7, -3, 4, 3),
	       ('c28', 'groupG', 0, 1, 2, 4, 6, -2, 1, 4),
	       ('c29', 'groupH', 3, 0, 0, 4, 1, 3, 9, 1),
	       ('c30', 'groupH', 1, 1, 1, 6, 5, 1, 4, 2),
	       ('c31', 'groupH', 0, 2, 1, 2, 3, -1, 2, 3),
	       ('c32', 'groupH', 0, 1, 2, 3, 6, -3, 1, 4);
	       
--Find the standings for countries in Group H--
select c.country, g.pointsTotaledInGroup
from countries c, groupedIn g
where g.cid = c.cid
AND   g.grid = 'groupH'
order by g.pointsTotaledInGroup DESC;

--create Games table--
drop table games;
create table games(
	gameNumber int NOT NULL PRIMARY KEY,
	dateOfGameMD text,
	typeOfGame text,
	CHECK (typeOfGame in ('Group Stage', 'Round of 16', 'Quarterfinal', 'Semifinal', 'Third Place', 'Final')),
	cid1 text references countries(cid),
	cid2 text references countries(cid),
	CHECK (cid1 != cid2),
	isTieInRegularTime boolean,
	wentIntoOvertime boolean
	)

INSERT INTO games (gameNumber, dateOfGameMD, typeOfGame, cid1, cid2, isTieInRegularTime, wentIntoOvertime)
	VALUES (1,  '06/12', 'Group Stage', 'c01', 'c03', false, false),
	       (2,  '06/13', 'Group Stage', 'c02', 'c04', false, false),
	       (3,  '06/13', 'Group Stage', 'c07', 'c05', false, false),
	       (4,  '06/13', 'Group Stage', 'c06', 'c08', false, false),
	       (5,  '06/14', 'Group Stage', 'c09', 'c10', false, false),
	       (6,  '06/14', 'Group Stage', 'c11', 'c12', false, false),
	       (7,  '06/14', 'Group Stage', 'c14', 'c13', false, false),
	       (8,  '06/14', 'Group Stage', 'c16', 'c15', false, false),
	       (9,  '06/15', 'Group Stage', 'c18', 'c19', false, false),
	       (10, '06/15', 'Group Stage', 'c17', 'c20', false, false),
	       (11, '06/15', 'Group Stage', 'c21', 'c23', false, false),
	       (12, '06/16', 'Group Stage', 'c24', 'c22', true,  false),
	       (13, '06/16', 'Group Stage', 'c25', 'c27', false, false),
	       (14, '06/16', 'Group Stage', 'c28', 'c26', false, false),
	       (15, '06/17', 'Group Stage', 'c29', 'c30', false, false),
	       (16, '06/17', 'Group Stage', 'c31', 'c32', true,  false),
	       (17, '06/17', 'Group Stage', 'c01', 'c02', true,  false),
	       (18, '06/18', 'Group Stage', 'c04', 'c03', false, false),
	       (19, '06/18', 'Group Stage', 'c07', 'c06', false, false),
	       (20, '06/18', 'Group Stage', 'c08', 'c05', false, false),
	       (21, '06/19', 'Group Stage', 'c09', 'c11', false, false),
	       (22, '06/19', 'Group Stage', 'c12', 'c10', true,  false),
	       (23, '06/19', 'Group Stage', 'c14', 'c16', false, false),
	       (24, '06/20', 'Group Stage', 'c15', 'c13', false, false),
	       (25, '06/20', 'Group Stage', 'c18', 'c17', false, false),
	       (26, '06/20', 'Group Stage', 'c20', 'c19', false, false),
	       (27, '06/21', 'Group Stage', 'c21', 'c24', false, false),
	       (28, '06/21', 'Group Stage', 'c22', 'c23', true,  false),
	       (29, '06/21', 'Group Stage', 'c25', 'c28', true,  false),
	       (30, '06/22', 'Group Stage', 'c26', 'c27', false, false),
	       (31, '06/22', 'Group Stage', 'c29', 'c31', false, false),
	       (32, '06/22', 'Group Stage', 'c32', 'c30', false, false),
	       (33, '06/23', 'Group Stage', 'c04', 'c01', false, false),
	       (34, '06/23', 'Group Stage', 'c03', 'c02', false, false),
	       (35, '06/23', 'Group Stage', 'c08', 'c07', false, false),
	       (36, '06/23', 'Group Stage', 'c05', 'c06', false, false),
	       (37, '06/24', 'Group Stage', 'c12', 'c09', false, false),
	       (38, '06/24', 'Group Stage', 'c10', 'c11', false, false),
	       (39, '06/24', 'Group Stage', 'c15', 'c14', false, false),
	       (40, '06/24', 'Group Stage', 'c13', 'c16', true,  false),
	       (41, '06/25', 'Group Stage', 'c20', 'c18', false, false),
	       (42, '06/25', 'Group Stage', 'c19', 'c17', true,  false),
	       (43, '06/25', 'Group Stage', 'c22', 'c21', false, false),
	       (44, '06/25', 'Group Stage', 'c23', 'c24', false, false),
	       (45, '06/26', 'Group Stage', 'c26', 'c25', false, false),
	       (46, '06/26', 'Group Stage', 'c27', 'c28', false, false),
	       (47, '06/26', 'Group Stage', 'c32', 'c29', false, false),
	       (48, '06/26', 'Group Stage', 'c30', 'c31', true,  false),
	       (49, '06/28', 'Round of 16', 'c01', 'c06', true,  true),
	       (50, '06/28', 'Round of 16', 'c09', 'c14', false, false),
	       (51, '06/29', 'Round of 16', 'c05', 'c02', false, false),
	       (52, '06/29', 'Round of 16', 'c13', 'c10', true,  true),
	       (53, '06/30', 'Round of 16', 'c17', 'c22', false, false),
	       (54, '06/30', 'Round of 16', 'c25', 'c30', true,  true),
	       (55, '07/01', 'Round of 16', 'c21', 'c18', true,  true),
	       (56, '07/01', 'Round of 16', 'c29', 'c26', true,  true),
	       (57, '07/04', 'Quarterfinal', 'c01', 'c09', false, false),
	       (58, '07/04', 'Quarterfinal', 'c17', 'c25', false, false),
	       (59, '07/05', 'Quarterfinal', 'c05', 'c13', true,  true),
	       (60, '07/05', 'Quarterfinal', 'c21', 'c29', false, false),
	       (61, '07/08', 'Semifinal', 'c01', 'c25', false,  false),
	       (62, '07/09', 'Semifinal', 'c05', 'c21', true,  true),
	       (63, '07/12', 'Third Place', 'c01', 'c05', false,  false),
	       (64, '07/13', 'Final', 'c25', 'c21', true,  true);

select *
from games;
	         
--create Goals Table--
create table goals(
	gameNumber int references games(gameNumber),
	cid text references countries(cid),
	goalsScored int,
	result char(1),
	CHECK (goalsScored >= 0),
	CHECK (result = 'W' OR result = 'T' OR result = 'L'),
	primary key(gameNumber, cid)
	);


INSERT INTO goals(gameNumber, cid, goalsScored, result)
VALUES (1,'c01',3, 'W'),
       (1,'c03',1, 'L'),
       (2,'c02',1, 'W'),
       (2,'c04',0, 'L'),
       (3,'c07',1, 'L'),
       (3,'c05',5, 'W'),
       (4,'c06',3, 'W'),
       (4,'c08',1, 'L'),
       (5,'c09',3, 'W'),
       (5,'c10',0, 'L'),
       (6,'c11',2, 'W'),
       (6,'c12',1, 'L'),
       (7,'c14',1, 'L'),
       (7,'c13',3, 'W'),
       (8,'c16',1, 'L'),
       (8,'c15',2, 'W'),
       (9,'c18',2, 'W'),
       (9,'c19',1, 'L'),
       (10,'c17',3, 'W'),
       (10,'c20',0, 'L'),
       (11,'c21',2, 'W'),
       (11,'c23',1, 'L'),
       (12,'c24',0, 'T'),
       (12,'c22',0, 'T'),
       (13,'c25',4, 'W'), 
       (13,'c27',0, 'L'),
       (14,'c28',1, 'L'),
       (14,'c26',2, 'W'),
       (15,'c29',2, 'W'),
       (15,'c30',1, 'L'),
       (16,'c31',1, 'T'),
       (16,'c32',1, 'T'),
       (17,'c01',0, 'T'),
       (17,'c02',0, 'T'),
       (18,'c04',0, 'L'),
       (18,'c03',4, 'W'),
       (19,'c07',0, 'L'),
       (19,'c06',2, 'W'),
       (20,'c08',2, 'L'),
       (20,'c05',3, 'W'),
       (21,'c09',2, 'W'),
       (21,'c11',1, 'L'),
       (22,'c12',0, 'T'),
       (22,'c10',0, 'T'),
       (23,'c14',2, 'W'),
       (23,'c16',1, 'L'),
       (24,'c15',0, 'L'),
       (24,'c13',1, 'W'),
       (25,'c18',2, 'L'),
       (25,'c17',5, 'W'),
       (26,'c20',1, 'L'),
       (26,'c19',2, 'W'),
       (27,'c21',1, 'W'), 
       (27,'c24',0, 'L'),
       (28,'c22',1, 'W'),
       (28,'c23',0, 'L'),
       (29,'c25',2, 'T'),
       (29,'c28',2, 'T'),
       (30,'c26',1, 'T'),
       (30,'c27',0, 'T'),
       (31,'c29',2, 'L'),
       (31,'c31',4, 'W'),
       (32,'c32',1, 'L'),
       (32,'c30',4, 'W'),
       (33,'c04',1, 'L'),
       (33,'c01',3, 'W'),
       (34,'c03',0, 'L'),
       (34,'c02',3, 'W'),
       (35,'c08',2, 'W'),
       (35,'c07',0, 'L'),
       (36,'c05',1, 'L'),
       (36,'c06',4, 'W'),
       (37,'c12',2, 'W'),
       (37,'c09',1, 'L'),
       (38,'c10',0, 'L'),
       (38,'c11',1, 'W'),
       (39,'c15',0, 'L'),
       (39,'c14',1, 'W'),
       (40,'c13',0, 'T'),
       (40,'c16',0, 'T'),
       (41,'c20',0, 'L'),
       (41,'c18',3, 'W'), 
       (42,'c19',0, 'T'),
       (42,'c17',0, 'T'),
       (43,'c22',2, 'L'),
       (43,'c21',3, 'W'),
       (44,'c23',3, 'W'),
       (44,'c24',1, 'L'),
       (45,'c26',0, 'L'),
       (45,'c25',1, 'W'),
       (46,'c27',2, 'W'), 
       (46,'c28',1, 'L'),
       (47,'c32',0, 'L'),
       (47,'c29',1, 'W'),
       (48,'c30',1, 'T'),
       (48,'c31',1, 'T'),
       (49,'c01',1, 'W'),
       (49,'c06',1, 'L'),
       (50,'c09',2, 'W'),
       (50,'c14',0, 'L'),
       (51,'c05',2, 'W'),
       (51,'c02',1, 'L'),
       (52,'c13',1, 'W'),
       (52,'c10',1, 'L'),
       (53,'c17',2, 'W'),
       (53,'c22',0, 'L'),
       (54,'c25',2, 'W'),
       (54,'c30',1, 'L'),
       (55,'c21',1, 'W'),
       (55,'c18',0, 'L'),
       (56,'c29',2, 'W'),
       (56,'c26',1, 'L'),
       (57,'c01',2, 'W'),
       (57,'c09',1, 'L'),
       (58,'c17',0, 'L'),
       (58,'c25',1, 'W'),
       (59,'c05',0, 'W'),
       (59,'c13',0, 'L'),
       (60,'c21',1, 'W'),
       (60,'c29',0, 'L'),
       (61,'c01',1, 'L'),
       (61,'c25',7, 'W'),
       (62,'c05',0, 'L'),
       (62,'c21',0, 'L'),
       (63,'c01',0, 'W'),
       (63,'c05',3, 'L'),
       (64,'c25',1, 'L'),
       (64,'c21',0, 'W');
       
--create OvertimeGames table--
create table overtimeGames(
	gameNumber int references games(gameNumber) PRIMARY KEY,
	wentIntoPenaltyShootout boolean
	);
INSERT INTO overtimeGames(gameNumber, wentIntoPenaltyShootout)
VALUES (49, true), 
       (52, true),
       (54, false),
       (55, false),
       (56, false),
       (59, true),
       (62, true),
       (64, false);


--create penaltyShootout table--
drop table penaltyShootout;
create table penaltyShootout(
	gameNumber int references overtimeGames(gameNumber),
	cid text references countries(cid),
	penaltiesMade int, 
	CHECK (penaltiesMade >= 0),
	primary key(gameNumber, cid)
	);

INSERT INTO penaltyShootout(gameNumber, cid, penaltiesMade)
VALUES (49, 'c01', 3), 
       (49, 'c06', 2),
       (52, 'c13', 5),
       (52, 'c10', 3),
       (59, 'c05', 4),
       (59, 'c13', 3),
       (62, 'c05', 2),
       (62, 'c21', 4);