create database assignment_2;
use assignment_2;
 create table joins ( c_id int primary key,name varchar(30) not null, D_O_B date,gender varchar(20),
 city varchar(30));
 select * from joins; 
 insert into joins values(1,'raj','1997-08-15','male','chennai'),
 ( 2,'mani','1992-07-28','male','mumbai'),
(3,'princy','1889-04-21','female','pune'),(4,'ram','1992-09-25','male','agra')
insert into joins values(7,'ore','1993-06-21','male','delhi'); 
create table sub_joins(c_id int primary key,order_name varchar(20),
order_id int,own_house varchar(20));
select * from sub_joins;
insert into sub_joins values(1,'car',201,'yes'),(2,'bike',222,'no'),(3,'car',456,'no'),
(5,'car',323,'yes'),(6,'bike',418,'yes');

select j.c_id,j.name,j.d_o_b,sj.order_name,sj.order_id,sj.own_house from joins as j
inner join sub_joins as sj on j.c_id=sj.c_id;
select j.c_id,j.name,j.d_o_b,sj.order_name,sj.order_id,sj.own_house from joins as j
left join sub_joins as sj on j.c_id=sj.c_id;
select j.c_id,j.name,j.d_o_b,sj.order_name,sj.order_id,sj.own_house from joins as j
right join sub_joins as sj on j.c_id=sj.c_id;
select j.c_id,j.name,j.d_o_b,sj.order_name,sj.order_id,sj.own_house from joins as j
full outer join sub_joins as sj on j.c_id=sj.c_id;

create table uni ( c_id int primary key,name varchar(30) not null,
D_O_B date,gender varchar(20),city varchar(29));
 insert into uni values(1,'raj','1997-08-15','male','chennai'),
 ( 2,'mani','1992-07-28','male','mumbai'),
(3,'princy','1889-04-21','female','pune'),(4,'ram','1992-09-25','male','agra'),
(5,'vinoth','1995-05-19','male','goa'),(7,'indhuja','1990-03-05','female','pondicherry'); 
 insert into uni values(9,'indhuja','1990-03-05','female','pondicherry'); 
select* from uni;
create view test02
as
select j.c_id,j.name,j.d_o_b,sj.order_name,sj.order_id,sj.own_house from joins as j
full outer join sub_joins as sj on j.c_id=sj.c_id;
select* from test02
insert into test02 values(6, 'joel','1990-08-17','bike',338,'yes');
drop table sub_joins;
delete from test02 where c_id=5;
create view test14
as
select c_id,name from uni;
select * from test14
insert into test14 (c_id,name) values(8,'joy');

select * from joins;
select * from sub_joins;
select c_id,name,d_o_b,city from joins where c_id in (select c_id from sub_joins where c_id=1);
select j.c_id,j.name,j.d_o_b,sj.order_name,sj.order_id from joins as j inner join sub_joins as sj 
on j.c_id=sj.c_id;
select order_name,
case when order_id =201 then 301 else 787  end as order_id  from sub_joins;























