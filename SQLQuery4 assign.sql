create database customer;
use customer;
create table customer_details (cust_id int primary key,name varchar(20) NOT NULL,
gender varchar(20) NOT NULL,country varchar(20),income INT);
select * from customer_details;
INSERT INTO customer_details VALUES (21,'predeep','male','india',10000);
INSERT INTO customer_details VALUES (22,'john','male','america',20000);
INSERT INTO customer_details VALUES (23,'sheela','female','france',40000);
INSERT INTO customer_details VALUES (24,'ram','male','germany',15000);
TRUNCATE TABLE customer_details;
ALTER TABLE customer_details ALTER COLUMN country varchar(30);
ALTER TABLE customer_details DROP COLUMN gender;
ALTER TABLE customer_details ADD gender varchar(20);


update customer_details set income= 40000 where country='france'; 
delete from customer_details where cust_id=27;
INSERT INTO customer_details (cust_id,name,gender,country,income) VALUES (27,'sundar','male','bhutan',5000);
select name,income from customer_details;
select * from customer_details where income=20000;
select * from customer_details where income <> 20000;
select * from customer_details where income < 40000;
select * from customer_details where income > 15000;
select * from customer_details where income >=20000;
select * from customer_details where cust_id between 23 and 25;
select * from customer_details where cust_id in (22,25);
select * from customer_details where cust_id not in (22,23);
select * from customer_details where income>40000 or name='john';
select * from customer_details where income>10000 and gender='male';
select * from customer_details where income is null;
select * from customer_details where name like 's%';
select * from customer_details where name like '%a';
select * from customer_details where country like  '%t__'
select * from customer_details where name like '_h%'
select * from customer_details where name like 'j___'
select * from customer_details where name like 'p%p'
select * from customer_details where name like 'p_%_%';
select * from customer_details where name like 'j_%'
select * from customer_details order by income;
select * from customer_details order by name desc ,income asc;
select name, income, gender from customer_details order by name asc;
select count (gender) from customer_details;
select max (income) from customer_details;
select min (income) from customer_details;
select sum (income) from customer_details;
select avg (income) from customer_details;
select distinct gender from customer_details;
select * from customer_details where income=(select max (income)
from customer_details);

select cust_id,name,income from customer_details where income<
(select AVG(income) from customer_details);

create table updt_sq(cust_id int,name varchar(20),country varchar(20));
select* from updt_sq
alter table updt_sq add income int;
truncate table updt_sq;
insert into updt_sq select cust_id,name,country,income from customer_details where country in(select country 
from customer_details where income >20000);

SELECT cust_id,name,country,income+1000 from customer_details;
SELECT cust_id,name,country,income,income+1000 bonus_happy from customer_details;
SELECT cust_id,name,country,income,income-1000 sad from customer_details;
SELECT cust_id,name,country,income,income*2 so_happy from customer_details;
SELECT cust_id,name,country,income,income/5 bonus from customer_details;
SELECT cust_id,name,country,income,income%5 bonus from customer_details;

























