create database tcs;
use tcs;

create table employee(
id int primary key,
name varchar(30) not null,
perday float ,
leaves int not null  default(0),
bonus float 
);

insert into employee(id,name,perday,leaves,bonus)
values
(1,'raj',1200,10,200),
(2,'rani',900,1,500),
(3,'ajay',1500,15,100);
insert into employee values(4,'vijay',400,2,1000);
insert into employee values(5,'salvi',600,4,700);
insert into employee (id,name,leaves,bonus)values(6,'navjot',4,700);
select * from employee;

-- --------------- using were claus---------------------------------
select * from employee where id in(1,3);

-- ---------------------------arametic operator---------------------
select id,name,perday,perday*31 as salary,perday*30+bonus as incremented_salary from employee;


-- --------------using logic operator-----------------------------------
select name,perday*30 as salary from employee where bonus<=100;

select name,perday,perday*30 as salary from employee where perday!=900;

select name,perday,leaves,perday*30 as salary from employee where leaves>2 and leaves<=10; 

-- ------------------------------range operator-----------------------
select name,perday, perday*30 as salary , bonus from employee where bonus  between 300 and 800;

select name,perday, perday*30 as salary , bonus from employee where bonus not between 300 and 800;

select name,perday, perday*30 as salary , bonus from employee where perday is not null;

-- ----------------------------------list opertor---------------------------------------------
-- ------------we use (in)------------------------------------------
select id,name,perday,perday*31 as salary from employee where perday in(200,400,600,800);

select id,name,perday,perday*31 as salary from employee where perday not in(200,400,600,800);

-- --------------------------like operator-------------------------------------------------------



