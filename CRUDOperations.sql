-- CRUD : Create, Read, Update, Delete
use employeesdb;

select *
	from employees
		where last_name = 'Gonzales';

-- crear una actualizacion para que los nombres William -> Adam
-- No hay que hacer
UPDATE employees
	SET first_name = 'Adam';

-- crear una actualizacion para que los aplleidos Smith -> Gonzales
update employees 
	set last_name = 'Gonzales'
		where last_name = 'Smith';


-- Crear una actualizacion que aumente el salario de todos los trabajadores que tienen como rating 4.70 en 1000 pesos

select *
	from employees
		where rating = 4.70;

select COUNT(*)
from employees
where rating = 4.70;

update employees 
	set salary = salary + 1000
		where rating = 4.70;

-- Crear una actualizacion que aumente un anio de edad a todos los empleados 
--que tengan mas de 140 horas de vacaciones y ademas tengas como notas 'Solutions Architect'

select *
	from employees
		where vacation_hours > 140 AND notes = 'Solutions Architect';

update employees 
	set age = age + 1
		where vacation_hours > 140 AND notes = 'Solutions Architect';


-- Crear una consulta que actualice todos los departamentos de HR a Human Resources