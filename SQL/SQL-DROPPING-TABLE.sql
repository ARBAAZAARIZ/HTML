create table teacher(
id int ,
name varchar(30),
departmant varchar(30)
);

insert into teacher
values
(1,'arbaaz',21),
(2,'asmira',24),
(3,'alfiya',23);

select * from teacher;
-- -------------------drop table-----------------------------------------------------------------------------------------------------------
-- -------drop table table_name--------- this command delets the whole table structure from database;

drop table teacher;
select * from teacher; -- error not college.teacher table does't exist

create table teacher(
id int ,
name varchar(30),
departmant varchar(30)
);


insert into teacher
values
(1,'arbaaz',21),
(2,'asmira',24),
(3,'alfiya',23);

select * from teacher;

-- -----------------------------difference between delete table tablename; and truncate table_name----------------------------------------
-- 1 delete table table_name needs where claus condition to delete a record
--    truncate dont required a were clause as it delets all record at once

-- 2 here insertion starts from where the last insertion done, to permentaly delete the recored commit command is needed
--  in truncate all data is deleted permentaly and after truncate the insertion will start from fresh

select * from teacher;
truncate teacher;
select * from teacher;
-- not even a null value is shown in a table 





