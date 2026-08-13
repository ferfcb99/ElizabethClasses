CREATE DATABASE employeesdb;

USE employeesdb;

CREATE TABLE employees(

    employee_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name NVARCHAR(50),
    last_name NVARCHAR(50),
    email NVARCHAR(100),
    age TINYINT,
    salary DECIMAL(10,2),
    hire_date DATE,
    last_login DATETIME,
    is_active BIT, -- 0 1
    department NVARCHAR(50),
    rating DECIMAL(3,2),
    vacation_hours SMALLINT,
    employee_guid UNIQUEIDENTIFIER,
    notes NVARCHAR(200),
    created_at DATETIME2 DEFAULT SYSDATETIME()
);


INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('John','Smith','john.smith@company.com',28,48500.00,'2021-03-15','2025-01-15 08:30:00',1,'IT',4.60,80,NEWID(),'Senior Developer');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Emma','Johnson','emma.johnson@company.com',35,62000.00,'2019-06-10','2025-01-16 09:10:00',1,'HR',4.90,120,NEWID(),'HR Manager');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Michael','Brown','michael.brown@company.com',41,71000.00,'2018-09-01','2025-01-16 10:15:00',1,'Finance',4.70,96,NEWID(),'Accountant');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Sophia','Davis','sophia.davis@company.com',26,45500.00,'2022-01-20','2025-01-17 08:00:00',1,'Marketing',4.20,72,NEWID(),'Marketing Specialist');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Daniel','Wilson','daniel.wilson@company.com',31,59000.00,'2020-11-11','2025-01-17 09:40:00',0,'Sales',3.90,64,NEWID(),'Sales Representative');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Olivia','Martinez','olivia.martinez@company.com',29,51000.00,'2021-05-18','2025-01-18 07:55:00',1,'Operations',4.30,88,NEWID(),'Operations Analyst');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('James','Anderson','james.anderson@company.com',45,85000.00,'2016-04-12','2025-01-18 11:05:00',1,'IT',4.80,160,NEWID(),'IT Manager');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Ava','Thomas','ava.thomas@company.com',24,43000.00,'2023-02-08','2025-01-18 08:20:00',1,'Support',4.10,56,NEWID(),'Help Desk');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('William','Taylor','william.taylor@company.com',38,67500.00,'2019-08-19','2025-01-19 10:45:00',1,'Finance',4.50,110,NEWID(),'Financial Analyst');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Isabella','Moore','isabella.moore@company.com',33,60500.00,'2020-10-01','2025-01-19 09:15:00',1,'Marketing',4.40,92,NEWID(),'Content Manager');

INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Benjamin','Jackson','ben.jackson@company.com',27,47000.00,'2022-04-05','2025-01-20 08:10:00',1,'IT',4.10,70,NEWID(),'Backend Developer');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Mia','White','mia.white@company.com',30,54000.00,'2021-06-14','2025-01-20 09:00:00',1,'Sales',4.20,85,NEWID(),'Sales Executive');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Lucas','Harris','lucas.harris@company.com',36,68000.00,'2018-12-03','2025-01-20 10:20:00',1,'Operations',4.70,115,NEWID(),'Operations Lead');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Charlotte','Martin','charlotte.martin@company.com',32,61500.00,'2020-09-22','2025-01-21 08:50:00',1,'HR',4.60,90,NEWID(),'Recruiter');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Henry','Thompson','henry.thompson@company.com',40,76000.00,'2017-07-17','2025-01-21 11:00:00',0,'Finance',4.50,130,NEWID(),'Senior Accountant');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Amelia','Garcia','amelia.garcia@company.com',25,44500.00,'2023-01-09','2025-01-21 08:15:00',1,'Support',4.00,60,NEWID(),'Customer Support');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Alexander','Martinez','alex.martinez@company.com',34,64500.00,'2019-11-11','2025-01-22 09:45:00',1,'IT',4.70,98,NEWID(),'DevOps Engineer');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Evelyn','Robinson','evelyn.robinson@company.com',29,52500.00,'2021-04-27','2025-01-22 08:30:00',1,'Marketing',4.30,84,NEWID(),'SEO Specialist');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Matthew','Clark','matthew.clark@company.com',37,70000.00,'2018-06-06','2025-01-22 10:40:00',1,'Sales',4.60,118,NEWID(),'Regional Sales Manager');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Harper','Rodriguez','harper.rodriguez@company.com',28,49500.00,'2022-05-13','2025-01-23 08:05:00',1,'Operations',4.20,74,NEWID(),'Coordinator');

INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('David','Lewis','david.lewis@company.com',42,82000.00,'2016-08-15','2025-01-23 09:55:00',1,'IT',4.90,150,NEWID(),'Solutions Architect');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Ella','Lee','ella.lee@company.com',27,47000.00,'2022-07-19','2025-01-23 08:25:00',1,'HR',4.10,68,NEWID(),'HR Assistant');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Joseph','Walker','joseph.walker@company.com',39,73500.00,'2017-10-10','2025-01-24 10:10:00',1,'Finance',4.70,122,NEWID(),'Controller');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Grace','Hall','grace.hall@company.com',31,57500.00,'2020-03-18','2025-01-24 08:35:00',1,'Marketing',4.40,87,NEWID(),'Graphic Designer');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Samuel','Allen','samuel.allen@company.com',33,61500.00,'2019-09-09','2025-01-24 09:45:00',0,'Sales',3.80,91,NEWID(),'Sales Associate');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Chloe','Young','chloe.young@company.com',26,45200.00,'2023-03-12','2025-01-25 08:00:00',1,'Support',4.20,58,NEWID(),'Support Technician');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Logan','King','logan.king@company.com',44,87000.00,'2015-12-01','2025-01-25 11:20:00',1,'Operations',4.90,168,NEWID(),'Operations Director');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Lily','Wright','lily.wright@company.com',29,51000.00,'2021-08-16','2025-01-25 09:00:00',1,'IT',4.50,76,NEWID(),'QA Engineer');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Jack','Scott','jack.scott@company.com',36,69500.00,'2018-02-14','2025-01-26 10:15:00',1,'Finance',4.60,112,NEWID(),'Budget Analyst');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Zoe','Green','zoe.green@company.com',30,54800.00,'2020-06-30','2025-01-26 08:40:00',1,'Marketing',4.30,82,NEWID(),'Social Media Manager');

INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Nathan','Baker','nathan.baker@company.com',34,62500.00,'2019-04-17','2025-01-26 09:30:00',1,'Sales',4.40,95,NEWID(),'Account Executive');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Hannah','Nelson','hannah.nelson@company.com',28,48800.00,'2022-09-05','2025-01-27 08:20:00',1,'Support',4.10,65,NEWID(),'Support Engineer');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Andrew','Carter','andrew.carter@company.com',43,84500.00,'2016-05-20','2025-01-27 10:50:00',1,'IT',4.80,148,NEWID(),'Database Administrator');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Scarlett','Mitchell','scarlett.mitchell@company.com',27,46500.00,'2022-11-11','2025-01-27 08:10:00',1,'HR',4.00,66,NEWID(),'HR Coordinator');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Gabriel','Perez','gabriel.perez@company.com',38,72000.00,'2018-01-15','2025-01-28 09:55:00',1,'Finance',4.70,120,NEWID(),'Finance Manager');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Victoria','Roberts','victoria.roberts@company.com',32,59000.00,'2020-08-04','2025-01-28 08:45:00',1,'Marketing',4.50,88,NEWID(),'Brand Manager');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Christopher','Turner','christopher.turner@company.com',41,79000.00,'2017-03-07','2025-01-28 10:30:00',1,'Operations',4.80,138,NEWID(),'Operations Manager');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Aria','Phillips','aria.phillips@company.com',25,44000.00,'2023-04-01','2025-01-29 08:05:00',1,'Support',4.20,54,NEWID(),'Technical Support');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Ryan','Campbell','ryan.campbell@company.com',37,70500.00,'2018-10-22','2025-01-29 09:40:00',1,'Sales',4.60,116,NEWID(),'Sales Manager');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Layla','Parker','layla.parker@company.com',29,51800.00,'2021-07-12','2025-01-29 08:50:00',1,'IT',4.30,79,NEWID(),'Frontend Developer');

INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Joshua','Evans','joshua.evans@company.com',35,66000.00,'2019-02-13','2025-01-30 09:20:00',1,'Finance',4.50,104,NEWID(),'Auditor');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Nora','Edwards','nora.edwards@company.com',27,47000.00,'2022-06-06','2025-01-30 08:00:00',1,'Marketing',4.10,62,NEWID(),'Marketing Assistant');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Anthony','Collins','anthony.collins@company.com',40,81000.00,'2016-09-19','2025-01-30 11:10:00',1,'Operations',4.80,145,NEWID(),'Plant Manager');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Penelope','Stewart','penelope.stewart@company.com',31,56500.00,'2020-12-15','2025-01-31 08:40:00',1,'HR',4.40,86,NEWID(),'Benefits Specialist');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Isaac','Sanchez','isaac.sanchez@company.com',33,61000.00,'2019-05-09','2025-01-31 09:35:00',1,'IT',4.60,90,NEWID(),'System Administrator');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Aurora','Morris','aurora.morris@company.com',26,45000.00,'2023-05-14','2025-01-31 08:10:00',1,'Support',4.20,55,NEWID(),'Service Desk Analyst');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Dylan','Rogers','dylan.rogers@company.com',39,74000.00,'2017-11-28','2025-02-01 10:05:00',1,'Sales',4.70,125,NEWID(),'Business Development');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Bella','Reed','bella.reed@company.com',28,50000.00,'2021-09-02','2025-02-01 08:45:00',1,'Marketing',4.30,75,NEWID(),'Copywriter');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Caleb','Cook','caleb.cook@company.com',42,83000.00,'2016-02-22','2025-02-01 10:50:00',1,'Finance',4.90,152,NEWID(),'Finance Director');
INSERT INTO employees (first_name,last_name,email,age,salary,hire_date,last_login,is_active,department,rating,vacation_hours,employee_guid,notes) VALUES ('Stella','Morgan','stella.morgan@company.com',30,55000.00,'2020-04-08','2025-02-02 08:25:00',1,'Operations',4.40,83,NEWID(),'Project Coordinator');


-- Exercise 1

-- Display all employees.
SELECT * FROM employees;

-- Exercise 2

-- Display only the first_name, last_name, and department of all employees.

SELECT first_name, last_name, department from employees;

-- Exercise 3

-- Find all employees who work in the IT department.

SELECT * from employees where department = 'IT';

-- Exercise 4

-- Find all employees whose salary is greater than 60,000.

select first_name, salary from employees where salary > 60000;

-- Exercise 5

-- Display all active employees (is_active = 1).

select first_name, is_active from employees where is_active = 1;

-- Exercise 6

-- Display all inactive employees.

select first_name, is_active from employees where is_active = 0;
select first_name, is_active from employees where is_active <> 1;

-- Exercise 7

-- Find employees who are 30 years old or older.

select * from employees where age >= 30;

-- Exercise 8

-- Find employees hired after January 1, 2021.

select * from employees where hire_date > '2020-12-31';

-- Exercise 9

-- Display employees whose salary is between 50,000 and 70,000.

select first_name, salary from employees where salary between 50000 and 70000;

-- Exercise 10

-- Find employees whose first name starts with the letter A.

select * from employees where first_name LIKE 'A%';

-- Exercise 11

-- Find employees whose last name ends with "son".

select * from employees where last_name '%son';

-- Exercise 12

-- Display employees who work in either IT or Finance.

select * from employees where department = 'IT' OR department = 'Finance';

-- Exercise 13

-- Display the 10 highest-paid employees.

select top 10 * from employees order by salary desc;

-- Exercise 14

-- Display the 10 lowest-paid employees.

SELECT top 10 * from employees order by salary asc;

-- Exercise 15

-- Sort all employees by last_name in alphabetical order.
select * from employees order by last_name asc;

-- Exercise 16

-- Sort employees by salary from highest to lowest.

select first_name, last_name, salary from employees order by salary desc;

-- Exercise 17

-- Count the total number of employees.

-- Hint: Use COUNT().

select count(*) as totalEmployees from employees;

-- Exercise 18

-- Calculate the average salary of all employees.

-- Hint: Use AVG().

select avg(salary) as avg_salary from employees;

-- Exercise 19

-- Find the highest salary in the table.

-- Hint: Use MAX().

select max(salary) as max_salary from employees;

-- Exercise 21

-- Display all employees who are under 30 years old.

select first_name, age from employees where age < 30;

-- Exercise 22

-- Find employees whose rating is greater than or equal to 4.5.

select first_name, rating from employees where rating >= 4.5;

-- Exercise 23

-- Display employees who have 80 or more vacation hours.

select * from employees where vacation_hours >= 80;

-- Exercise 24

-- Find employees who were hired during the year 2020.

select * from employees where hire_date between '2020-01-01' and '2020-12-31';

-- Exercise 25

-- Display the first name, last name, and email of employees who are in the Marketing department.

select first_name, last_name, email from employees where department = 'Marketing';

-- Exercise 26

-- Find employees whose first name contains the letter "e".

select * from employees where first_name like '%e%';

-- Exercise 27

-- Display employees whose department is not IT.

select * from employees where department <> 'IT';

-- Exercise 28

-- Find employees who are between 25 and 35 years old (inclusive).

select * from employees where age between 25 and 35;

-- Exercise 29

-- Display all employees sorted by:

-- Department (A–Z)

select * from employees order by department asc;

-- Exercise 30

-- Find employees who:

-- are active,
-- have a rating of 4.5 or higher,
-- and have a salary less than 70,000.

select *
from employees
where is_active = 1 AND rating >= 4.5 AND salary <70000;

---------------------------------------------------------------------------------------
-- AND : P1 (sp1 y sp2) - true o false
-- OR : P1 (sp1 y sp2) - true o false

----------------------------------- LOGIC OPERATORS -----------------------------------

-- Exercise 1

-- Retrieve all active employees who work in the IT department and earn more than $50,000.
select * 
    from employees 
        where is_active = 1 and department = 'IT' and salary > 50000;


-- Exercise 2

-- Retrieve employees who work in either HR or Finance and are older than 30.

select * 
    from employees 
        where department = 'HR' OR department = 'Finance' AND age > 30;



-- Exercise 3

-- Retrieve employees who are younger than 28 and work in Support or Marketing.

select * 
    from employees
        where department = 'Marketing' OR department = 'Support' and age <= 28;

select *
    from employees
        where department in ('Marketing','Support') and age <= 28;

-- AND : P1 (sp1 y sp2) - true o false
-- OR : P1 (sp1 y sp2) - true o false

-- Exercise 4

-- Retrieve employees who work in Sales and have a salary lower than $55,000.

select *
    from employees 
        where department = 'Sales' and salary < 55000;

select *
    from employees 
        where department in ('Sales') and salary < 55000;

-- Exercise 5

-- Retrieve employees who are inactive or older than 40.

select *
    from employees 
        where is_active = 0 OR age > 40;


-- Level 2 — Adding LIKE (6–10)

-- Exercise 6

-- Retrieve active employees whose first name starts with J and who work in IT.

select * 
    from employees
        where is_active = 1 AND first_name like 'J%' AND department = 'IT';


-- Exercise 7

-- Retrieve employees whose last name ends with son and whose salary is greater than $45,000.

select *
    from employees where last_name like '%son' and salary > 45000;


-- Exercise 8

-- Retrieve employees who work in Finance or HR and whose email contains company.


select *    
    from employees
        where (department = 'Finance' OR department = 'HR') AND email like '%company%';
select *    
    from employees
        where department in ('Finance', 'HR') AND email like '%company%';


-- Exercise 9

--  Retrieve employees whose first name contains the letter a and who are younger than 35.

select * 
    from employees
        where first_name like '%a%' and age < 35;


-- ALIAS

select first_name, hire_date
    from employees e;

-- ALIAS

-- Exercise 10

-- Retrieve employees who are active and whose last name does not start with M.

select *
from employees
where is_active = 1 AND last_name NOT LIKE 'M%';

-- Level 3 — BETWEEN + AND / OR (11–15)

-- Exercise 11

-- Retrieve employees whose salary is between $45,000 and $60,000 and who work in IT.

select *
from employees
where salary BETWEEN 45000 AND 60000 AND department = 'IT'; 


-- Exercise 12

-- Retrieve employees whose age is between 25 and 35 and who work in Sales or Marketing.

select *
from employees
where age BETWEEN 25 AND 35 AND department IN ('Sales','Marketing');

select *
from employees
where department IN ('Sales','Marketing') and age BETWEEN 25 AND 35;

select *
from employees
where age BETWEEN 25 AND 35 AND (department = 'Sales' OR department = 'Marketing');


-- Exercise 13

-- Retrieve employees hired between January 1, 2019, and December 31, 2021, who are still active.

select *
from employees
where is_active = 1 AND hire_date BETWEEN '2019-01-01' AND '2021-12-31'; 

-- Exercise 14

-- Retrieve employees whose salary is not between $50,000 and $70,000 and who belong to Finance.

select *
from employees
where salary BETWEEN 50000 AND 70000 AND department = 'Finance'; 

-- Exercise 15

-- Retrieve employees who are between 30 and 40 years old and whose first name starts with A.

select *
from employees
where age BETWEEN 30 AND 40 AND first_name LIKE 'A%';

-- Level 4 — IN / NOT IN (16–20)

-- Exercise 16

-- Retrieve employees who work in IT, HR, or Finance, and whose salary is greater than $55,000.

select *
from employees
where department IN ('IT','HR','Finance') AND salary > 55000;

-- Exercise 17

-- Retrieve employees who do not work in Sales or Marketing and are active.

select *
from employees
where is_active = 1 AND department NOT IN ('Sales','Marketing');

-- Exercise 18

-- Retrieve employees whose age is 25, 30, or 35, and whose last name contains the letter e.


select *
    from employees
        where (age = 25 or age = 30 or age = 35) and last_name like '%e%';

select *
    from employees
        where age in (25, 30, 35) and last_name like '%e%';


-- Exercise 19

-- Retrieve employees hired on one of these dates:

-- 2020-01-15
-- 2019-03-10
-- 2021-02-12

-- and who are active.


select *
from employees
where is_active = 1 AND hire_date IN ('2020-01-15','2019-03-10','2021-02-12');

select *
from employees
where is_active = 1 AND (hire_date = '2020-01-15' or hire_date = '2019-03-10' OR hire_date = '2021-02-12');

select *
from employees
where is_active = 1 AND hire_date = '2020-01-15';

-- Exercise 20

-- Retrieve employees who work in Support, IT, or Finance, whose salary is between $40,000 and $60,000, and who are younger than 32.

select *
from employees
where department IN ('IT','Support','Finance') AND (salary between 55000 AND 60000) AND age < 32;

select *
from employees
where department IN ('IT','Support','Finance') AND age < 32 ORDER BY salary DESC;



-- Level 5 — Multiple Combined Conditions (21–25)

-- Exercise 21

--  Retrieve active employees who:

-- work in IT,
-- earn between $45,000 and $65,000,
-- and whose first name starts with M.

select *
from employees
where department  = 'IT'
AND salary between 45000 AND 65000
AND first_name LIKE 'l%';

-- Versión de SMS que no distingue mayus y minus, consulta para saber la distribución de SQL

SELECT DATABASEPROPERTYEX(DB_NAME(), 'Collation') AS DatabaseCollation;



-- Exercise 22

-- Retrieve employees who:

-- work in HR or Finance,
-- are older than 30,
-- and whose last name ends with n.


select *
from employees
where (department = 'HR' OR department = 'Finance')
AND age > 30
AND last_name LIKE '%n';


-- Exercise 23

-- Retrieve employees who:

-- are not in Management,
-- have a salary greater than $50,000,
-- and whose email contains company.

select *
from employees
where department <> 'Management' 
AND salary > 50000
AND email LIKE '%company%';


select *
from employees
where department <> 'Management' 
AND salary > 50000
AND email LIKE '%company%' ORDER BY salary ASC;


-- Exercise 24

-- Retrieve employees who:

-- work in Sales or Marketing,
-- are active,
-- and whose first name does not start with J.


select *
from employees
where is_active = 1
AND (department = 'Sales' OR department = 'Marketing')
AND first_name NOT LIKE 'J%' ORDER BY first_name ASC; 

select *
from employees
where (department = 'Sales' OR department = 'Marketing')
AND is_active = 1
AND first_name NOT LIKE 'J%' ORDER BY first_name ASC; 



-- Exercise 25

-- Retrieve employees who:

-- are younger than 35,
-- work in IT, HR, or Support,
-- and whose salary is not between $40,000 and $50,000.

select *
from employees
where age < 35
AND department IN ('IT','HR','Support')
AND salary NOT BETWEEN 40000 AND 50000; 


-- Level 6 — Complex Logical Expressions (26–30)

-- Exercise 26

-- Retrieve employees who satisfy either of these conditions:

-- work in IT and earn more than $60,000, OR
-- work in Finance and are older than 35.

select *
from employees
where (department = 'IT' AND salary > 60000)
OR (department = 'Finance' AND age > 35)
ORDER BY department ASC;


-- Exercise 27

-- Retrieve employees who satisfy one of these conditions:

-- work in HR and their first name starts with A,
-- work in Marketing and earn less than $45,000,
-- work in Support and are younger than 30.

select *
from employees
where (department = 'HR' AND first_name LIKE 'A%')
OR (department = 'Marketing' AND salary < 45000)
OR (department = 'Support' AND age < 30)
ORDER BY department ASC;



-- Exercise 28

-- Retrieve employees who satisfy either of these conditions:

-- are active, work in IT, and their salary is between $45,000 and $60,000,
-- are inactive and work in HR.

select *
from employees
where (is_active = 1  AND department = 'IT' AND salary BETWEEN 45000 AND 60000)
OR (is_active = 0 AND department = 'HR');



-- Exercise 29

-- Retrieve employees who satisfy one of the following:

-- their last name ends with er and they work in Sales,
-- their first name contains the letter o and they work in Finance,
-- they work in IT and were hired after January 1, 2020.

select *
from employees
where (last_name LIKE '%er' AND department = 'Sales')
OR (first_name LIKE '%o%' AND department = 'Finance')
OR (department = 'IT' AND hire_date > '2020-01-01');




-- Exercise 30

-- Retrieve employees who satisfy at least one of these conditions:

-- work in IT, are younger than 30, and are active,
-- work in Finance, earn more than $60,000, and their last name starts with M,
-- work in HR or Sales, have a salary between $45,000 and $55,000, and their email contains company,
-- work in Support, are inactive, and were hired before January 1, 2020.