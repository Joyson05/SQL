CREATE TABLE my_sales (month varchar(15), prod_name  VARCHAR(15), sales INT );

INSERT INTO my_sales VALUES('Jan', 'Fruits', 45000),
				('Jan', 'Vegetables', 67000),
				('Jan', 'Dairy', 55000),
				('Feb', 'Fruits', 42000),
				('Feb', 'Vegetables', 32000),
				('Feb', 'Dairy', 52000),
				('March', 'Fruits', 61000),
				('March', 'Vegetables', 43000),
				('March', 'Dairy', 92000);
use practise_01
select * from my_sales
select max(sales)from my_sales;select prod_name from my_sales 
select prod_name, max(sales) sales from my_sales group by prod_name
select month,max(sales) sales from my_sales group by month
select month,sum(sales) sales from my_sales group by month
select prod_name, min(sales) sales from my_sales group by prod_name
select prod_name, count(sales) sales from my_sales group by prod_name
CREATE TABLE my_sales (month varchar(15), prod_name  VARCHAR(15), sales INT );

INSERT INTO my_sales VALUES('Jan', 'Fruits', 45000),
				('Jan', 'Vegetables', 67000),
				('Jan', 'Dairy', 55000),
				('Feb', 'Fruits', 42000),
				('Feb', 'Vegetables', 32000),
				('Feb', 'Dairy', 52000),
				('March', 'Fruits', 61000),
				('March', 'Vegetables', 43000),
				('March', 'Dairy', 92000);
select * from my_sales
select max(sales)from my_sales;select prod_name from my_sales 
select prod_name, max(sales) sales from my_sales group by prod_name
select month,max(sales) sales from my_sales group by month
select month,sum(sales) sales from my_sales group by month
select prod_name, min(sales) sales from my_sales group by prod_name
select prod_name, count(sales) sales from my_sales group by prod_name
select prod_name, AVG(sales) sales from my_sales group by prod_name





