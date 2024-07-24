create database t201;
show databases;
use t201;

create table book(
id int primary key,
book_name varchar(30) not null unique,
author_name varchar(30) default 'NA',
price int check(price>99 and price<999),
genre enum('comedy','horror','scifi'),
available_in set('online','offline','audiobook')
);

describe book;
insert into book 
(id,book_name,author_name,price,genre,available_in)
values
(101,"Three mistake of my life","chetan",140,"scifi","online,offline,audiobook");

select * from book;