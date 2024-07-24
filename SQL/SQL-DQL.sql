use t201;

create table employee(
id int primary key,
name varchar(20) not null default 'NA',
salary float not null default '0'
);

describe employee;

-- insert data one at a time
insert into employee
(id,name,salary)
values
(1,'arbaaz',6000000);

select * from employee;

-- inserting multipole data at a time
insert into employee
(id,name,salary)
values
(5,'aariz',3400000),
(6,'rose',3400000);

-- 
insert into employee(id,name)
values
(4,'suhail');
select * from employee;

-- -------------------------------------update-------------------------------------------------


-- updating one column data at a time 
update employee set name='arbaaz alam' where id=1;

-- updating multiple column by  data 
update employee set name ='aariz alam',salary=7000000 where id=2;
select * from employee;
SET SQL_SAFE_UPDATES=0;
-- updating multiple row at a time
update employee set name='raz' where salary=3400000;

-- passin id which doesnot exist
update employee set name='raz';

-- ---------------------------------------delete------------------------------------------

-- delete from table_name where column_name=value
delete from employee where id=4 ;
select * from employee;

-- delete multiple records at a time;
delete from employee where salary=3400000;
select * from employee;
-- delete without were ---- delete all record ata time
delete from employee;

drop table employee;

create table employee(
id int primary key auto_increment,
name varchar(20) not null default 'NA',
salary float not null default '0'
);

insert into employee(name,salary)
values
('rani',35000),
('raza',45000);
select * from employee;

delete from employee;

insert into employee(name,salary)
values
('rani',35000),
('raza',45000);
select * from employee;
truncate employee;

insert into employee(name,salary)
values
('rani',35000),
('raza',45000);
select * from employee;






