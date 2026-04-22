-- Table creation
create table sales(EmployeeID int primary key,Name varchar(20),Department varchar(20),Region varchar(20),Sales int,Target int,Month varchar(20),JoinDate date );
-- Data insertion
insert into sales(EmployeeID,Name,Department,Region,Sales,Target,Month,JoinDate)
values
(101,'Alice','Electronics','North',12000,15000,'2025-01','2022-03-10'),
(102,'Bob','Furniture','South',18000,17000,'2025-01','2021-07-23'),
(103,'Charlie','Electronics','East',16000,16000,'2025-01','2023-01-15'),
(104,'Diana','Clothing','West',9000,12000,'2025-01','2020-11-02'),
(105,'Ethan','Furniture','North',21000,20000,'2025-01','2022-06-30'),
(106,'Fiona','Clothing','South',11000,10000,'2025-01','2023-05-12'),
(107,'George','Electronics','East',7000,10000,'2025-01','2021-02-01'),
(108,'Hannah','Furniture','North',19000,18000,'2025-01','2022-09-14'),
(109,'Ian','Electronics','West',13500,15000,'2025-01','2022-04-10'),
(110,'Jenny','Clothing','South',9500,9000,'2025-01','2023-03-25'),
(111,'Kevin','Electronics','North',17500,17000,'2025-01','2021-08-19'),
(112,'Lara','Furniture','East',16200,15000,'2025-01','2021-10-12'),
(113,'Mike','Clothing','West',10200,11000,'2025-01','2020-12-20'),
(114,'Nora','Furniture','South',18500,18500,'2025-01','2022-02-14'),
(115,'Oscar','Electronics','North',12200,14000,'2025-01','2023-06-01'),
(116,'Priya','Clothing','East',14500,13000,'2025-01','2022-11-11'),
(117,'Rahul','Furniture','North',19500,18000,'2025-01','2021-01-05'),
(118,'Sara','Clothing','South',8900,9500,'2025-01','2023-01-20'),
(119,'Tom','Electronics','West',11300,12000,'2025-01','2020-05-30'),
(120,'Uma','Furniture','East',16800,17000,'2025-01','2022-08-08');
-- view all data
select * from sales;
-- List employees who achieved more than Rs.15000 in sales
select * from sales where sales>15000;
-- Show names and departments of employees in the south region
select name,department from sales where region='South';
-- Find employees whose sales are less than their target
select * from sales where sales<target;
-- Find total sales for each department
select sum(sales) from sales group by department;
-- Get the average sales per region
select avg(sales) from sales group by region;
-- Count the number of employees in each department
select count(name) as number_of_employees from sales group by department;
-- List employees who met or exceeded their target in the east region
select * from sales where region='east' and sales>='target';
-- Find employees who joined before 2022
select * from sales where joindate<'2022-01-01';
-- Find the top 3 employees with the highest sales
select * from sales order by sales desc limit 3;
-- Find the department with the highest total sales
select department,sum(sales) as total_sales from sales group by department order by total_sales desc limit 1; 
-- List employees whose sales are above the average sales
select * from sales where sales>(select avg(sales) from sales);
