 create table joinss ( c_id int primary key,name varchar(30) not null, D_O_B date,gender varchar(20),
 city varchar(30));
 select * from joins; 
 insert into joins values(1,'raj','1997-08-15','male','chennai'),
 ( 2,'mani','1992-07-28','male','mumbai'),
(3,'princy','1889-04-21','female','pune'),(4,'ram','1992-09-25','male','agra')
insert into joins values(7,'ore','1993-06-21','male','delhi');

create table sub_joinss(c_id int primary key,order_name varchar(20),
order_id int,own_house varchar(20));
select * from sub_joins;
insert into sub_joins values(1,'car',201,'yes'),(2,'bike',222,'no'),(3,'car',456,'no'),
(5,'car',323,'yes'),(6,'bike',418,'yes');

create table mul_j (order_id int,languages varchar(20),own_business varchar(20),disability varchar(5));
insert into mul_j values (222,'english','yes','no'),(456,'tamil','no','no'),(222,'hindi','yes','no')
,(323,'marathi','yes','no');
select * from mul_j

select j.name,j.d_o_b,sj.order_name,sj.own_house,mlj.languages,mlj.own_business from joins as j
inner join sub_joins as sj on j.c_id=sj.c_id inner join mul_j as mlj on mlj.order_id=sj.order_id 
order by name asc;






