use company_xyz;

create table employee(
id int ,
name varchar(5),
salary int
);
desc employee;

-- gettig all databases
show databases;

-- using mysql database
use mysql;

-- getting tables of mysql database
show tables;

-- getting all columns of user table
select * from user;

-- getting username from User colum from user table
select User from user;

-- creating user
create user 'rose'@'localhost' identified by 'amdin@123';

-- checking permission for user rose
show grants for 'rose'@'localhost';

-- giving permission to user rose
grant insert,select,create,alter on company_xyz.employee to 'rose'@'localhost';
show grants for 'rose'@'localhost';

-- getting out the permission of rose user
revoke insert,select on company_xyz.employee from 'rose'@'localhost';
show grants for 'rose'@'localhost';



