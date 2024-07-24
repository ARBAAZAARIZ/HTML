		use t201;
drop table employee;
create table employee(
id int primary key,
name varchar(20),
prday int,
leaves int,
bonus int
);

desc employee;

insert into employee values
(1,'suhail',1200,10,200),
(2,'subham',900,1,500),
(3,'arbaaz',1500,15,100);

select * from employee;

select name from employee;

select name,prday, prday*30 as salary from employee;

select name,prday,prday*30+bonus as incremented_salary from employee;

select name ,prday,prday*30-prday*leaves as deducted_salary from employee;
select name ,prday,prday*(30-leaves) as deducted_salary from employee;

select name ,prday,prday*15 as covid_salary from employee;
select name ,prday,prday*30/2 as covid_salary from employee;

-- show employee getting salary gretter then 30
select name, prday*30 as salary from employee where prday*30>30000;

-- show employee salary where salary is less then 30000
select name, prday*30 as salary from employee where prday*30<30000;

-- show employee getting perday more than 1000
select name, prday from employee where prday>1000;

-- string comprision whose name start with a
select name from employee where name like 'a%';

-- string comprision whose name end with z
select name from employee where name like '%z';

-- string comprision whose name start with a and has exactly 2 character after a
select name from employee where name like 'a_____';

-- AND OR NOT LOGIC OPERATOR
-- SHOW EMPLOYEE WHOSe name start with a nad has peday 1000
select * from employee where name like 'a%' and prday>1000;

-- show employees whos name after start from 1 or has perday salary 1000
select * from employee where name like 'a%' or prday>1000;

-- shom me all employee excluding whose name start from a
select * from employee where not name like 'a%' ; 

-- multiple OR us in
select * from employee where prday in(900,1200);
select * from employee where prday not in(1200,1500);
-- we can use (in) for single or also and multilpe or also
 
-- data between given range
select * from employee where bonus between 50 and 250;
select * from employee where bonus between 150 and 550;

select * from employee where bonus not between 150 and 550;
-- sorting using order by

select * from employee order by leaves;  -- by default ascending
select * from employee order by leaves desc;




insert into employee values
(4,'raj',2000,6,200),
(5,'rani',1900,3,600),
(6,'ajay',2300,13,800);

select * from employee where bonus>150 order by prday*30 ;

-- employee with max leaves 
select * from employee order by leaves desc limit 1;

-- employee with second higest leaves
select * from employee order by leaves desc limit 2  ; 

insert into employee (id,prday,leaves,bonus)  values (7,1200,10,400);
insert into employee (id,name,prday,leaves)  values (8,'vinay',900,1);

select * from employee;

select * from employee where name is null;
select * from employee where bonus is null;
select * from employee where name is not null;
select * from employee where name = null; -- wrong command 





















