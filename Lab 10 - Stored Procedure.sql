--Nicholas Russell--
--Professor Labouseur--
--Database Systems Management--
--November 30, 2014--
--Lab 10: Stored Procedure--

--1. Write a function PreReqsFor(courseNum) where it returns the immediate prerequisites for the passed-in course number. --

create or replace function PreReqsFor(int, REFCURSOR) returns refcursor as 
$$
declare
   course      int       := $1;
   resultset   REFCURSOR := $2;
begin
   open resultset for 
      select prereqnum
      from prerequisites
      where courseNum = course;
   return resultset;
end;
$$ 
language plpgsql;

select PreReqsFor(308, 'results');
Fetch all from results;

--2. Write a function IsReReqFor(courseNum) which returns the courses for which the passed-in course number is an immediate pre-requisite. 

create or replace function IsPreReqFor(int, REFCURSOR) returns refcursor as 
$$
declare
   prereq      int       := $1;
   resultset   REFCURSOR := $2;
begin
   open resultset for 
      select coursenum
      from prerequisites
      where prereq =  prereqnum;
   return resultset;
end;
$$ 
language plpgsql;

select IsPreReqFor(220, 'results');
Fetch all from results;