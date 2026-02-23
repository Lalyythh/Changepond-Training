use classicmodels;
select *from employees;
select *from customers;
select *from orders;
select *from orderdetails;
select *from offices;

select c.customername, sum(od.quantityOrdered*od.priceEach) as Total from customers c 
join orders o using(customernumber)
join orderdetails od using (ordernumber) 
group by c.customernumber having total > 100000 order by total asc;
