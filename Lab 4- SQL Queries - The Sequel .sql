--Nicholas Russell--
--Professor Labouseur--
--October 4, 2014--
--Lab 4: SQL Queries--

--1. Get the cities of agents booking an orer for customer "TipTop".--
select city
from agents
where aid in (select aid 
	      from orders
	      where cid in (select cid
			    from customers
	                    where name = 'Tiptop')
	      )



