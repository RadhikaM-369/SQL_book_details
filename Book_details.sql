create table book_details(
book_id tinyint,
book_name varchar(20) unique,
book_author varchar(30) not null,
price float default 500,
publish_year year check(publish_year>2000),
book_volume char(10),
primary key(book_id));
select * from book_details;
insert into book_details value(1,'JAVA','BalguruSwamy',428.00,'2005','V3'),(2,'C programming','Rajesh hongal',250.00,'2008','V2'),(3,'Computer netwoking','Alberto Garcia',480.30,'2000','V2'),(4,'Data Structure','Padma Reddy',263.00,'1998','V3'),(5,'C++','BalguruSwamy',330.00,'1999','V2');
select * from book_details where volume='V2';
select * from book_details where volume='V2' and publish_year>='2000';
alter table book_details add column No_of_pages INT;
alter table book_details rename column price to book_price;
alter table book_details rename to book_info;
select * from book_info;
drop table book_info;
select * from book_details;
describe book_details;
insert into book_details value(1,'JAVA','BalguruSwamy',428.00,'2005','V3');
insert into book_details value(2,'C programming','Rajesh hongal',250.00,'2008','V2');
insert into book_details value(3,'Computer netwoking','Alberto Garcia',480.30,'2002','V2');
insert into book_details value(4,'Data Structure','Padma Reddy',263.00,'2001','V3');
insert into book_details value(5,'C++','BalguruSwamy',330.00,'2010','V2');
alter table book_details add constraint primary key(book_name);
insert into book_details values(6,'2states','Chetan bhagat',1020,'2006','v1'),(7,'Computer networks','Ramana',1000,'2009','v4'),
(8,'Algorithm','Jeff',800,'2005','v3'),(9,'The faultInOurStars','John green',700,'2006','V8'),(10,'The hunger Games','Suzzane colin',600,'2010','V5'),(11,'The Da vinci code','Dan Brown',700,'2011','V4');
update book_details set book_volume='v3' where book_id=3;
update book_details set price=1500 where book_id=3;
delete from book_details where book_id=3;
delete from book_details where book_id=3 and book_name='2states';

-- it will display in ascending order
SELECT * from book_details order by price;
SELECT * from book_details order by price desc;

-- it will limit the rows to be displayed
SELECT * from book_details limit 10;
SELECT * from book_details order by book_id desc limit 10;
-- In is used for multiple OR operation, Between order by
SELECT * from book_details where book_name IN('The Da vinci code','The hunger Games','Algorithm');
SELECT * from book_details where price IN(1020,700,800);
SELECT * from book_details where price between 700 and 1000;
SELECT * from book_details where publish_year between 2005 and 2010 order by publish_year;

-- AS
select price as book_price from book_details where price>700;
select price as book_amount from book_details;

-- LIKE
SELECT * from book_details;
SELECT * from book_details where book_name like 'Stars';
SELECT * from book_details where book_name like '%Stars';
SELECT * from book_details where book_name like '%s';
SELECT * from book_details where book_name like 'The%';
SELECT * from book_details where book_name like '%ta%';
SELECT * from book_details where book_name like '_ctu%';
SELECT * from book_details where book_name like '____e%';

--  DATE & TIME functions
SELECT now();
SELECT now() as present_Date_Time;
SELECT TIME(NOW()) As Extracted_time;
SELECT DATE(NOW()) As Extracted_Date;
SELECT month('2021-11-12 10:48:06') As extract_month;
SELECT week('2021-11-12 10:48:06') As extract_week;
SELECT dayname('2021-11-12 10:48:06') As extract_dayName;

-- get heighest cost of book from book_details table
select max(price) as highest_cost_of_book from book_details;
select min(price) as lowest_cost_of_book from book_details;
select avg(price) as average_cost_of_book from book_details;

-- get total cost of all books
select sum(price) as total_cost_of_book from book_details;

-- get total no of books
select count(book_name) as total_no_of_book from book_details;

-- get no of book written by each author
select book_author,count(book_name) as No_OF_BOOKS_AUTHOR_NAME from book_details group by book_author;

select price,count(book_name) as book_price from book_details group by price;

select publish_year, count(book_name) as NO_OF_BOOKS_PUBLISHED from book_details where publish_year>2005 group by publish_year;




