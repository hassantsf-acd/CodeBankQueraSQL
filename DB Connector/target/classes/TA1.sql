# mysql has two main engines, MyISAM and InnoDB -- Use InnoDB !
show databases;
use sakila; # MySQL database
show tables;
select * from actor;
### comment in mysql -- or #

create database library;
use library;

create table person_tbl(
 id bigint primary key auto_increment,
 first_name char(20), # difference with nchar ? (a little bit different than SQL standard!)
 last_name char(20) not null, # then how can we make sure a string value is of the given size ?
 gender char(16)
);
alter table person_tbl drop column gender;
insert into person_tbl values (null,'ali','akbari');
insert into person_tbl values (null,'علی','اکبری');
select * from person_tbl;


create table author_tbl(
	id bigint primary key,
	pseudonym char(20),
    foreign key(id) references person_tbl(id) on delete cascade on update cascade
);
insert into person_tbl values (null,'Robert','Martin');
select id,last_name from person_tbl;
insert into author_tbl values (3,'Uncle Bob');

select * from author_tbl natural join person_tbl where pseudonym = 'Uncle Bob'; # don't use and don't bother
select * from author_tbl a  join person_tbl p on a.id = p.id; # inner join
select * from author_tbl A, person_tbl P; ## Cartesian Product
select * from author_tbl A cross join person_tbl P; # ?
select * from person_tbl p left join author_tbl a on p.id = a.id;
# MySQL does not have outer join! what is the solution?

select * from person_tbl p left join author_tbl a on p.id = a.id union select * from person_tbl p right join author_tbl a on p.id = a.id;


create table book_tbl (
	id bigint auto_increment primary key,
	_name char(32) not null,
    isbn char(20) not null unique
);

create table book_author(
 book_id bigint not null,
 author_id bigint not null,
 primary key (book_id, author_id),
 foreign key (book_id) references book_tbl(id) on update cascade,
 foreign key (author_id) references author_tbl(id) on update cascade
);

insert into person_tbl values (null,'Abraham','Silberschats');
select * from person_tbl where first_name = 'Abraham';
insert into author_tbl(id) values (4);
insert into book_tbl values (null, 'Database System Concepts','978-0-07-352332-3' );
insert into book_tbl values (null, 'Operating System Concepts','978-1-119-32091-3');
select * from book_tbl;

insert into person_tbl values (null, 'Henry', 'Korth');
select id from person_tbl where last_name = 'Korth';
insert into author_tbl(id) values(5);
insert into book_author values (1, 4);
insert into book_author values (1, 5);
insert into book_author values (2, 4);
# delete from book_author where book_id = 1 and author_id = 6;
select distinct(last_name) from person_tbl natural join author_tbl A join book_author BA on A.id = BA.author_id  join book_tbl B on B.id = BA.book_id;

select last_name from person_tbl natural join author_tbl A join book_author BA on A.id = BA.author_id  join book_tbl B on B.id = BA.book_id where B._name like '%Operating%';


## Publisher ?

## publisher and book relation ?

## TODO

## What is a Schema? 
## todo: Customer, Borrowing, ...
