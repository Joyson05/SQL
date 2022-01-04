use bank_assignment;
select product,sum(quantity) as total_quantity from Bank_Inventory_pricing 
where month >=3
group by product
having sum(quantity)>5;

select* from Bank_Inventory_pricing;
alter table bank_inventory_pricing alter column price ;

select product,quantity,month,count(*) as total_count from Bank_Inventory_pricing 
 where estimated_sale_price < purchase_cost
  group by product,quantity,month;
select product,sum (estimated_sale_price) as E_s_p from  Bank_Inventory_pricing 
 group by product,estimated_sale_price
  order by Estimated_sale_price desc ;
select sum (Estimated_sale_price) from Bank_Inventory_pricing
 group by Estimated_sale_price 
  order by Estimated_sale_price desc;

drop table Bank_Inventory_pricing;
 
CREATE TABLE Bank_Inventory_pricing (
	Product varchar(50) NULL,
	Quantity int NULL,
	Price int NULL,
	purchase_cost int NULL,
	Estimated_sale_price int NULL,
	Month int NULL);
	
INSERT INTO Bank_Inventory_pricing
           (Product,
            Quantity,
            Price,
           purchase_cost,
           Estimated_sale_price,
           Month)
     VALUES
          (
'BusiCard',	1,	4000.99 ,NULL,	  3500,	   2),
('PayCard' ,2,	300.45	,8000.87, 9000.56, 1),
('PayCard' ,2,	800.45	,5000.8	, 8700.56, 1),
('PayCard' ,2,  500.45	,6000.47, 7400.56, 1),
('PayPoints',4,	390.87,	 7000.67, 6700.56, 2),
('SmartPay',	5,	290.69	,5600.77, 3200.12 ,1),
('MaxGain',  3,  NULL	,4600.67, 3233.11, 1),
('MaxGain' , 6,	220.39	,4690.67, 2000,	   2),
('SuperSave',7,	290.3	,NULL ,	  3200.13 ,1),
('SuperSave',6,	560.3,	 NULL	 ,4200.13 ,1),
('SuperSave',6,	NULL	,2600.77, 3200.13 ,2),
('SuperSave',9,	NULL	,5400.71, 9200.13 ,3),
('SmartSav',	3,	250.89	,5900.97, NULL	,  1),
('SmartSav',	3,	250.89	,5900.97, 8999.34, 1),
('SmartSav',	3,	250.89	,NULL,	  5610.82 ,2),
('EasyCash',	3,	250.89,  NULL,	  5610.82 ,1),
('EasyCash',	3,	250.89	,NULL,	  5610.82, 2),
('EasyCash',	3,	250.89	,NULL,	  5610.82, 3),
('BusiCard',	1,	3000.99	,NULL,	  3500,	   3),
('BusiCard',	1,	4000.99	,NULL,	  3500,	   2),
('BusiCard',	1,	3000.99	,NULL,	  3500,	   3);

SELECT DISTINCT TOP 1 Estimated_sale_price FROM Bank_Inventory_pricing 
 ORDER BY Estimated_sale_price DESC;
SELECT product ,count(product) as No_of_products from Bank_Inventory_pricing 
 group by product 
  having count(product)>=2;
select * from Bank_Inventory_pricing
create view  bank_details02
 as
 select * from Bank_Inventory_pricing
   where Product = 'paypoints' and quantity > 2;
 select* from bank_details02 

 insert into bank_details02 (product,quantity,price) values( 'paypoints',3,410);

 select Branch,banker,Product from Bank_branch_PL group by Branch,banker,Product;
 create view min_profit02 as
 select product,branch,month,sum(revenue-cost)as real_profit from Bank_branch_PL 
 where Estimated_profit < (select sum(revenue-cost) from bank_branch_pl) 
 group by product,branch,month;
 select * from min_profit02
alter table Bank_Inventory_pricing  alter column Quantity varchar(50);
select  top 1 product,branch,month,min(real_profit) as min_profit from min_profit02
 group by product,branch,month
  order by min_profit;
select * from Bank_branch_PL 
select * from min_profit02
update Bank_Inventory_pricing set quantity = 01 where product ='busicard';
select product,cost-(cost * 30/100) from Bank_branch_PL where cost-(cost * 30/100); 
alter table bank_branch_pl add reduced_cost int;
update Bank_branch_PL set reduced_cost=(cost-(cost * 30/100));
select * from Bank_Inventory_pricing
 where Product not in ('busicard','supersave');
select * from Bank_Inventory_pricing 
 where price not in
 (select price from bank_inventory_pricing 
     where price between 220 and 300);
 
select (cost * 0.3) as cost, product, (revenue - (0.3 * cost)) as calculated_profit,
estimated_profit from bank_branch_pl
 where (revenue - (0.3 * cost)) > estimated_profit;

 select top 5 product from Bank_Inventory_pricing 
  group by Product 
   having count(*) = 1;

update Bank_Inventory_pricing set price=(price +15/100)
 where quantity > 3;
select * from Bank_Inventory_pricing 
select round(price,-1) from Bank_Inventory_pricing

update Bank_Inventory_pricing set price=price + 100 
  where quantity > 3 
select price as new_price from bank_inventory_pricing
         
select price as new_price from bank_inventory_pricing
select Customer_id from Bank_Account_Details  
 where account_type = 'savings'
          ( select Customer_id from Bank_Account_Details 
		        where account_type = 'Add-on_Credit_Card'and account_type = 'Credit cards' )
 group by Customer_id;
 select * from Bank_Account_Details

 select  a.customer_id,a.Account_type from Bank_Account_Details as a, Bank_Account_Details as b
  where a.Customer_id = b.customer_id and a.account_type = 'credit_card'
     group by a.Customer_id,a.Account_type;
 select  customer_id,Account_type from Bank_Account_Details  
  where  account_type = 'Credit cards' and account_type =  'Add-on_Credit_Card'
   group by Customer_id,Account_type;

select a.customer_id,a.account_number,a.account_type,b.transaction_amount
 from Bank_Account_Details as a inner join BANK_ACCOUNT_TRANSACTION as b 
  on a.Account_Number=b.Account_Number;

select a.customer_id,a.account_number,a.account_type,b.transaction_amount
 from Bank_Account_Details as a,BANK_ACCOUNT_TRANSACTION as b
create view tot as
select a.employee_id ,a. first_name ,a.last_name phone_number ,a.salary,a. job_id 
from employee_details as a
inner join Department_Details as b on a.employee_id = b.employee_id
where b.manager_id=60;

select * from employee_details 
select employee_id , first_name ,last_name phone_number ,salary, job_id 
from employee_details 
 where job_id <> 'it_prog';

 create table emp_dept (employee_id int,first_name varchar(20),phone_number varchar(20)
                        ,salary int,job_id varchar(20));
insert into emp_dept (employee_id ,first_name,phone_number,salary,job_id)
 select employee_id ,first_name,phone_number,salary,job_id from tot;

select * from emp_dept




 select count( a.transaction_amount) as no_of_transaction from BANK_ACCOUNT_TRANSACTION as a 
  inner join Bank_Account_Details as b on  a.Account_Number=b.Account_Number;
   group by ;
   














