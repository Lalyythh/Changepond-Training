use classicmodels;
select *from employees;
select *from customers;
select *from orders;
select *from orderdetails;


### Inner joins

select orderNumber , c.customerName, c.city from customers c inner join orders o ;

SELECT o.orderNumber, c.customerName, c.city
FROM customers c
INNER JOIN orders o ON c.customerNumber = o.customerNumber;

select c.customerName, o.orderDate, c.creditLimit, o.status from customers c inner join orders o where o.status="Shipped";

select c.customerName,o.orderDate from customers c inner join orders o where o.orderDate between "2005=01=01" and "2005-12-31";

select c.customerName, sum(od.priceEach) from customers c inner join orderdetails od group by customerName;

select o.ordernumber, c.country from customers c inner join orders o where p.amount > 3000 from payment p ;


SELECT o.ordernumber, c.country
FROM customers c
JOIN orders o ON c.customernumber = o.customernumber
JOIN payments p ON o.ordernumber = p.ordernumber
WHERE p.amount > 3000;


