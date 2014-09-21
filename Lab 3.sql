select name, city
FROM agents
WHERE name = 'Bond';

select pid, name, quantity
FROM products
WHERE priceUSD > 0.99;

select ordno, qty
FROM orders;

select name, city
FROM customers
WHERE city = 'Duluth';

select name
FROM agents
WHERE (city != 'New York' AND city != 'London');

select *
FROM products
WHERE (city != 'Dallas' AND city != 'Duluth' AND priceUSD <= 1.00);
