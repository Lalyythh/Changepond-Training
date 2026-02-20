use sql_practice;
select *from employees;


### Sub Queries

select *from employees where salary > (select avg(salary) from employees);

select *from orders;
select *from customers;

select  customer_id, count(order_id) from orders group by customer_id ;

select * from customers where (select count(order_id) from orders) < 0;

select  *from employees where salary > (select max(salary) from employees where department="HR");

select * from orders where amount > (select avg(amount) from orders);

select *from employees where salary in(select salary from employees where department="Finance");

select *from customers where customer_id in (select customer_id from orders where amount > 4000 );

select * from employees where salary = (select salary from employees order by salary desc limit 1 offset 1);

select *from employees where hire_date > (select hire_date from employees where department="HR" order by hire_date desc limit 1);

select *from customers where customer_id in (select customer_id from orders where order_date between '2025-01-01' and '2025-12-31');

### Group By Exercise

select department,count(*) from employees group by department;

select department, sum(salary) as total_salary from employees group by department;

select department, avg(salary) as average_salary from employees group by department;

select country, count(first_name) from customers group by country;

Select customer_id, (select first_name from customers c where c.customer_id = o.customer_id)
as first_name, sum(amount) as total_amount
from orders o
group by customer_id;

select status, count(status) from orders group by status;

select department,max(salary) from employees group by department;

select year(order_date) ,min(amount) from orders group by year(order_date);


### HAVING Exercises

select distinct department , avg(salary) from employees group by department;




