CREATE TABLE employees
(
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
-- SELECT * FROM employees;

-- Exercise 2

-- Display only the first_name, last_name, and department of all employees.

-- SELECT first_name, last_name, department from employees;

-- Exercise 3

-- Find all employees who work in the IT department.

-- SELECT * from employees where department = 'IT';

-- Exercise 4

-- Find all employees whose salary is greater than 60,000.

-- select first_name, salary from employees where salary > 60000;

-- Exercise 5

-- Display all active employees (is_active = 1).

-- select first_name, is_active from employees where is_active = 1;

-- Exercise 6

-- Display all inactive employees.

-- select first_name, is_active from employees where is_active = 0;
-- select first_name, is_active from employees where is_active <> 1;

-- Exercise 7

-- Find employees who are 30 years old or older.

-- select * from employees where age >= 30;

-- Exercise 8

-- Find employees hired after January 1, 2021.

-- select * from employees where hire_date > '2020-12-31';

-- Exercise 9

-- Display employees whose salary is between 50,000 and 70,000.

-- select first_name, salary from employees where salary between 50000 and 70000;

-- Exercise 10

-- Find employees whose first name starts with the letter A.

-- select * from employees where first_name LIKE 'A%';

-- Exercise 11

-- Find employees whose last name ends with "son".

-- select * from employees where last_name '%son';

-- Exercise 12

-- Display employees who work in either IT or Finance.

-- select * from employees where department = 'IT' OR department = 'Finance';

-- Exercise 13

-- Display the 10 highest-paid employees.

-- select top 10 * from employees order by salary desc;

-- Exercise 14

-- Display the 10 lowest-paid employees.

-- Exercise 15

-- Sort all employees by last_name in alphabetical order.

-- Exercise 16

-- Sort employees by salary from highest to lowest.

-- Exercise 17

-- Count the total number of employees.

-- Hint: Use COUNT().

-- Exercise 18

-- Calculate the average salary of all employees.

-- Hint: Use AVG().

-- Exercise 19

-- Find the highest salary in the table.

-- Hint: Use MAX().

-- Exercise 21

-- Display all employees who are under 30 years old.

-- Exercise 22

-- Find employees whose rating is greater than or equal to 4.5.

-- Exercise 23

-- Display employees who have 80 or more vacation hours.

-- Exercise 24

-- Find employees who were hired during the year 2020.

-- Exercise 25

-- Display the first name, last name, and email of employees who are in the Marketing department.

-- Exercise 26

-- Find employees whose first name contains the letter "e".

-- Exercise 27

-- Display employees whose department is not IT.

-- Exercise 28

-- Find employees who are between 25 and 35 years old (inclusive).

-- Exercise 29

-- Display all employees sorted by:

-- Department (A–Z)
-- Salary (highest to lowest within each department)
-- Exercise 30

-- Find employees who:

-- are active,
-- have a rating of 4.5 or higher,
-- and have a salary less than 70,000.