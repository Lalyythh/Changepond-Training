use classicmodels;
select *from products;

select productname, p.productLine, textdescription 
from  products p inner join productlines pl on p.productLine =p.productLine;

select * from productlines;

select o.ordernumber, o.status, sum(quantityOrdered*priceEach) as total_sales 
from orders o inner join orderdetails od on o.orderNumber = od.orderNumber group by o.orderNumber;

select o.ordernumber,o.status,od.quantityOrdered, od.priceEach, o.orderDate, productName 
from orders o inner join orderdetails od on o.orderNumber = od.orderNumber 
inner join products using(productcode) order by productName;

select c.customernumber, customername, ordernumber, status
from customers c left join orders o
on  c.customerNumber = o.customerNumber;

select employeenumber, customerNumber from customers
right join employees on salesRepEmployeeNumber = employeeNumber;

select concat(e.lastname, " ", e.firstname) manager,
concat(mgr.lastname, " ", mgr.firstname) employee from employees e
inner join employees mgr
on e.employeenumber = mgr.reportsTo;