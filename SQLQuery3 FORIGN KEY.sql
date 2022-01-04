create table data_set(c_id int primary key,name varchar(20),weight varchar(20),salary int);
use customer;
insert into data_set values(16,'raju',45,2000);
insert into data_set  values(17,'arun',32,5000) 
insert into data_set values(18,'karthik',55,8000);
insert into data_set values(19,'mani',60,3000);
select * from data_set
create table  dup_data (c_id int primary key,name varchar(20),weight varchar(20),salary int);
select * from dup_data
insert into dup_data  values(16,'raju',45,2000);
insert into dup_data  values(17,'arun',32,5000) 
insert into dup_data  values(18,'karthik',55,8000);
insert into dup_data  values(22,'xyxxx',60,3000);
create table product_info(c_id int not null,o_id decimal not null ,prod_name varchar(20),
city varchar(20),primary key(o_id), foreign key(c_id) references data_set(c_id));

select * from data_set
select * from product_info
insert into product_info values(16,8.1,'pen','chennai');
insert into product_info(c_id,o_id,prod_name,city)values(17,2.1,'pencil','mumbai')after c_id=16;
insert into product_info values(18,9.1,'pen','hydrebad');
insert into product_info values(19,7.0,'pen','pune');
alter table product_info add gender varchar(20); 

alter table product_info alter column o_id int;
update product_info set o_id=10 where city='mumbai';
delete from product_info where o_id=10;
alter table product_info add  default 
insert into dup_data values(16,'raju',45,2000);
insert into dup_data  values(17,'arun',32,5000) 
insert into dup_data values(18,'karthik',55,8000);
insert into dup_data values(19,'mani',60,3000);
select * from data_set intersect select* from dup_data;
alter table data_set add gender varchar(20);
update data_set set gender=('male') where salary=3000







