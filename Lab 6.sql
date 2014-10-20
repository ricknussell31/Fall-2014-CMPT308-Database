--Nicholas Russell--
--Professor Labouseur--
--Database Systems Management--
--Lab 6: Really Interesting Queries --

--1. Get the name and city of customers who live in a city that makes the most different kinds of products. (There are two cities that make the most different products. Return the name and city of customers from either one of those)--
select name, city
from customers
where city in (select city
	       from (select city, sum(quantity) 
		     from products
		     group by city
		     order by sum(quantity) desc
		     limit 1) 
		as "mostcity") 

--2. Get the name and city of customers who live in ANY city that makes the most different kinds of products. --

--3. List the products who priceUSD is above the average priceUSD.--
select name
from products
where priceUSD > (select avg(priceUSD))
		  from products)
		  );	

--4. Show the customer name, pid ordered, and the dollars for all customer orders, sorted by dollars from low to high. --
select c.name, o.pid, o.dollars
from orders o, customers c
where o.cid = c.cid
order by o.dollars desc ;

--5. Show all customer names (in order) and their total ordered, and nothing more. Use coalesce to avoid showing NULLs. --

--6. Show the names of all customers who bought products from agents based in New York along with the names of the products they ordered, and the names of the agents who sold it to them. --

--7. Write a query to check the accuracy of the dollars column in the Orders table. This means calculating Orders.dollars from data in other tables and comparing those values to the values in Orders.dollars. Return all rows in Orders where Orders.dollars is incorrect, if any. --