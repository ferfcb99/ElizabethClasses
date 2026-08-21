CREATE DATABASE employeesdb_relations;

USE employeesdb_relations;

-- drop database employeesdb_relations;

CREATE TABLE employee(

    employee_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name NVARCHAR(50),
    last_name NVARCHAR(50),
    email NVARCHAR(100),
    age TINYINT,
    salary DECIMAL(10,2),
    hire_date DATE,
    last_login DATETIME,
    is_active BIT, -- 0 1
    department_id INT NOT NULL,
    rating DECIMAL(3,2),
    vacation_hours SMALLINT,
    employee_guid UNIQUEIDENTIFIER,
    notes NVARCHAR(200),
    created_at DATETIME2 DEFAULT SYSDATETIME(),
    foreign key(department_id) references department(department_id)
);


CREATE TABLE department(
    department_id INT IDENTITY(1,1) PRIMARY KEY, 
    department_name NVARCHAR(50) UNIQUE, 
    department_code NVARCHAR(20) UNIQUE
);



INSERT INTO department (department_name, department_code) VALUES 
('Human Resources', 'HR'),
('Information Technology', 'IT'),
('Finance', 'FIN'),
('Marketing', 'MKT'),
('Sales', 'SAL'),
('Engineering', 'ENG'),
('Legal', 'LEG'),
('Operations', 'OPS'),
('Research and Development', 'RND'),
('Customer Support', 'CST'),
('Administration', 'ADM'), -- Intentionally left empty
('Executive', 'EXEC');     -- Intentionally left empty

-- Insert 50 Employees
INSERT INTO employee (first_name, last_name, email, age, salary, hire_date, last_login, is_active, department_id, rating, vacation_hours, employee_guid, notes) VALUES 
('Alice', 'Smith', 'alice.s@example.com', 28, 62000.00, '2021-03-15', '2023-10-20 08:30:00', 1, 2, 4.5, 80, NEWID(), 'Promoted last year'),
('Bob', 'Johnson', 'bob.j@example.com', 35, 75000.00, '2019-11-01', '2023-10-19 09:15:00', 1, 2, 4.0, 120, NEWID(), NULL),
('Charlie', 'Brown', 'charlie.b@example.com', 42, 55000.00, '2020-05-20', '2023-10-01 10:00:00', 0, 1, 3.2, 0, NEWID(), 'Resigned in 2023'),
('Diana', 'Prince', 'diana.p@example.com', 31, 85000.00, '2018-08-12', '2023-10-21 07:45:00', 1, 6, 4.8, 40, NEWID(), 'Top engineer'),
('Evan', 'Wright', 'evan.w@example.com', 25, 48000.00, '2023-01-10', '2023-10-21 08:00:00', 1, 10, 3.8, 24, NEWID(), 'New hire'),
('Fiona', 'Gallagher', 'fiona.g@example.com', 29, 52000.00, '2022-02-14', '2023-10-18 11:30:00', 1, 4, 4.1, 50, NEWID(), NULL),
('George', 'Costanza', 'george.c@example.com', 45, 60000.00, '2015-09-01', '2023-09-15 14:20:00', 1, 5, 2.5, 160, NEWID(), 'Needs improvement'),
('Hannah', 'Abbott', 'hannah.a@example.com', 38, 92000.00, '2017-04-18', '2023-10-20 09:05:00', 1, 3, 4.7, 90, NEWID(), 'Excellent manager'),
('Ian', 'Malcolm', 'ian.m@example.com', 50, 110000.00, '2012-12-05', '2023-10-21 08:55:00', 1, 9, 4.9, 200, NEWID(), 'Lead researcher'),
('Julia', 'Roberts', 'julia.r@example.com', 33, 71000.00, '2020-07-22', '2023-10-19 16:00:00', 1, 7, 4.3, 60, NEWID(), 'Corporate counsel'),
('Kevin', 'Malone', 'kevin.m@example.com', 41, 58000.00, '2016-03-30', '2023-10-20 10:10:00', 1, 3, 3.1, 100, NEWID(), 'Solid accountant'),
('Laura', 'Palmer', 'laura.p@example.com', 26, 49000.00, '2022-11-15', '2023-10-21 09:20:00', 1, 10, 4.0, 30, NEWID(), 'Customer favorite'),
('Michael', 'Scott', 'michael.s@example.com', 48, 80000.00, '2010-05-01', '2023-10-21 08:00:00', 1, 5, 3.5, 180, NEWID(), 'Regional manager'),
('Nina', 'Simone', 'nina.s@example.com', 37, 78000.00, '2019-06-11', '2023-10-20 13:45:00', 1, 4, 4.6, 75, NEWID(), 'Marketing lead'),
('Oscar', 'Martinez', 'oscar.m@example.com', 40, 72000.00, '2017-09-09', '2023-10-21 08:30:00', 1, 3, 4.4, 85, NEWID(), NULL),
('Pam', 'Beesly', 'pam.b@example.com', 32, 51000.00, '2018-04-01', '2023-10-21 08:50:00', 1, 8, 4.2, 55, NEWID(), 'Office admin ops'),
('Quincy', 'Jones', 'quincy.j@example.com', 55, 95000.00, '2014-01-20', '2023-10-15 09:00:00', 0, 9, 4.8, 0, NEWID(), 'Retired'),
('Rachel', 'Green', 'rachel.g@example.com', 29, 64000.00, '2021-10-10', '2023-10-21 09:15:00', 1, 4, 3.9, 45, NEWID(), 'Fashion coordinator'),
('Steve', 'Harrington', 'steve.h@example.com', 24, 45000.00, '2023-05-15', '2023-10-21 07:55:00', 1, 5, 3.6, 16, NEWID(), 'Junior sales'),
('Tina', 'Fey', 'tina.f@example.com', 44, 88000.00, '2016-08-25', '2023-10-20 15:30:00', 1, 1, 4.7, 110, NEWID(), 'HR Director'),
('Ursula', 'Buffay', 'ursula.b@example.com', 34, 53000.00, '2020-02-18', '2023-09-01 10:00:00', 0, 10, 2.8, 0, NEWID(), 'Fired'),
('Victor', 'Frankenstein', 'victor.f@example.com', 39, 105000.00, '2015-11-11', '2023-10-20 22:00:00', 1, 9, 4.0, 140, NEWID(), 'Brilliant but erratic'),
('Wendy', 'Byrde', 'wendy.b@example.com', 43, 98000.00, '2018-03-14', '2023-10-21 08:15:00', 1, 7, 4.5, 95, NEWID(), 'Aggressive negotiator'),
('Xavier', 'Charles', 'xavier.c@example.com', 60, 125000.00, '2008-01-10', '2023-10-20 09:00:00', 1, 1, 4.9, 240, NEWID(), 'Head of Talent'),
('Yara', 'Greyjoy', 'yara.g@example.com', 30, 82000.00, '2019-10-05', '2023-10-20 07:30:00', 1, 8, 4.6, 70, NEWID(), 'Fleet logistics'),
('Zack', 'Morris', 'zack.m@example.com', 27, 56000.00, '2022-06-01', '2023-10-21 10:00:00', 1, 5, 3.4, 35, NEWID(), 'Charming but distracted'),
('Amy', 'Santiago', 'amy.s@example.com', 32, 74000.00, '2017-07-07', '2023-10-21 08:00:00', 1, 8, 4.9, 90, NEWID(), 'Very organized'),
('Brian', 'Oconner', 'brian.o@example.com', 36, 68000.00, '2020-09-12', '2023-10-20 11:45:00', 1, 6, 4.1, 55, NEWID(), 'Fast worker'),
('Chloe', 'Decker', 'chloe.d@example.com', 35, 79000.00, '2018-12-01', '2023-10-21 08:45:00', 1, 7, 4.7, 85, NEWID(), 'Great investigator'),
('David', 'Rose', 'david.r@example.com', 33, 62000.00, '2021-02-14', '2023-10-20 14:15:00', 1, 4, 3.9, 48, NEWID(), 'Creative flair'),
('Elena', 'Gilbert', 'elena.g@example.com', 25, 47000.00, '2023-03-20', '2023-10-21 09:30:00', 1, 10, 3.7, 20, NEWID(), NULL),
('Frank', 'Reynolds', 'frank.r@example.com', 65, 90000.00, '2013-05-18', '2023-10-10 16:00:00', 1, 3, 2.1, 150, NEWID(), 'Questionable methods'),
('Grace', 'Shelby', 'grace.s@example.com', 29, 66000.00, '2021-08-08', '2023-10-21 08:20:00', 1, 5, 4.4, 50, NEWID(), NULL),
('Harry', 'Potter', 'harry.p@example.com', 30, 85000.00, '2019-07-31', '2023-10-20 09:40:00', 1, 6, 4.8, 65, NEWID(), 'Chosen for special project'),
('Isabella', 'Swan', 'isabella.s@example.com', 26, 48000.00, '2022-09-01', '2023-10-21 08:10:00', 1, 1, 3.5, 30, NEWID(), NULL),
('Jack', 'Bauer', 'jack.b@example.com', 45, 115000.00, '2011-11-11', '2023-10-21 23:59:00', 1, 8, 4.5, 200, NEWID(), 'Always working'),
('Karen', 'Filippelli', 'karen.f@example.com', 34, 73000.00, '2019-01-15', '2023-10-20 10:30:00', 1, 5, 4.2, 70, NEWID(), NULL),
('Luke', 'Dane', 'luke.d@example.com', 40, 55000.00, '2016-06-06', '2023-10-21 06:00:00', 1, 8, 4.0, 100, NEWID(), 'Dependable'),
('Monica', 'Geller', 'monica.g@example.com', 33, 89000.00, '2017-10-15', '2023-10-21 07:30:00', 1, 8, 4.9, 110, NEWID(), 'Head of catering ops'),
('Ned', 'Stark', 'ned.s@example.com', 48, 95000.00, '2015-04-12', '2023-10-18 17:00:00', 0, 7, 4.8, 0, NEWID(), 'Honorable but inflexible'),
('Olivia', 'Pope', 'olivia.p@example.com', 38, 120000.00, '2016-02-28', '2023-10-21 08:45:00', 1, 7, 5.0, 120, NEWID(), 'Crisis management'),
('Peter', 'Parker', 'peter.p@example.com', 23, 45000.00, '2023-08-01', '2023-10-21 11:15:00', 1, 2, 4.3, 10, NEWID(), 'Freelancer transition'),
('Quinn', 'Fabray', 'quinn.f@example.com', 28, 54000.00, '2021-11-20', '2023-10-20 13:20:00', 1, 4, 3.8, 40, NEWID(), NULL),
('Ron', 'Swanson', 'ron.s@example.com', 52, 85000.00, '2010-09-01', '2023-10-21 09:00:00', 1, 8, 4.1, 250, NEWID(), 'Hates meetings'),
('Sarah', 'Connor', 'sarah.c@example.com', 39, 92000.00, '2014-05-12', '2023-10-21 07:00:00', 1, 9, 4.6, 140, NEWID(), 'Prepping for the future'),
('Tom', 'Haverford', 'tom.h@example.com', 31, 60000.00, '2020-03-10', '2023-10-21 10:45:00', 1, 4, 3.5, 60, NEWID(), 'Focus on branding'),
('Uma', 'Thurman', 'uma.t@example.com', 46, 105000.00, '2013-11-22', '2023-10-19 14:00:00', 1, 6, 4.7, 180, NEWID(), 'Sharp execution'),
('Vince', 'Masuka', 'vince.m@example.com', 37, 72000.00, '2018-07-04', '2023-10-20 09:50:00', 1, 9, 4.2, 85, NEWID(), 'Detailed analyst'),
('Walter', 'White', 'walter.w@example.com', 50, 68000.00, '2016-10-31', '2023-08-15 16:30:00', 0, 9, 4.9, 0, NEWID(), 'Left for private venture'),
('Zoe', 'Washburne', 'zoe.w@example.com', 35, 76000.00, '2019-04-18', '2023-10-21 08:15:00', 1, 8, 4.8, 95, NEWID(), 'Reliable second-in-command');

select * from employee;

select * from employee
    where department_id = 3;

delete 
    from department
        where department_id = 3;

delete 
    from employee
        where employee_id = 51;

select * from employee
    where department_id = 3;

select * 
    from department;

update department 
    set department_name = 'Finanzas'
        where department_id = 3;


-- (1,2,3)

-- (a,b)

-- 1a, 1b, 2a, 2b, 3a, 3b
-- EVITAR
select *
    from employee, department;


select e.first_name as First_Name, d.department_name
    from employee e, department d;

select e.department_id, d.department_id
    from employee e, department d;


-- inner join 
select *
    from employee e INNER JOIN department d ON e.department_id = d.department_id;
 
-- Consultar todos los nombres de los empleados mostrando el nombre del departamento al que pertenecen
select e.first_name, d.department_name
    from employee e INNER JOIN department d ON e.department_id = d.department_id;

-- Phase 1: INNER JOINS with Filtering and Sorting (1-10)

-- 1. Retrieve the first name, last name, and department name for all active employees.

select e.first_name, e.last_name, d.department_name
    from employee e INNER JOIN department d ON e.department_id = d.department_id
    where e.is_active = 1;


-- 2. Find the emails and department codes of all employees who are older than 35.

select e.email, d.department_code, e.age
    from employee e INNER JOIN department d ON e.department_id = d.department_id
    where e.age > 35;


-- 3. Show the first name, salary, and department name for all employees earning more than $75,000.

select e.first_name, e.salary, d.department_name
    from employee e INNER JOIN department d ON e.department_id = d.department_id
    where e.salary > 75000 ORDER BY e.salary ASC;


-- 4. List the full details of employees and their departments for anyone hired after January 1, 2021.

select *
    from employee e INNER JOIN department d ON e.department_id = d.department_id
    where e.hire_date > '2021-01-01';


-- 5. Find the employee names, ratings, and department names for employees with a performance rating between 4.0 and 4.5.

select e.first_name, e.rating, d.department_name
    from employee e INNER JOIN department d ON e.department_id = d.department_id
    where e.rating BETWEEN 4.0 AND 4.5;


-- 6. Retrieve the names and department names of all employees whose last name starts with the letter 'S'.

select e.first_name, e.last_name, d.department_name
    from employee e INNER JOIN department d ON e.department_id = d.department_id
    where e.last_name LIKE 'S%';


-- 7. Find all employees who work in either the 'Sales' or 'Marketing' departments, showing their name and department.

select e.first_name, d.department_name
    from employee e INNER JOIN department d ON e.department_id = d.department_id
    where d.department_name = 'Sales' OR d.department_name = 'Marketing';
    

-- 8. Retrieve the names, salaries, and department names of all employees, sorted by their salary from highest to lowest.

select e.first_name, e.salary, d.department_name
    from employee e INNER JOIN department d ON e.department_id = d.department_id
    ORDER BY salary DESC;


-- 9. Find all inactive employees, showing their name, hire date, and department name, ordered by their hire date (oldest first).

select e.first_name, e.hire_date, d.department_name
    from employee e INNER JOIN department d ON e.department_id = d.department_id
    where e.is_active = 0 ORDER BY e.hire_date ASC;


-- 10. Which employees have a rating greater than 4.5 AND work in the 'Finance' department?

select e.first_name, e.last_name, e.rating, d.department_name
    from employee e INNER JOIN department d ON e.department_id = d.department_id
    where d.department_name = 'Finance' AND e.rating > 4.5;


-- 11. Show a list of ALL departments and the first names of employees in them, including departments that currently have no employees.



-- 12. Rewrite the exact same results as exercise 11, but use a RIGHT JOIN instead.

-- 13. Find the names of the departments that currently have ZERO employees.

-- 14. Show all departments and the names of employees earning over $100,000. If a department has no high earners, still show the department name.

-- 15. List all departments alongside employee names. If a department has no employees, display the text 'No Staff' instead of a NULL value.

-- 16. Find all departments that have no active employees (this includes completely empty departments OR departments where everyone is inactive).

-- 17. Use a RIGHT JOIN to list all employees and their departments, but only for employees who have more than 100 vacation hours.

-- 18. Show all departments, and only include employees who have notes on their profile (notes IS NOT NULL). Keep departments in the result even if no one has notes.

-- 19. List all departments and their employees' names, but sort the results so that departments with no employees appear at the very top.

-- 20. Find departments that either have no employees OR have employees whose last login was before September 2023.

-- 21. Find the average salary of employees per department, showing the department name.

-- 22. Count the total number of employees in EVERY department, including those with 0 employees.

-- 23. Find departments where the average employee salary is greater than $75,000, using an INNER JOIN.

-- 24. Calculate the total (SUM) vacation hours available in every department. If a department has no employees, it should show 0 instead of NULL.

-- 25. Find the names of departments that have more than 3 active employees who were hired before 2022.

-- 26. Show the department name, and the highest salary (MAX) in that department, but only for departments where the highest salary is over $90,000.

-- 27. Create a query that uses an INNER JOIN to display the employee's full name (first and last concatenated) alongside their department code, for all employees with a rating of 4.5 or higher.

-- 28. Find all departments that have exactly 0 inactive employees (meaning everyone in the department is active, or the department is completely empty).

-- 29. List the department name, average age, and average rating of employees in each department, but exclude the 'Executive' and 'Administration' departments from the results entirely.

-- 30. List EVERY department name and the count of their active employees. Sort the results so the departments with the most active employees are at the top, and empty departments are at the bottom.