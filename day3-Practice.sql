use classicmodels;
select *from employees;
select *from customers;
select *from orders;
select *from orderdetails;
select *from offices;

use sql_practice;
select *from customers;
select *from employees;
select *from orders;

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
inner JOIN orders o ON c.customernumber = o.customernumber
inner JOIN payments p ON o.ordernumber = p.ordernumber
WHERE p.amount > 3000;


### Left Join

select c.CustomerName, o.Ordernumber
from Customers c
left join Orders o on c.Customernumber = o.Customernumber;

select C.CustomerName, o.ordernumber
from Customers C
left join Orders O on C.Customernumber = O.Customernumber
where O.Ordernumber is null;

select C.CustomerName, COUNT(O.Ordernumber) as NumberOfOrders
from Customers C
left join Orders O on C.Customernumber = O.Customernumber
group by C.Customernumber, C.CustomerName;

select E.first_name,E.last_name, D.Department
from Employees E
join employees D on E.Department = D.Department;

select concat(C.first_name, " ", C.last_name) as Name, SUM(o.amount) as TotalAmountSpent
from Customers C
left join Orders O on C.Customer_id = O.Customer_id
left join Orders OI on O.Order_id = OI.Order_id
group by C.Customer_id, C.Customer_id;

### Right Join

select O.Order_id, C.Customer_id, concat(C.first_name, " ", C.last_name) as Name, C.email, C.city, c.country
from Customers C
right join Orders O on C.Customer_id = O.Customer_id;

select O.Order_id, concat(C.first_name, " ", C.last_name) as Name
from Customers C
right join Orders O on C.Customer_id = O.Customer_id;

select O.Order_id, O.Order_date, C.City
from Customers C
right join Orders O on C.Customer_id = O.Customer_id;

#### SELF JOIN

select concat(e.firstname,e.lastname) manager,
concat(mgr.firstname,mgr.lastname) employee from employees e
inner join employees mgr
on e.employeenumber=mgr.reportsto;

select * from employees e
inner join employees mgr
on e.employeenumber=mgr.reportsto;
 
select concat(e.firstname,e.lastname) manager,
concat(mgr.firstname,mgr.lastname) employee from employees e
inner join employees mgr
on e.employeenumber=mgr.reportsto;

select mgr.firstname as manager, count(e.employeenumber) as employee_count
from employees e
inner join employees mgr on e.reportsto = mgr.employeenumber
group by mgr.employeenumber;

select * from employees
where reportsto is null;


#### CROSS JOIN

select e.department, o.status from employees e cross join orders o;

select concat(c.first_name, c.last_name), e.job_title from customers c cross join employees e;


#### MIXED JOIN

select c.customername, sum(od.quantityOrdered*od.priceEach) as total_order_amount 
from customers c 
left join orders o using (customernumber)
left join orderdetails od using (ordernumber) 
group by c.customerNumber order by total_order_amount desc;

select * from orders;
select c.customerName,count(orderNumber) totalorder from customers c inner join orders o using (customerNumber)
group by o.customernumber having totalorder>2;

select c.customername
from customers c
left join orders o on c.customernumber = o.customernumber and o.status = 'completed'
where o.ordernumber is null;

select c.customername, sum(od.quantityordered*od.priceeach) as total_amount
from customers c
inner join orders o on c.customernumber = o.customernumber
inner join orderdetails od on o.ordernumber = od.ordernumber
group by c.customernumber
order by total_amount desc
limit 3;

select e.*
from employees e
inner join (
    select department, avg(salary) as avg_salary
    from employees
    group by department
) dept_avg on e.department = dept_avg.department
where e.salary > dept_avg.avg_salary;

select c.customername, max(od.quantityordered*od.priceeach) as highest_amount
from customers c
inner join orders o using(customernumber)
inner join orderdetails od using(ordernumber)
group by c.customernumber
order by highest_amount desc
limit 1;



