create database t201;
use t201;

create table employee(
id int primary key ,
fname varchar(20),
lname varchar(20),
slary float ,
leaves int,
bonus int
);

insert into employee
values
(1,'raj','kumar',25000,5,500),
(2,'rani','dube',35000,10,null),
(3,'aniket','chavan',50000,7,200);

select* from employee;

-- ------------------string function-----------------------
select concat('sql', ' : ', 'java','-','python') as combined ;
select concat(fname,' : ',lname) from employee;
select concat(fname,' : ',lname) as full_name from employee;
select concat_ws(' - ',fname,lname) as full_name from employee;

select upper(fname) as uppercase from employee;
select upper('arbaaz') as lower;

select reverse(fname) from employee;

select insert('java',1,3,'-');
select insert(fname,1,2,'#') from employee; 

-- aggrigate function-----------------------------------------------
-- min,max,avg,sum,count
select max(slary) from employee;
select min(slary) from employee;
select min(bonus) from employee;
select avg(slary) from employee;
select sum(slary) from employee;
select count(id) from employee;
-- show me the employe who is getting salay more the average salary
select fname,slary from employee where salary>(select avg(slary) from employee);


select fname,slary from employee where slary=35000;

-- -------------------math function
select abs(-56); -- absolute removes sign
select abs(56);

select floor(52.99); -- towards smaller interger values
select ceil(52.10); -- towards greater interger value

select round(52.49);  -- round reads the after decimal value  if there is leass the 0.5 then it will floor the value means it will take the inter to smaller value
select round(52.50); -- round reads the after decimal value  if there is greater or equal to 0.5 the it will ceil the value means it will tak the integer to greater value
select round(52.125,2) ; -- i want 2 digit after decimal
select round(52.124,2); -- 2 digit after decimal

select truncate(52.1234,2); -- IN THIS TRUNCATE IT WILL SELECT 2 DIGITS AFTER DECIMAL AND WHAT IS PRESENT AFTER 2 DIGIT IT WILL NOT SHOW THAT

-- ------------date bulit in function-------------------------------------------------------------------------------
select current_date();
select curdate();
select now();

select year(curdate());
select year('1974-06-24');
select month(curdate());
select month('1974-06-24');
select day(curdate());
select day('1974-06-24');

select dayofweek(curdate());
select dayofweek('1974-06-24');
select last_day(curdate());
select datediff(last_day(curdate()),curdate());
select datediff('2023-09-31','24-07');

-- ------------------------------------foramting date----------------------------
select date_formate(curdate(),"%Y");
select date_formate(curdate(),"%y");

select date_format(curdate(),'%M');
select date_format(curdate(),'%b');

select date_format(curdate(),'%W');
select date_format(curdate(),'%w');

select date_format(curdate(),'%a');

select date_format(curdate(),'%d/%b/%y')


