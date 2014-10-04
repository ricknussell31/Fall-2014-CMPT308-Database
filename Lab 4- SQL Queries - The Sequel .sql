--Nicholas Russell--
--Professor Labouseur--
--October 4, 2014--
--Lab 4: SQL Queries--

--1. Get the cities of agents booking an orer for customer "TipTop".--
select distinct city
from agents
where aid in (select aid 
	      from orders
	      where cid in (select cid
			    from customers
	                    where name = 'Tiptop')
	      )

--2. Get the pids of products ordered through any agent who makes at least one order for a customer in Kyoto.--

select distinct pid
from orders
where aid in (select aid
	      from orders
	      where cid in (select cid
		            from customers
		            where city = 'Kyoto')
		            )

		            
--3. Find the cids and names of customers who never placed an order through agent a04.--



