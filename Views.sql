select sum(e.salary) as suma, d.department_name
	from employee e inner join department d on e.department_id = d.department_id
		group by d.department_name;
		

select avg(e.salary) as promedio, d.department_name
	from employee e inner join department d on e.department_id = d.department_id
		group by d.department_name;


CREATE VIEW vw_TotalSalarioPorDepartamento
AS 
select sum(e.salary) as suma, d.department_name
	from employee e inner join department d on e.department_id = d.department_id
		group by d.department_name;

select * 
	from vw_TotalSalarioPorDepartamento;

ALTER VIEW vw_TotalSalarioPorDepartamento
AS 
select sum(e.salary) as suma, d.department_name
	from employee e left join department d on e.department_id = d.department_id
		group by d.department_name;

select suma, department_name
	from vw_TotalSalarioPorDepartamento
		where department_name like 'E%';