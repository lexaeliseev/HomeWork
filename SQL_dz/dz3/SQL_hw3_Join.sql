--Вывести все таблицы из БД
select * from employees
order by employee_name ;
select * from employee_salary;
select * from roles ;
select * from roles_employee;
select * from salary ;

--1. Вывести всех работников, чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, mountly_salary
from employee_salary
inner join employees  on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.
 select employee_name, mountly_salary
from employee_salary
inner join employees  on employee_salary.id = employees.id
inner join salary on employee_salary.salary_id = salary.id
where mountly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select * from employees 
right join employee_salary on employees.id = employee_salary.employee_id
right join salary on employee_salary.salary_id = salary.id 
where employee_name is null ;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select * from employees 
right join employee_salary on employees.id = employee_salary.employee_id 
right join salary on employee_salary.salary_id = salary.id 
where mountly_salary < 2000 and employee_name is null ;

--5. Найти всех работников кому не начислена ЗП.
select * from
employees left join employee_salary on employees.id = employee_salary.employee_id
where salary_id is null ;

--6. Вывести всех работников с названиями их должности.
select employee_name, role_name 
from employees 
inner join roles_employee on employees.id =roles_employee.employee_id 
inner join roles on roles_employee.role_id = roles.id ; 

--7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name
from employees
inner join roles_employee on employees.id = roles_employee.employee_id
inner join roles on roles_employee.role_id = roles.id 
where role_name like '%Java dev%' ;

 --8. Вывести имена и должность только Python разработчиков.
select employee_name, role_name
from employees
inner join roles_employee on employees.id = roles_employee.employee_id
inner join roles on roles_employee.role_id = roles.id 
where role_name like '%Python%' ;
 
--9. Вывести имена и должность всех QA инженеров.
select employee_name, role_name
from employees
inner join roles_employee on employees.id = roles_employee.employee_id
inner join roles on roles_employee.role_id = roles.id 
where role_name like '%QA%' ;

--10. Вывести имена и должность ручных QA инженеров
select employee_name, role_name
from employees
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles on roles_employee.role_id = roles.id
where role_name like '%Manual%' ;

--11. Вывести имена и должность автоматизаторов QA
select employee_name, role_name
from employees 
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles on roles_employee.role_id = roles.id 
where role_name like '%Auto%' ;

--12. Вывести имена и зарплаты Junior специалистов 
select employee_name, mountly_salary
from employees
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles on roles_employee.role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id 
where role_name like '%Junior%' ;

--13. Вывести имена и зарплаты Middle специалистов 
select employee_name, mountly_salary
from employees
inner join roles_employee on employees.id = roles_employee.employee_id
inner join roles on roles_employee.role_id = roles.id 
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id
inner join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%' ;

--14. Вывести имена и зарплаты Senior специалистов
select employee_name, mountly_salary
from employees 
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles on roles_employee.role_id = roles.id 
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
inner join salary on employee_salary.salary_id = salary.id 
where role_name like '%Senior%' ;

--15. Вывести зарплаты Java разработчиков
select mountly_salary
from employees
inner join roles_employee on employees.id = roles_employee.employee_id
inner join roles on roles_employee.role_id = roles.id
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
inner join salary on employee_salary.salary_id = salary.id
where role_name like '%Java dev%' ;

-- 16. Вывести зарплаты Python разработчиков
select mountly_salary
from employees
inner join roles_employee on employees.id = roles_employee.employee_id
inner join roles on roles_employee.role_id = roles.id
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
inner join salary on employee_salary.salary_id = salary.id
where role_name like '%Python dev%' ;

--17. Вывести имена и зарплаты Junior Python разработчиков 
select employee_name, mountly_salary, role_name
from employees
inner join roles_employee on employees.id = roles_employee.employee_id
inner join roles on roles_employee.role_id = roles.id
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
inner join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior Python%' ;

-- 18. Вывести имена и зарплаты Middle JS разработчиков
select *
from employees 
inner join roles_employee on employees.id = roles_employee.employee_id
inner join roles on roles_employee.role_id = roles.id
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
inner join salary on employee_salary.salary_id = salary.id 
where role_name like '%Middle JavaS%' ;

-- 19. Вывести имена и зарплаты Senior Java разработчиков
select employee_name, mountly_salary
from employees 
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles on roles_employee.role_id =roles.id 
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id
inner join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior Java dev%' ;

-- 20. Вывести зарплаты Junior QA инженеров
select employee_name, role_name, mountly_salary
from employees 
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles on roles_employee.role_id = roles.id 
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
inner join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior% %_% %QA%' ;

--21. Вывести среднюю зарплату всех Junior специалистов
select AVG(mountly_salary)
from roles 
inner join roles_employee on roles.id = roles_employee.role_id 
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id
inner join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%' ;

-- 22. Вывести сумму зарплат JS разработчиков ////////////////////////////////////////
select SUM(mountly_salary)
from roles 
inner join roles_employee on roles.id = roles_employee.role_id 
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id
inner join salary on employee_salary.salary_id = salary.id
where role_name like '%JavaS%' ;

-- 23. Вывести минимальную ЗП QA инженеров
select min(mountly_salary)
from roles 
inner join roles_employee on roles.id = roles_employee.role_id 
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id
inner join salary on employee_salary.salary_id = salary.id
where role_name like '%QA%' ;

-- 24. Вывести максимальную ЗП QA инженеров
select MAX(mountly_salary)
from roles 
inner join roles_employee on roles.id = roles_employee.role_id 
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id
inner join salary on employee_salary.salary_id = salary.id
where role_name like '%QA%' ;

--25. Вывести количество QA инженеров
select COUNT(role_name)
from roles
inner join roles_employee on roles.id = roles_employee.role_id
where role_name like '%QA%' ;

--26. Вывести количество Middle специалистов.
select COUNT(role_name)
from roles
inner join roles_employee on roles.id = roles_employee.role_id
where role_name like '%Middle%' ;

 --27. Вывести количество разработчиков
select COUNT(role_name)
from roles
inner join roles_employee on roles.id = roles_employee.role_id
where role_name like '%deve%' ;

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select SUM(mountly_salary)
from salary
inner join employee_salary on salary.id = employee_salary.salary_id 
inner join roles_employee on employee_salary.employee_id = roles_employee.employee_id
inner join roles on roles_employee.role_id = roles.id 
where role_name like '%devel%' ;

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, role_name, mountly_salary
from employees
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles on roles_employee.role_id = roles.id 
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
inner join salary on employee_salary.salary_id = salary.id 
order by mountly_salary ;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, role_name, mountly_salary
from employees
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles on roles_employee.role_id = roles.id 
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
inner join salary on employee_salary.salary_id = salary.id
where mountly_salary between 1700 and 2300
order by mountly_salary ;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, role_name, mountly_salary
from employees
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles on roles_employee.role_id = roles.id 
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
inner join salary on employee_salary.salary_id = salary.id
where mountly_salary < 2300
order by mountly_salary ;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, mountly_salary
from employees
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles on roles_employee.role_id = roles.id 
inner join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
inner join salary on employee_salary.salary_id = salary.id
where mountly_salary in (1100, 1500, 2000)
order by mountly_salary ;







