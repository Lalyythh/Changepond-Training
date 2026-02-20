create database sql_practice;
use sql_practice;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    job_title VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    status VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (first_name, last_name, email, city, country) VALUES
('Amit', 'Sharma', 'amit@gmail.com', 'Pune', 'India'),
('Neha', 'Verma', 'neha@gmail.com', 'Mumbai', 'India'),
('John', 'Doe', 'john@gmail.com', 'New York', 'USA'),
('Sara', 'Smith', 'sara@gmail.com', 'London', 'UK'),
('Rahul', 'Patil', 'rahul@gmail.com', 'Pune', 'India'),
('Priya', 'Kulkarni', 'priya@gmail.com', 'Delhi', 'India'),
('David', 'Brown', 'david@gmail.com', 'Chicago', 'USA'),
('Anita', 'Desai', 'anita@gmail.com', 'Bangalore', 'India'),
('Michael', 'Johnson', 'michael@gmail.com', 'Toronto', 'Canada'),
('Rohan', 'Mehta', 'rohan@gmail.com', 'Ahmedabad', 'India');

INSERT INTO employees (first_name, last_name, department, job_title, salary, hire_date) VALUES
('Raj', 'Malhotra', 'IT', 'Developer', 75000, '2022-01-15'),
('Simran', 'Kaur', 'HR', 'HR Manager', 65000, '2021-06-10'),
('Arjun', 'Reddy', 'IT', 'Backend Developer', 85000, '2023-03-20'),
('Sneha', 'Joshi', 'Finance', 'Accountant', 55000, '2020-09-12'),
('Vikram', 'Singh', 'IT', 'DevOps Engineer', 95000, '2024-02-01'),
('Meera', 'Nair', 'Marketing', 'Marketing Lead', 70000, '2021-11-05'),
('Karan', 'Shah', 'Finance', 'Financial Analyst', 60000, '2022-07-19'),
('Pooja', 'Iyer', 'IT', 'Frontend Developer', 72000, '2023-08-25'),
('Aman', 'Gupta', 'Sales', 'Sales Manager', 68000, '2021-04-18'),
('Nidhi', 'Bansal', 'HR', 'Recruiter', 50000, '2022-12-30');

INSERT INTO orders (customer_id, order_date, amount, status) VALUES
(1, '2024-01-10', 1500.00, 'Completed'),
(2, '2024-02-15', 2500.00, 'Completed'),
(3, '2024-03-20', 1800.00, 'Pending'),
(4, '2024-04-05', 3200.00, 'Completed'),
(5, '2024-05-18', 2100.00, 'Cancelled'),
(1, '2024-06-22', 4000.00, 'Completed'),
(6, '2024-07-30', 2700.00, 'Pending'),
(7, '2024-08-14', 3500.00, 'Completed'),
(8, '2024-09-01', 2900.00, 'Completed'),
(9, '2024-10-10', 5000.00, 'Completed'),
(10, '2025-01-12', 4500.00, 'Pending'),
(2, '2025-02-05', 3800.00, 'Completed');



select * from customers where country="India";

select * from employees order by salary desc limit 3;

select distinct status from orders;

select *from orders order by order_date desc limit 5;

select * from employees limit 3 offset 2;

select *from customers where city="Pune" order by first_name;


# BETWEEN

select *from employees where salary between '55000' and '85000';

select *from orders where order_date between '2024-03-01' and '2024-08-31';

select *from employees where hire_date between '2021-01-01' and '2023-12-31';

select *from orders where amount between '2000' and '4000';

# IN 

select *from customers where country in ("India","USA","UK");

select *from employees where department in ("IT", "HR", "Finance");

select *from orders where status in ("Completed","Pending");

select *from customers where city in("Pune" , "Mumbai", "Delhi");

# NOT IN

select *from employees where department not in ("IT");

select *from customers where country not in ("India");

select *from orders where status not in("Cancelled");

select *from employees where department not in ("HR", "Sales");

# AND

select *from employees where department = "IT" and salary >= '80000';

select *from customers where country = "India" and city = "Pune";

select *from orders where status = "Completed" and order_date between '2024-01-01' and '2024-12-31' and amount >=3000; #1

select *from orders where status = "Completed" and order_date like '2024%' and amount >=3000;  #2

select *from employees where hire_date >= '2022-01-01' and salary >=60000;

# OR

select *from employees where department = "IT" or salary >= 90000;

select *from customers where city = "Bangalore" or city = "Pune";

select *from orders where status = "Pending" or amount >='4500';

select *from employees where hire_date <='2022-01-01' or salary <='55000';

# LIKE

select *from customers where first_name like "A%";

select *from employees where last_name like "%a";

select *from customers where email like "%gmail%";

select *from employees where first_name like "ra%";

# MIXED CONDITION

select *from employees where department = "IT" and salary between '70000' and '95000';

select *from customers where city not in ("Pune") and country = "India" or country = "USA";

select *from orders where status = "Completed" and order_date between '2024-01-01' and '2024-12-31' and amount between '2000' and '5000';

select *from employees where department = "IT" or department = "HR" and salary >='65000';

select *from customers where first_name like "R%" and country in("India");

select *from employees where department = "IT" order by salary desc limit 5;