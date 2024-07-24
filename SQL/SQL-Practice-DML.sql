create database college;
use college;

create table student(
id int primary key,
name varchar(30),
age int not null
);

desc student;

-- ---------------------inserting one row data at a time------------------------------------------------------------------------------------
insert into student (id,name,age)
values
(1,'arbaaz alam',21);
select * from student;
-- ---------------------inserting multiple records at a time-------------------------------------------------------------------------------
insert into student (id,name,age)
values
(2,'rose',14),
(3,'aariz',9);
select * from student;

-- --------------------insering records without specifying the column name-----------------------------------------------------------------
insert into student 
values
(4,'arif',50);
select * from student;

-- --------------------insering records without specifying a particular column name-----------------------------------------------------------------
insert into student (id,age) -- ------------ here we havent specified name column name
values
(5,34);
select * from student;

-- -------------------------------------------------------UPDATE--------------------------------------------------------------------------

--  UPDATE table_name SET colum_name=new_value WHERE column_name=value
-- -----------------------------updating one column data at a time-------------------------------------------------------------------------

update student set name='raj' where id=5;
select * from student;

alter table student modify column id int auto_increment;
desc student;



insert into student (name,age)
values
('jaggu',25),
('rohan',25);
select * from student;

-- -------------------------------- to deactivate the safe mode---------------------------------------------------------
set sql_safe_updates=0;

update student set name='rani' where age=25;
select * from student;

-- update with out using where clause --- without using where claus is used to set the whole column date same----- lets see how 
update student set name='raj'; -- this line will set all name column data as raj-----------------------
select * from student;

-- passing id wich does not exist
update student set name="hululu" where id=101; -- this statement has no error but when we see output action there is written
--                                                zero row match so o row changed ad id dosent matched the given id so now warnings


-- ----------------------------------------DELETE-----------------------------------------------------------------------------------------

-- -------------------------DELETING one record at a time
delete from student where id=1;
select * from student;

-- -------------------------------deleting multiple record ata time---------------------------------------------------
set sql_safe_updates=0;

delete from student where age=25;
select * from student;

-- -------------------------------------------delete without where----------------------------------------------------------------

delete from student;
select * from student;
desc student;

insert into student(id,name,age)
values
(3,'ajay',23);

delete from student;
select * from student;

insert into student(id,name,age)
values
(1,'ajay',23);








