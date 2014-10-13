--Nicholas Russell--
--Professor Labouseur--
--Database Systems: Lab 5: The Three-quel--
--October 13, 2014

--1. Get the cities of agents booking an order for customer "TipTop". This time use joins; no sub-queries.--

select distinct a.city
from agents a, orders o, customers c
where a.aid = o.aid 
  and c.cid = o.cid
  and c.name = 'Tiptop';

--2. Get the ids of products ordered through any agent who makes at least one order for a customer in Kyoto. Use joins this time; no subqueries.

select distinct o2.pid
from orders o1, customers c, agents a, orders o2
where o1.aid = a.aid
  and o1.cid = c.cid
  and o2.aid = a.aid
  and c.city = 'Kyoto';
      

--3. Get the names of customers who have never placed an order. Use a subquery. 

select name
from customers
where cid in (select cid
	      from customers 
	      where cid not in (select cid
				from orders)
	      )

--4. Get the names of customers who have never placed an order. Use an outer join. 

select c.name
from customers c left outer join orders o
on c.cid = o.cid
where o.ordno is null;

--5. Get the names of customers who placed at least one order through an agent in their city, along with those agent(s)' names. --

select distinct c.name, a.name
from orders o
     inner join 
     customers c 
	on o.cid = c.cid
     inner join 
     agents a
        on o.aid = a.aid
where c.city = a.city;

--6. Get the names of customers and agents in the same city, along with the name of the city, regardless of whether or not the customer has every placed an order with that agent. --

select distinct c.name, a.name, c.city
from customers c, orders o, agents a
where c.cid = o.cid and
      c.city = a.city;

--7. Get the name and city of customers who live in THE city that makes the FEWEST different kinds of products.--

select name, city
from customers
where city = (select city
	      from (select sum(quantity) as "sum", city
		    from products p
		    group by city
		    order by sum ASC
		    limit 1) as "TheFewest");
