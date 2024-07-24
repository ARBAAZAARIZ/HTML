use t201;
show tables;
drop table employee;

create table employee(
id int primary key,
name varchar(20),
salary float
);

desc employee;

start transaction;

insert into employee(id,name,salary)
values
(1,'rani','35000'),
(2,'ajay','45000');

select * from employee;

savepoint insertion_step;

delete from employee where id=1;

rollback to insertion_step;
select * from employee;

update employee set name='vijay' where id=1;
select * from employee; 
 
 rollback to insertion_step; 
select * from employee; 

-- if we want to delete all savepoint
delete from employee where id=1;
commit; -- this line delets all savepoint

rollback to insertion_step;  -- thorws error
select * from employee;


