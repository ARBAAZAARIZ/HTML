CREATE DATABASE company_xyz;
USE company_xyz;

-- creating table
-- syntax of creating table 
-- CREATE TABLE TABLE_NAME(
-- COLUMN_NAME COLUMN_DATA_TYLE CONSTRAINTS,
-- COLUMN_NAME CLOUMN_DATA_TYPE CONSTRAINTS);

CREATE TABLE employee(
name varchar(30) not null,
age int default(18)
);
DESC employee;

-- adding column (by default at the end)
ALTER TABLE employee ADD COLUMN salary float ;
DESC employee;

-- adding multiple column 
ALTER TABLE employee ADD COLUMN (leaves INT Default(0),bonus INT NOT NULL);
DESC employee;

-- ADDING COLUMN AT THE FIRST OR BEGINING OF THE COLUMN
-- SYNTAX
-- ALTER TABLE TABLE_NAME ADD COLUMN COLUMN_NAME DATA_TYPE CONSTRAINTS FIRST;
ALTER TABLE employee ADD COLUMN ID int primary key FIRST; 
DESC employee;

-- ADDING COLUMN AT BETWEEN OF THE COLUMN
ALTER TABLE employee ADD COLUMN doj DATE NOT NULL AFTER age;
DESC employee;

-- MODIFYINF EXISTING COLUMN changing default value of bonus 0 to 500
ALTER TABLE employee MODIFY COLUMN bonus int default (500);
DESC employee;

-- ADDING CONSTRAINTS TO A COLUMN -- 
-- give constraint a name so we if we want to delete that constrain we will have to give the 
-- consytraint name so it will delete only that constrain or else it will delete all given type of constrain were ever it is present
-- in column so its better give name to constraints while adding the constraints
ALTER TABLE employee ADD constraint leave_unique unique(leaves);
DESC employee;

-- deleting constraint
ALTER TABLE employee DROP CONSTRAINT leave_unique;
DESC employee;

-- modify the column 
ALTER TAbLE employee MODIFY COLUMN leaves FLOAT NOT NULL; 
ALTER TAbLE employee MODIFY COLUMN age INT NOT NULL DEFAULT(21); 
DESC employee;

-- DROPING COLUMN
ALTER TABLE employee DROP salary;
DESC employee;

-- changeing the consytraint value of bonus column from int to decimal and default(500) to default(740)
-- here decimal(5,3) means that number after must not exceeds 5 digits before decimal and 3 dogit must not to be exceeds
-- after decimal ------------- over all 5 digits 
alter table employee modify column bonus decimal(5,3) default(740); 
DESC employee;

-- altering multiple columns 
alter table employee add constraint name_unique unique(name),drop column doj,modify column leaves int not null default(0);
DESC employee;

-- REMAINING THE COLUMN
alter table employee rename column bonus to bonus_of_employee;

-- renaming the table
alter table employee rename to empy;
desc employee; -- this command throws error as we have changed the table name so insted of employee we have to write empy
DESC empy;
alter table empy rename to employee;
DESC employee;

-- droping cloumn
alter table employee drop column age;
DESC employee;

-- droping table
drop table employee;











