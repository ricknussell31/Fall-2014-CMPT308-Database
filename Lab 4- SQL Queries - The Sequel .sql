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

select cid, name
from customers
where cid not in (select cid
		  from orders
	          where aid = 'a04')

--4. Get the cids and names of customers who ordered both product p01 and p07.--

select cid, name
from customers
where cid in (select cid 
	      from orders
	      where pid = 'p01'
	      
	      intersect
	      
	      select cid
	      from orders
	      where pid = 'p07')

--5. Get the pids of products ordered by any customers who ever placed an order through agent a04. --

select pid
from products 
where pid in (select pid
	      from orders
	      where aid = 'a04')

--6. Get the names and discounts of all customers who place orders through agents in Dallas and Newark. --

select name, discount
from customers
where cid in (select cid
	      from orders
	      where aid in (select aid
			    from agents
			    where city = 'Dallas')

	      intersect

	      select cid
	      from orders
	      where aid in (select aid
			    from agents
			    where city = 'Newark')
	       )

--7. Find all customers who have the same discount as that of any customers in Dallas or Kyoto. --

select name
from customers
where discount in (select discount
		   from customers
		   where city in ('Dallas', 'Kyoto')) AND city not in ('Dallas', 'Kyoto')
		   
