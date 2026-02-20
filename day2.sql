use classicmodels;
select *from orders;

select *from products;

select orderdate, count(*) as nooforders from orders group by orderdate;
select reportsTo, count(reportsTo) from employees group by reportsto;
select count(reportsTo) from employees;
select count(distinct reportsto) from employees;

select ordernumber,productcode,sum(quantityordered), min(quantityordered), max(quantityordered), avg(quantityordered) 
from orderdetails 
where productcode like 'S10%'
group by productcode,ordernumber 
having max(quantityordered) >= 40
order by productcode desc
limit 10;

select *from employees;

select orderdate, count(*) from orders where orderdate between '2003-01-06' and '2003-12-31' group by orderdate;

select productcode, count(ordernumber) from orderdetails
where productcode = (select productcode from products where productname = "1969 Harley Davidson Ultimate Chopper")
group by productcode;

select (select productname from products p where p.productcode = o.productcode) as productname,
count(ordernumber) as NoOfOrders from orderdetails o
where productcode in (select productcode from products where productline = "Motorcycles")
group by productcode;

