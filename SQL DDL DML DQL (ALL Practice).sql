                           DDL practice
use practise_01
create table food_menu (food_name varchar(20) not null,days varchar(20) not null,price int,eated_guys int ,
feedback varchar(25));
insert into food_menu values('dosa','monday',25,18,'good'),('idly','tuesday',10,23,'v_good'),
('pongal','wednesday',30,15,'better'),('idiyapam','thursday',20,22,'nice'),('fish','friday',80,35,'exellent'),
('briyani','saturday',100,39,'exellent')
insert into food_menu(food_name,days,price,eated_guys,feedback)values('fish','friday',80,35,'good')
select * from food_menu
drop table food_menu
truncate table food_menu
alter table food_menu alter column food_name varchar(25)
alter table food_menu drop column feedback
alter table food_menu add feedback varchar(30) 
											DML
update food_menu set feedback='good' where price=25
update food_menu set feedback='exellent' where price= 100
update food_menu set feedback='worst' where price= 30
update food_menu set feedback='good' where price= 20
delete from food_menu where price=80
insert into food_menu(food_name,days,price,eated_guys,feedback)values('fish','friday',80,35,'good')
                                constrain
create table food_menu1 (food_name varchar(20)not null,days varchar(20)not null,price int unique,eated_guys int not null ,
feedback varchar(25) primary key(food_name));
insert into food_menu1 values('dosa','monday',25,18,'good'),('idly','tuesday',10,23,'v_good'),
('pongal','wednesday',30,15,'better'),('idiyapam','thursday',20,22,'nice'),('fish','friday',80,35,'exellent'),
('briyani','saturday',100,39,'exellent')
select * from food_menu1
insert into food_menu1(food_name,days,price,eated_guys,feedback) values('bread','monday',26,18,'good')
alter table food_menu1 drop primary key;
USE [practise_01]
GO

/****** Object:  Index [PK__food_men__17CF3AA74F351866]    Script Date: 05-08-2021 09:45:21 ******/
ALTER TABLE [dbo].[food_menu1] DROP CONSTRAINT [PK__food_men__17CF3AA74F351866] WITH ( ONLINE = OFF )
GO
alter table food_menu1 add primary key(food_name);
alter table food_menu add primary key(food_name);
alter table food_menu add foreign key(food_name) references food_menu1(food_name);
create index idx_jj1 on food_menu(food_name) where food_name ='idly'
select * from idx_jj



