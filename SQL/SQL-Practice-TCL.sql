create database college;
use college;

drop table student;



create table student(
id int primary key auto_increment,
name varchar(20),
age int
);
desc student;
start transaction;

insert into student(name,age)
values
('raj',23),
('rani',32),
('vijay',27),
('alok',42);
select * from student;

savepoint insertion_point;

update student set name='suhail' where id in(1,3);
select * from student;

rollback to insertion_point;
select * from student;
alter table student modify column name varchar(40) not null;

update student set name='sundeep' where id in(2,4);
rollback to insertion_point;








