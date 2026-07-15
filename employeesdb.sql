-- Create table
CREATE TABLE Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Age TINYINT,
    Salary DECIMAL(10,2),
    HireDate DATE,
    LastLogin DATETIME2,
    IsActive BIT,
    Department VARCHAR(30),
    Email NVARCHAR(100),
    Rating FLOAT,
    Notes NVARCHAR(MAX)
);

-- Insert 50 records
INSERT INTO Employees
(FirstName, LastName, Age, Salary, HireDate, LastLogin, IsActive, Department, Email, Rating, Notes)
VALUES
('John','Smith',25,35000.00,'2020-01-15','2024-01-01 08:15:00',1,'IT','john.smith@company.com',4.5,'Good employee'),
('Jane','Doe',28,42000.00,'2019-03-10','2024-01-02 09:30:00',1,'HR','jane.doe@company.com',4.8,'Excellent communication'),
('Michael','Brown',35,56000.00,'2018-07-20','2024-01-03 07:45:00',1,'Finance','michael.brown@company.com',4.2,'Reliable'),
('Emily','Davis',30,47000.00,'2021-02-12','2024-01-04 10:10:00',1,'Sales','emily.davis@company.com',4.6,'Top seller'),
('David','Wilson',41,72000.00,'2016-11-05','2024-01-05 08:55:00',1,'Management','david.wilson@company.com',4.9,'Department manager'),
('Sarah','Taylor',26,39000.00,'2022-01-18','2024-01-06 09:00:00',1,'Support','sarah.taylor@company.com',4.1,'Quick learner'),
('Robert','Anderson',33,51000.00,'2019-08-30','2024-01-07 11:20:00',0,'IT','robert.anderson@company.com',3.9,'On leave'),
('Linda','Thomas',29,45000.00,'2020-06-25','2024-01-08 12:15:00',1,'Marketing','linda.thomas@company.com',4.4,'Creative'),
('James','Jackson',45,81000.00,'2015-09-10','2024-01-09 08:40:00',1,'Management','james.jackson@company.com',4.7,'Senior manager'),
('Patricia','White',31,49000.00,'2018-05-14','2024-01-10 13:00:00',1,'Finance','patricia.white@company.com',4.3,'Consistent'),
('Christopher','Harris',27,41000.00,'2021-03-02','2024-01-11 08:00:00',1,'IT','christopher.harris@company.com',4.0,'Backend developer'),
('Barbara','Martin',39,65000.00,'2017-04-22','2024-01-12 09:25:00',1,'HR','barbara.martin@company.com',4.5,'HR specialist'),
('Daniel','Thompson',24,33000.00,'2023-02-01','2024-01-13 10:40:00',1,'Support','daniel.thompson@company.com',3.8,'New hire'),
('Jennifer','Garcia',36,60000.00,'2017-10-16','2024-01-14 14:10:00',1,'Sales','jennifer.garcia@company.com',4.6,'Experienced'),
('Matthew','Martinez',32,52000.00,'2019-11-19','2024-01-15 15:20:00',1,'IT','matthew.martinez@company.com',4.4,'Full stack'),
('Elizabeth','Robinson',38,64000.00,'2016-12-12','2024-01-16 08:35:00',1,'Finance','elizabeth.robinson@company.com',4.7,'CPA'),
('Anthony','Clark',29,46000.00,'2020-05-05','2024-01-17 09:45:00',1,'Marketing','anthony.clark@company.com',4.1,'Digital marketing'),
('Susan','Rodriguez',34,58000.00,'2018-08-08','2024-01-18 11:30:00',1,'Sales','susan.rodriguez@company.com',4.5,'Regional sales'),
('Mark','Lewis',40,70000.00,'2015-06-18','2024-01-19 12:00:00',1,'Management','mark.lewis@company.com',4.8,'Operations'),
('Karen','Lee',27,40000.00,'2022-09-09','2024-01-20 13:10:00',1,'Support','karen.lee@company.com',4.0,'Support agent');

