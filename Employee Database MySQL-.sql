Create database Employee_database;

use employee_database;

--- Create department table-

Create table Departments(
department_id int auto_increment primary key,
department_name varchar(50) not null unique
);

select * from departments;

--- create table Location-

Create table Location(
location_id int auto_increment primary key,
location_name varchar(100) not null unique
);

desc Location;

--- create table employees-

create table employees(
employee_id int auto_increment primary key,
department_id int,
location_id int,
employee_name varchar(100) not null,
gender enum('M','F'),
age int check (age >= 18),
hire_date date default (current_date),
designation varchar(100),
salary int,
foreign key (department_id) references departments (department_id),
foreign key(location_id) references location (location_id)
);

select * from employees;
use employee_database;

--- Alter table-Add email column-
Alter table employees 
add column Email varchar(100) unique;

select * from employees;

--- Modify the data type of the destination column- wider range of value--

Alter table employees 
Modify designation varchar(400); 

select * from Employees;

--- drop age column  from employee table--

alter table employees
drop column age;

--- Rename the “hire_date” column to date_of_joining-

Alter table employees
rename column hire_date to date_of_joining;

/* Table Rename departments to department_info */

Rename table departments to department_info;

Rename table location to locations;



/* Truncate employees table */

truncate table employees;



/* Database and table dropping */

drop table employees;
drop database employee_database;


/* database recreation */

drop database employee_database;

Create database Employee_database;

use employee_database;

--- Create department table-

Create table Departments(
department_id int auto_increment primary key,
department_name varchar(50) not null unique
);

use employee_database;

ALTER TABLE departments
ADD CONSTRAINT UNIQUE (department_id);


select * from departments;

--- create table Location-

Create table Location(
location_id int auto_increment primary key,
location_name varchar(100) not null unique
);

--- create table employees-

create table employees(
employee_id int auto_increment primary key,
department_id int,
location_id int,
employee_name varchar(100) not null,
gender enum('M','F'),
age int check (age >= 18),
hire_date date default (current_date),
designation varchar(100),
salary int,
foreign key (department_id) references departments (department_id),
foreign key(location_id) references location (location_id)
);

/*  Ensure that the "department_id" uniquely identifies each department */

 insert into departments(department_name)
 values('HR'),('Finance'),('IT'),('Sales');

select * from departments;

/* Set up constraints on the "department_name" to avoid duplicate and null entries */


SELECT * 
FROM departments
WHERE department_name is not null;

/* Locations Table
● Establish a mechanism to automatically generate unique identifiers for each 
location, ensuring that they are incremented sequentially */

insert into location( location_name)
values('Chennai'),('Coimbatore'),('Mumbai'),('Bangalore');

select * from location;

/* Implement constraints to prevent the insertion of null and duplicate locations */

SELECT * 
FROM location
WHERE location_name is not null;

/*checking duplicate  
INSERT INTO locations (location_name) VALUES ('Chennai'); 
chennai name already exists */

/* Employees Table:  
 Guarantee that each employee has a distinct identifier */

INSERT INTO employees (employee_name, gender, age, hire_date, designation, salary,department_id, location_id)
VALUES ('Arun Kumar', 'M', 28, '2025-01-01', 'developer', 45000,1,1),
('Karthik', 'M', 35, '2025-01-20', 'Finance Officer', 55000, 2, 2);
	
    select * from employees;
    
/* Create a restriction to ensure that the employee's name is always provided */    
    
select * from employees
WHERE employee_name is not null;


/* Limit the acceptable values for the "gender" field to only 'M' or 'F' */

select * from employees 
WHERE gender not in ('M','F');

    
/*  Enforce a condition to ensure that the employee's age is 18 or above.  */

insert into employees (employee_name, gender, age, designation, salary, department_id, location_id)
VALUES ('Rahul', 'M', 18, 'Intern', 10000, 3, 3);

insert into employees(employee_name, gender, age, designation, salary, department_id, location_id)
values('Meena','F',20, 'Software Tester', 15000,4,4);


select * from employees 
where age >=18;


/* inserting values in depatment and loction */

INSERT INTO departments (department_name) VALUES ('Research');
INSERT INTO departments (department_name) VALUES ('Business Analyst');

INSERT INTO location (location_name) VALUES ('Hyderabad');
INSERT INTO location (location_name) VALUES ('Karnataka');
INSERT INTO location (location_name) VALUES ('Gujarat');

 select * from departments;
 select * from location;

/* Automatically assign the current date to the "hire_date" field if not specified */  


INSERT INTO employees (employee_name, gender, age, designation, salary, department_id, location_id)
VALUES ('Priya sharma', 'F', 30, 'Manager', 55000, 5,5);
insert into employees (employee_name, gender, age, designation, salary, department_id, location_id)
values ('Priya','F',32,'Analyst',45000,7,6);

select * from departments;
select * from location;
select * from employees;

--- part 2 --SQL---
 use employee_database;

-- distinct salary --

select distinct salary from employees;

alter table employees add column age int;

select * from employees;

update employees set age =25 where employee_id =1;
update employees set age =19 where employee_id =2;
update employees set age =22 where employee_id =3;
update employees set age =37 where employee_id =4;
update employees set age =40 where employee_id =6;
update employees set age =41 where employee_id =14;
update employees set age =18 where employee_id =15;


update employees set date_of_joining='2017-01-01' where employee_id=1;
update employees set date_of_joining='2016-01-01' where employee_id=2;
update employees set date_of_joining='2020-01-31' where employee_id=3;
update employees set date_of_joining='2025-03-23' where employee_id= 6;
update employees set date_of_joining='2015-01-01' where employee_id= 15;

insert into employees (department_id, location_id, employee_name, gender, date_of_joining, designation, salary, age)
Values (3, 7, 'Meena', 'F', '2017-01-01', NULL, NULL, 21);

insert into employees (employee_id, department_id,location_id, employee_name, gender, date_of_joining, designation, salary, age)
values (5,2,5,'surya','M','2018-01-01','IT',45000,22),
(7,5,6,'Jothi','F','2018-01-05','intern',20000,27),
(8,7,2,'Devi','F','2018-03-18','developer',30000,30),
(9,1,1,'Kumar','M','2018-05-01','Analyst',35000,30),
(10,2,4,'Dhinesh','M','2018-07-01','Software Tester',25000,25);




-- Alias - age,salary-

select age as employee_age , salary as employee_salary from employees;


-- WHERE CLAUSE & OPERATORS:Retrieve employees with a salary greater than ₹50000 and hired before 2016-01-01.

select * from employees where salary > 50000 and date_of_joining < '2016-01-01';



-- Find the employee whose designation is missing and fill it with "Data Scientist".

select * from employees where designation is not null;
Update employees
Set designation = 'Data Scientist'
where designation is null;

Update employees
Set salary = 45000
where salary is null;

select * from employees;
select * from departments;



/* Sorting and Grouping Data- ORDER BY:
 Find employees sorted by department ID in ascending order and salary in descending order */


select * from employees order by department_id asc,salary desc;



--  LIMIT: Display the first 5 employees hired in the year 2018.

select * from employees 
where  Year(date_of_joining)= 2018 
order by date_of_joining asc 
limit 5;

-- AGGREGATE FUNCTIONS: Calculate the sum of all salaries in the Finance department-

select sum(salary) Tot_Fin_salary
from employees
where department_id=2;

select * from employees;
select * from departments;

-- Find the minimum age among all employees.

select min(age) Min_age
from employees;

-- GROUP BY:List the maximum salary for each location.

select location_id ,max(salary) max_salary
from employees
group by location_id;

--- Calculate the average salary for each designation containing the word 'Analyst'.

select designation , avg(salary) avg_salary
from employees 
where designation like '%Analyst%'
group by designation;


--- HAVING:Find departments with less than 3 employees.

select department_id, COUNT(*) AS total_employees
from employees
group by department_id
having COUNT(*) < 3;

--- Find locations with female employees whose average age is below 30.

select location_id , avg(age) as avg_female_employee
from employees
where gender ='F'
group by location_id
having avg(age) < 30;

--- Joins:INNER JOIN:
--- List employee names, their designations, and department names where employees are assigned to a department.

select e.employee_name,
e.designation,
d.department_name
from employees e
inner join departments d on e.department_id=d.department_id;

--- LEFT JOIN:
-- List all departments along with the total number of employees in each department, including departments with no employees.

select d.department_id, 
d.department_name,
count(e.employee_id) as  Tot_employees_Each_department
from departments d
left join employees e 
on d.department_id=e.department_id
group by d.department_id,d.department_name;

--- RIGHT JOIN:Display all locations along with the names of employees assigned to each location.
-- If no employees are assigned to a location, display NULL for employee name.

use employee_database;

select l.location_id,
l.location_name,
e.employee_name
from employees e
right join location l 
on l.location_id = e.location_id;

--- CROSS JOIN- Show all possible combinations of departments and locations.

select  d.department_name,l.location_name
from departments d
cross join location l;


--- SELF JOIN: Show pairs of employees working in the same department, excluding self-pairs.

select e1.employee_name as employee_1,
       e2.employee_name as employee_2,
       e1.department_id
from employees e1
join employees e2
  on e1.department_id = e2.department_id
 and e1.employee_id <> e2.employee_id;


--- Windows function-Write a window function query to rank employees by salary using rank().

Select employee_name,
       salary,
       Rank() over (order by salary desc) as salary_rank
from employees;


--- Write a window function query to rank employees by salary within each department using DENSE_RANK()

Select employee_name,
       department_id,
       salary,
       dense_rank() over (partition by department_id order by salary desc) as dept_salary_rank
from employees;


--- Write a window function query, Running total salary by department

select employee_name,
       department_id,
       salary,
       SUM(salary) over (partition by department_id order by employee_id) as running_total_salary
from employees;












