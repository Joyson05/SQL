select lower('SDRTYU');
select left('feydghss',2)
select locate ('a','locatio') as ds
select SUBSTRING ('feydghss',2,3)
select count(price) as price from food_menu
 SELECT CEILING(25.75)
 SELECT FLOOR(25.78)
 select 10 div 5;\
 SELECT POWER(4, 2);
 SELECT FORMAT(,1);
 SELECT TRUNCATE (345.156, 0);
                         DATE FUCTIONS
 SELECT ADDDATE ("2017-06-15", INTERVAL 10 DAY);  
 SELECT ADDTIME (2017-06-15 09:34:21, "2");
 SELECT GETDATE();
 SELECT CURRENT ()
 SELECT SYSDATETIME ( );
 SELECT DATENAME(year,'1993-04-05')  
use practise_01;
create table dates (name varchar(20),date date,day varchar(20))
insert into dates values('jj','1998-03-05','tuesday'),('kk','1932-06-09','monday'),('ee','1989-04-12','thursday'),('rr','2005-08-10','wednesday');
select * from dates
SELECT  name,DATENAME (year,date) as only_year from dates
select DATEADD(YEAR,1,date) as year_inc from dates
drop table dates
SELECT month(date) as only_year from dates
SELECT year(date) as only_year from dates
SELECT day(date) as only_year from dates
CREATE TABLE dbo.Duration  
    (startDate datetime2, endDate datetime2);  
    
INSERT INTO dbo.Duration(startDate, endDate)  
    VALUES ('2007-05-06 12:10:09', '2007-05-07 12:10:09');  
    
SELECT DATEDIFF(day, startDate, endDate) AS 'Duration'  
    FROM dbo.Duration; 

IF ISDATE('2009-05-12 10:19:41.177') = 1  
    SELECT 'VALID';  
ELSE  
    SELECT 'INVALID';  
SELECT HOUR("2017-06-20 09:34:00");
SELECT EXTRACT(MONTH FROM "2017-06-15");
SELECT BIN(15);
select name,
case name
     when 'jj' then'nn'
     else name 
	 end as  bot
	 from dates;
select * from dates order by case name
                                       when 'jj' then day
       							       else name
									   end
SELECT CONVERT(150, CHAR);									   
