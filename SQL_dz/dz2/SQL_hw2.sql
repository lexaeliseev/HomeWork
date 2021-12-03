--Таблица employees
	--1) Создать таблицу employees
		-- id. serial, primary key,
		-- employee_name. Varchar(50), not null
create table employees (
id serial not null primary key, 
employee_name varchar(50) not null
);

select * from employees ;

	--2) Наполнить таблицу employee 70 строками
insert into employees(employee_name)
	values('Настя Васильева'),
		('Станислав Станиславский'),
		('Дмитрий Оникиенко'),
		('Екатерина Кладкова'),
		('Анна Петрова'),
		('Надежда Мога'),
		('Евгений Изнанкин'),
		('Инна Кугач'),
		('Татьяна Кулага'),
		('Алена Виноградова'),
		('Антон Головань'),
		('Юлия Лымарева'),
		('Анна Нестеренко'),
		('Алексей Куликов'),
		('Люба Муратова'),
		('Александр Попов'),
		('Надежда Кудлай'),
		('Алфир Ибрагимов'),
		('Анатолий Чебуров'),
		('Кристина Тсурко'),
		('Татьяна Маркова'),
		('Владимир Багненко'),
		('Дмитрий Касинский'),
		('Антон Антюхов'),
		('Мила Варшавская'),
		('Алексей Карпенко'),
		('Артем Маршалин'),
		('Роман Кириллов'),
		('Владимир Максимов'),
		('Захар Андрусенко'),
		('Евгения Кощеева'),
		('Данил Головин'),
		('Галина Шаройко'),
		('Юрий Кузнецов'),
		('Евгений Черевань'),
		('Мария Степанова'),
		('Инга Василенко'),
		('Артем Карпенко'),
		('Тарас Ушакевич'),
		('Алена Усачева'),
		('Дарья Романова'),
		('Екатерина Сократова'),
		('Дмитрий Куринин'),
		('Виктория Еременко'),
		('Тимур Абдуллин'),
		('Евгений Дроздов'),
		('Ольга Рузанова'),
		('Михаил Лузан'),
		('Светлана Левковская'),
		('Алексей Федорчук'),
		('Дмирий Вычужанин'),
		('Юлия Старовойтова'),
		('Юлия Хлопина'),
		('Юлия Кострюкова'),
		('Олег Лебедев'),
		('Алла Баранова'),
		('Марина Гайкевич'),
		('Елена Баринова'),
		('Элеонора Терентьева'),
		('Любовь Сергеева'),
		('Алексей Герасименко'),
		('Владислав Крюкович'),
		('Андрей Смоляков'),
		('Ксения Кудрявцева'),
		('Дмитрий Митскевич'),
		('Сергей Пулатов'),
		('Андрей Лайков'),
		('Алексей Осипик'),
		('Мария Кольцова'),
		('Роман Сеченов');
	select * from employees ;
delete from employees
	where id=71 ;
		
--Таблица salary
--3) Создать таблицу salary
	-- id. Serial primary key,
	-- monthly_salary. Int, not null
create table salary(
id serial primary key,
mountly_salary int not null
) ;
select * from salary ;
--4) Наполнить таблицу salary 15 строками:
	--данные в таблице с заданием
insert into salary(mountly_salary)
	values  (1000),
			(1100),
			(1200),
			(1300),
			(1400),
			(1500),
			(1600),
			(1700),
			(1800),
			(1900),
			(2000),
			(2100),
			(2200),
			(2300),
			(2400),
			(2500) ;
select * from salary ;
--Таблица employee_salary
	--5) Создать таблицу employee_salary
		-- id. Serial primary key,
		-- employee_id. Int, not null, unique
		-- salary_id. Int, not null
create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
) ;
select * from employee_salary ;
--6) Наполнить таблицу employee_salary 40 строками:
		-- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id, salary_id)
	values (1,3);
select * from employee_salary;
insert into employee_salary(employee_id, salary_id)
	values  (4,2),
			(5,9),
			(40,13),
			(23,4),
			(11,2),
			(52,10),
			(15,13),
			(26,4),
			(16,1),
			(33,7),
			(27,5),
			(44,6),
			(28,16),
			(29,14),
			(53,11),
			(54,9),
			(55,7),
			(56,4),
			(57,11),
			(58,14),
			(69,15),
			(60,1),
			(61,3),
			(62,5),
			(63,8),
			(64,8),
			(65,9),
			(66,6),
			(67,5),
			(68,2),
			(71,4),
			(72,5),
			(73,8),
			(74,11),
			(75,11),
			(76,12),
			(77,9),
			(78,10),
			(79,14),
			(80,2);
select * from employee_salary ;
delete  from employee_salary
where id=41 ;
--Таблица roles
	--7) Создать таблицу roles
		-- id. Serial primary key,
		-- role_name. int, not null, unique
create table roles(
id serial primary key,
role_name int not null unique 
) ;
select * from roles ;
	--8) Поменять тип столба role_name с int на varchar(30) --ALTER 
alter table roles
alter column role_name type varchar(30) ;
	--9) Наполнить таблицу roles 20 строками:
insert into roles (role_name)(
values  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales Manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer')
) ;
select * from roles;
update roles 
set role_name = 'Senior Automation QA engineer'
where id=20 ;

--Таблица roles_employee
	--10) Создать таблицу roles_employee
		-- id. Serial primary key,
		-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
		-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee( --создаем таблицу
id serial primary key,		--указываем какие колонки
employee_id int not null unique,	--указываем какие колонки
role_id int not null,		--указываем какие колонки
foreign key (employee_id)	--указываем колонку ЭТОЙ ТАБЛИЦЫ которую мы хотим связать
references employees(id),	--указываем другую таблицу и колонку другой таблицы для связи с этой колонкой и таблицей
foreign key (role_id)		--указываем колонку ЭТОЙ ТАБЛИЦЫ которую мы хотим связать
references roles(id)		--указываем другую таблицу и колонку другой таблицы для связи с этой колонкой и таблицей
);
select * from roles_employee ;
	--11) Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (employee_id, role_id)( --Когда перечисляю столбцы куда нужно вставить значения, то НЕ ЗАБЫВАЙ ПРО СКОБКУ для выражения!
	values  (1,4),
			(20,4),
			(3,9),
			(5,13),
			(23,4),
			(11,2),
			(10,9),
			(22,13),
			(21,3),
			(34,4),
			(6,7),
			(2,20),
			(4,19),
			(8,17),
			(7,11),
			(9,9),
			(12,5),
			(13,8),
			(14,19),
			(15,12),
			(16,1),
			(17,6),
			(18,15),
			(19,16),
			(24,18),
			(25,19),
			(26,14),
			(28,6),
			(27,11),
			(29,12),
			(30,1),
			(31,4),
			(32,3),
			(33,10),
			(39,10),
			(35,10),
			(36,15),
			(37,11),
			(38,19),
			(40,2)
			);
select * from roles_employee ;