-- Nicholas Russell--
--Professor Laboseur --
--Lab 3, Queries in SQL --
--September 21, 2014 --

--1. List the name and city of agents named Bond.--	
select name, city
FROM agents
WHERE name = 'Bond';


--2. List pid, name, and quantity of products costing more than US$0.99. --
select pid, name, quantity
FROM products
WHERE priceUSD > 0.99;


--3. List the ordno and qty of all orders. --
select ordno, qty
FROM orders;


--4. List the names and citites of customets in Duluth. --
select name, city
FROM customers
WHERE city = 'Duluth';


--5. List the names agents not in New York and not in London. --
select name
FROM agents
WHERE (city != 'New York' AND city != 'London');


--6. List all data for products not in Dallas or Duluth that cost US$1 or less. --
select *
FROM products
WHERE (city != 'Dallas' AND city != 'Duluth' AND priceUSD <= 1.00);


--7. List all data for orders in January or April. --
select *
FROM orders
WHERE (mon = 'jan' OR mon = 'apr');


--8. List all data for orders in February more than US$200. --
select * 
FROM orders
WHERE (mon = 'feb' AND dollars > 200.00);


--9. List all orders from the customers whose cid is c005. -- 
select *
FROM orders
WHERE cid = 'c005';
