use t201;

create table employee(
name varchar(30)
);

desc employee;

-- add colum age (by default at the end)
alter table employee add column age int not null;
desc employee;

-- add colum id at the begnining of the table
alter table employee add column id int primary key first ;

-- add column date of loining between name and age
alter table employee add column doj date after name;
DESC employee;

-- adding multiple column ata a time 
alter table employee add column(salary float,city varchar(20));

-- changing the name column size from 20 to 30
alter table employee modify column name varchar(30);

select * from employee;

-- add constraints unique in name column
alter table employee add constraint unique_name unique(name); 
desc employee;

-- to check the all constraints
select constraint_name, constraint_type
from information_schema.table_constraints
where table_name="employee";

-- drop costraints
alter table employee drop constraint unique_name;

-- drop column
alter table employee drop column city;

-- rename column 
alter table employee rename column name to empname;
desc employee;

-- rename table
alter table employee rename to emp;
desc employee; -- throws error as we havnt changed here table name 
desc emp;

drop table employee;




