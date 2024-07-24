show databases;  -- checking all database
use mysql;    -- selecting default database mysql database
show tables;  -- getting all tables of mysql database
select * from user; -- getting all columns from user table
select User from user; -- selecting all user column from user

-- creating users
create user 'arbaaz'@'localhost' identified by 'admin@123';
create user 'aariz'@'localhost' identified by 'admin@123';

-- checking permission for above user
show grants for 'arbaaz'@'localhost';
show grants for 'aariz'@'localhost';

-- givin permission to the perticular user
grant insert on t201.book to 'arbaaz'@'localhost';
grant select on t201.book to 'aariz'@'localhost';

-- remove permission
revoke insert on t201.book from 'arbaaz'@'localhost';










