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


-- ==========================
-- DEPARTMENTS
-- ==========================

INSERT INTO department (department_name, department_code)
VALUES  ('Human Resources', 'HR'),
        ('Information Technology', 'IT'),
        ('Finance', 'FIN'),
        ('Sales', 'SAL'),
        ('Marketing', 'MKT'),
        ('Operations', 'OPS'),
        ('Customer Support', 'SUP'),
        ('Legal', 'LEG'),
        ('Research', 'RND'),
        ('Administration', 'ADM');

select * from department;


INSERT INTO employee
(
    first_name,
    last_name,
    email,
    age,
    salary,
    hire_date,
    last_login,
    is_active,
    department_id,
    rating,
    vacation_hours,
    employee_guid,
    notes
)
VALUES
('John','Smith','john.smith@company.com',29,45000,'2021-01-15','2026-08-01 08:12',1,2,4.50,80,NEWID(),'Java Developer'),
('Emily','Johnson','emily.johnson@company.com',34,72000,'2019-03-18','2026-08-03 09:10',1,2,4.90,120,NEWID(),'Senior Developer'),
('Michael','Brown','michael.brown@company.com',41,90000,'2017-05-11','2026-08-02 18:30',1,3,4.70,150,NEWID(),'Finance Manager'),
('Sarah','Davis','sarah.davis@company.com',27,39000,'2023-01-20','2026-08-03 10:15',1,4,4.20,60,NEWID(),'Sales Representative'),
('David','Wilson','david.wilson@company.com',38,62000,'2020-08-10','2026-08-02 13:20',1,5,4.40,96,NEWID(),'Marketing Analyst'),
('Jessica','Martinez','jessica.martinez@company.com',30,57000,'2022-06-14','2026-08-01 11:00',1,6,4.60,88,NEWID(),'Operations Coordinator'),
('Daniel','Anderson','daniel.anderson@company.com',45,53000,'2016-02-17','2026-07-30 17:40',0,7,3.90,160,NEWID(),'Support Supervisor'),
('Ashley','Thomas','ashley.thomas@company.com',32,76000,'2018-10-05','2026-08-03 09:45',1,8,4.80,110,NEWID(),'Corporate Lawyer'),
('Matthew','Taylor','matthew.taylor@company.com',36,95000,'2015-09-09','2026-08-02 19:55',1,9,4.95,180,NEWID(),'Research Engineer'),
('Olivia','Moore','olivia.moore@company.com',26,42000,'2024-02-11','2026-08-03 08:30',1,10,4.10,40,NEWID(),'Administrative Assistant'),

('James','Clark','james.clark@company.com',31,48000,'2021-04-08','2026-08-01 09:20',1,2,4.35,72,NEWID(),'Backend Developer'),
('Sophia','Lewis','sophia.lewis@company.com',28,51000,'2022-07-15','2026-08-02 12:18',1,5,4.45,80,NEWID(),'Marketing Specialist'),
('Benjamin','Walker','ben.walker@company.com',39,84000,'2018-11-12','2026-08-03 11:30',1,3,4.88,130,NEWID(),'Financial Analyst'),
('Isabella','Hall','isabella.hall@company.com',25,37000,'2024-03-02','2026-08-02 16:20',1,4,4.05,48,NEWID(),'Sales Assistant'),
('William','Allen','william.allen@company.com',44,102000,'2014-05-20','2026-08-01 07:55',1,2,4.99,200,NEWID(),'Software Architect'),
('Mia','Young','mia.young@company.com',33,63000,'2020-09-19','2026-08-03 13:40',1,6,4.58,104,NEWID(),'Operations Lead'),
('Ethan','King','ethan.king@company.com',37,71000,'2019-01-22','2026-08-03 14:25',1,2,4.67,100,NEWID(),'Full Stack Developer'),
('Charlotte','Wright','charlotte.wright@company.com',29,56000,'2021-12-01','2026-08-02 10:40',1,5,4.51,82,NEWID(),'SEO Specialist'),
('Alexander','Scott','alex.scott@company.com',35,79000,'2018-04-14','2026-08-03 09:05',1,9,4.84,128,NEWID(),'Data Scientist'),
('Amelia','Green','amelia.green@company.com',27,47000,'2023-02-11','2026-08-01 15:35',1,1,4.26,70,NEWID(),'HR Recruiter'),

('Logan','Baker','logan.baker@company.com',30,59000,'2020-07-01','2026-08-03 12:00',1,2,4.60,90,NEWID(),'Java Developer'),
('Harper','Adams','harper.adams@company.com',42,98000,'2015-08-16','2026-08-02 17:45',1,8,4.91,170,NEWID(),'Legal Advisor'),
('Jacob','Nelson','jacob.nelson@company.com',40,88000,'2017-06-18','2026-08-03 08:50',1,3,4.75,145,NEWID(),'Accounting Manager'),
('Evelyn','Hill','evelyn.hill@company.com',26,41000,'2024-04-10','2026-08-01 09:10',1,7,4.11,55,NEWID(),'Customer Support'),
('Lucas','Ramirez','lucas.ramirez@company.com',34,69000,'2019-10-12','2026-08-02 13:50',1,2,4.71,118,NEWID(),'Spring Boot Developer'),
('Abigail','Campbell','abigail.campbell@company.com',31,61000,'2021-03-05','2026-08-03 10:10',1,5,4.47,86,NEWID(),'Marketing Coordinator'),
('Henry','Mitchell','henry.mitchell@company.com',46,108000,'2013-09-25','2026-08-01 16:20',1,9,5.00,220,NEWID(),'Research Director'),
('Ella','Roberts','ella.roberts@company.com',24,36000,'2025-01-10','2026-08-03 11:55',1,4,4.02,35,NEWID(),'Junior Sales'),
('Sebastian','Carter','sebastian.carter@company.com',38,83000,'2018-02-13','2026-08-02 18:40',1,6,4.73,120,NEWID(),'Operations Manager'),
('Scarlett','Phillips','scarlett.phillips@company.com',28,52000,'2022-09-30','2026-08-03 14:05',0,10,4.32,60,NEWID(),'Office Assistant'),

('Jack','Evans','jack.evans@company.com',29,47000,'2021-06-01','2026-08-03 09:35',1,2,4.29,76,NEWID(),'Backend Engineer'),
('Grace','Turner','grace.turner@company.com',35,78000,'2018-05-17','2026-08-02 12:30',1,8,4.89,140,NEWID(),'Legal Consultant'),
('Owen','Torres','owen.torres@company.com',33,67000,'2020-11-11','2026-08-01 13:00',1,3,4.63,92,NEWID(),'Financial Consultant'),
('Chloe','Parker','chloe.parker@company.com',27,43000,'2023-03-12','2026-08-03 15:30',1,1,4.19,58,NEWID(),'HR Assistant'),
('Gabriel','Collins','gabriel.collins@company.com',41,92000,'2016-12-20','2026-08-02 11:25',1,2,4.94,165,NEWID(),'Tech Lead'),
('Lily','Edwards','lily.edwards@company.com',30,58000,'2022-01-25','2026-08-03 10:45',1,5,4.48,84,NEWID(),'Digital Marketing'),
('Samuel','Stewart','samuel.stewart@company.com',36,81000,'2019-07-08','2026-08-03 17:10',1,6,4.69,112,NEWID(),'Process Engineer'),
('Aria','Flores','aria.flores@company.com',25,39500,'2024-05-06','2026-08-03 08:05',1,7,4.07,42,NEWID(),'Support Agent'),
('Joseph','Morris','joseph.morris@company.com',43,97000,'2015-02-14','2026-08-01 14:40',1,9,4.96,190,NEWID(),'AI Researcher'),
('Zoey','Murphy','zoey.murphy@company.com',29,50000,'2021-09-13','2026-08-02 16:00',1,10,4.38,68,NEWID(),'Executive Assistant'),

('Levi','Rivera','levi.rivera@company.com',32,61000,'2020-04-02','2026-08-03 11:20',1,2,4.61,98,NEWID(),'API Developer'),
('Victoria','Cook','victoria.cook@company.com',37,74000,'2018-08-19','2026-08-02 09:50',1,5,4.76,122,NEWID(),'Brand Manager'),
('Christopher','Rogers','christopher.rogers@company.com',39,86000,'2017-10-03','2026-08-01 10:40',1,3,4.81,150,NEWID(),'Controller'),
('Hannah','Morgan','hannah.morgan@company.com',28,45000,'2023-06-15','2026-08-03 13:15',1,1,4.25,66,NEWID(),'Talent Acquisition'),
('Andrew','Peterson','andrew.peterson@company.com',35,73000,'2019-04-04','2026-08-03 12:40',1,2,4.74,108,NEWID(),'Cloud Engineer'),
('Nora','Cooper','nora.cooper@company.com',26,41500,'2024-07-11','2026-08-02 08:30',1,4,4.15,50,NEWID(),'Sales Intern'),
('Ryan','Reed','ryan.reed@company.com',42,99000,'2014-09-18','2026-08-01 17:20',1,6,4.93,180,NEWID(),'Operations Director'),
('Layla','Bailey','layla.bailey@company.com',31,55000,'2022-10-22','2026-08-03 15:50',1,5,4.46,80,NEWID(),'Content Strategist'),
('Nathan','Bell','nathan.bell@company.com',34,69000,'2020-12-07','2026-08-02 19:10',1,2,4.66,94,NEWID(),'Microservices Developer'),
('Aurora','Kelly','aurora.kelly@company.com',27,43000,'2023-11-09','2026-08-03 09:25',1,10,4.21,54,NEWID(),'Office Coordinator');

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

select *
    from department d INNER JOIN employee e ON e.department_id = d.department_id;