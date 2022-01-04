use sql_exam
drop table customer;

CREATE TABLE Customer (
    custemor_id INT,
   cust_name VARCHAR(6),
    city NVARCHAR(8),
    grade INT,
    salesman INT
);
INSERT INTO Customer VALUES
    (3002,N'roshan',N'pune',100,5001),
    (3007,N'sameer',N'pune',200,5001),
    (3005,N'josh',N'mumbai',200,5002),
    (3008,N'ajeem',N'nagpur',300,5002),
    (3004,N'ravi',N'jaipur',300,5006),
    (3009,N'pooja',N'kolkata',100,5003),
    (3003,N'atul',N'banglore',200,5007),
    (3001,N'tom',N'delhi',400,5005);
select* from Customer

CREATE TABLE Orders (
    [ord_no] INT,
    [purch_amt] NUMERIC(6, 2),
    [ord_date] NVARCHAR(12),
    [customer_id] INT,
    [salesman_id] INT
);
select * from orders
INSERT INTO Orders VALUES
    (70001,150.5,N'05-10-2012',3005,5002),
    (70009,270.65,N'2012-09-10  ',3001,5005),
    (70002,65.26,N'05-10-2012',3002,5001),
    (70004,110.5 ,N'2012-08-17  ',3009,5003),
    (70007,948.5,N'10-09-2012',3005,5002),
    (70005,2400.6,N'27-07-2012',3007,5001),
    (70008,5760,N'10-09-2012',3002,5001),
    (70010,1983.43,N'10-10-2012',3004,5006),
    (70003,2480.4,N'10-10-2012',3009,5003),
    (70012,250.45,N'27-06-2012',3008,5002),
    (70011,75.29,N'17-08-2012',3003,5007),
    (70013,3045.6,N'25-04-2012',3002,5001);

CREATE TABLE Salesman (
    [salesman_id] INT,
    [name] NVARCHAR(6),
    [city] NVARCHAR(8),
    [commision] NUMERIC(3, 2)
);
select* from Salesman
INSERT INTO Salesman VALUES
    (5001,N'ashish',N'mumbai',0.15),
    (5002,N'amol',N'amritsar',0.13),
    (5005,N'ritesh',N'delhi',0.11),
    (5006,N'rajesh',N'pune',0.14),
    (5003,N'omkar',N'jaipur',0.12),
    (5007,N'abhi',N'nagpur',0.13);
select c.cust_name,c.grade,Salesman.salesman_id from Customer as c inner join orders on
c.Custemor_id = orders.customer_id
inner join salesman on orders.salesman_id=Salesman.salesman_id
select* from orders;  
select* from Salesman
(select max(commision)from salesman)
select * from orders as o inner join salesman as s
on o.salesman_id =s.salesman_id where s.commision =(select max(commision) from salesman);
select  o.ord_no,o.purch_amt,o. ord_date,o. ord_date, 
o.salesman_id,s.city from orders as o inner join salesman as s 
on o.salesman_id =s.salesman_id where s.city='nagpur'; 

SELECT ord_date,sum(s.commision)*.15 as new_comission , SUM(purch_amt)*.15as new_purch_amt FROM orders 
inner join salesman as s on orders.salesman_id =s.salesman_id GROUP BY ord_date 
ORDER BY ord_date desc;

select ord_no, purch_amt, ord_date, ord_date, salesman_id from orders
where purch_amt > (select avg(purch_amt) from orders);

select top 1 purch_amt from 
(select distinct top 3 purch_amt from orders order by purch_amt desc) as orders
order by purch_amt;

CREATE TABLE BANK_ACCOUNT_TRANSACTION (
    [Account_Number] NVARCHAR(19),
    [Transaction_amount] INT,
    [Transcation_channel] NVARCHAR(14),
    [Province] NVARCHAR(2),
    [Transaction_Date] DATETIME
);
DROP TABLE BANK_ACCOUNT_TRANSACTION
INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES
    (N'4000-1956-3456',-2000,N'ATM withdrawl',N'CA','2020-01-13 00:00:00'),
    (N'4000-1956-2001',-4000,N'POS-Walmart',N'MN','2020-02-14 00:00:00'),
    (N'4000-1956-2001',-1600,N'UPI transfer',N'MN','2020-01-19 00:00:00'),
    (N'4000-1956-2001',-6000,N'Bankers cheque',N'CA','2020-03-23 00:00:00'),
    (N'4000-1956-2001',-3000,N'Net banking',N'CA','2020-04-24 00:00:00'),
    (N'4000-1956-2001',23000,N'cheque deposit',N'MN','2020-03-15 00:00:00'),
    (N'5000-1700-6091',40000,N'ECS transfer',N'NY','2020-02-19 00:00:00'),
    (N'5000-1700-7791',40000,N'ECS transfer',N'NY','2020-02-19 00:00:00'),
    (N'4000-1956-3401',8000,N'Cash Deposit',N'NY','2020-01-19 00:00:00'),
    (N'4000-1956-5102',-6500,N'ATM withdrawal',N'NY','2020-03-14 00:00:00'),
    (N'4000-1956-5698',-9000,N'Cash Deposit',N'NY','2020-03-27 00:00:00'),
    (N'4000-1956-9977',50000,N'ECS transfer',N'NY','2020-01-16 00:00:00'),
    (N'9000-1700-7777-4321',-5000,N'POS-Walmart',N'NY','2020-02-17 00:00:00'),
    (N'9000-1700-7777-4321',-8000,N'Shopping Cart',N'MN','2020-03-13 00:00:00'),
    (N'9000-1700-7777-4321',-2500,N'Shopping Cart',N'MN','2020-04-21 00:00:00'),
    (N'5800-1700-9800-7755',-9000,N'POS-Walmart',N'MN','2020-04-13 00:00:00'),
    (N'5890-1970-7706-8912',-11000,N'Shopping Cart',N'NY','2020-03-12 00:00:00');

CREATE TABLE Bank_Account_Details (
    [Customer_id] INT,
    [Account_Number] NVARCHAR(19),
    [Account_type] NVARCHAR(18),
    [Balance_amount] INT,
    [Account_status] NVARCHAR(8),
    [Relationship_type] NVARCHAR(1)
);
INSERT INTO Bank_Account_Details VALUES
    (123001,N'4000-1956-3456',N'SAVINGS',200000,N'ACTIVE',N'P'),
    (123001,N'5000-1700-3456',N'RECURRING DEPOSITS',9400000,N'ACTIVE',N'S'),
    (123002,N'4000-1956-2001',N'SAVINGS',400000,N'ACTIVE',N'P'),
    (123002,N'5000-1700-5001',N'RECURRING DEPOSITS',7500000,N'ACTIVE',N'S'),
    (123003,N'4000-1956-2900',N'SAVINGS',750000,N'INACTIVE',N'P'),
    (123004,N'5000-1700-6091',N'RECURRING DEPOSITS',7500000,N'ACTIVE',N'S'),
    (123004,N'4000-1956-3401',N'SAVINGS',655000,N'ACTIVE',N'P'),
    (123005,N'4000-1956-5102',N'SAVINGS',300000,N'ACTIVE',N'P'),
    (123006,N'4000-1956-5698',N'SAVINGS',455000,N'ACTIVE',N'P'),
    (123007,N'5000-1700-9800',N'SAVINGS',355000,N'ACTIVE',N'P'),
    (123007,N'4000-1956-9977',N'RECURRING DEPOSITS',7025000,N'ACTIVE',N'S'),
    (123007,N'9000-1700-7777-4321',N'Credit Card',0,N'INACTIVE',N'P'),
    (123007,N'5900-1900-9877-5543',N'Add-on Credit Card',0,N'ACTIVE',N'S'),
    (123008,N'5000-1700-7755',N'SAVINGS',0,N'INACTIVE',N'P'),
    (123006,N'5800-1700-9800-7755',N'Credit Card',0,N'ACTIVE',N'P'),
    (123006,N'5890-1970-7706-8912',N'Add-on Credit Card',0,N'ACTIVE',N'S');

CREATE TABLE Bank_customer (
    [salesman_id] INT,
    [name] NVARCHAR(6),
    [city] NVARCHAR(8),
    [commision] NUMERIC(3, 2)
);
INSERT INTO Bank_customer VALUES
    (5001,N'ashish',N'mumbai',0.15),
    (5002,N'amol',N'amritsar',0.13),
    (5005,N'ritesh',N'delhi',0.11),
    (5006,N'rajesh',N'pune',0.14),
    (5003,N'omkar',N'jaipur',0.12),
    (5007,N'abhi',N'nagpur',0.13);



SELECT * from Bank_Account_Details
SELECT* FROM BANK_ACCOUNT_TRANSACTION

select bad.Customer_id,bad.Account_Number,bad.Balance_amount,
 case bad.balance_amount when  0 then bat.transaction_amount end balance  from bank_account_details 
inner join 
bank_account_transaction as bat on
bad.Account_Number=bat.Account_Number 
where account_type= credit_card;
(select case when balence_amount = 0 then transaction_amount  from bank_account_transaction <>0);

select customer_id, account_number , balance_amount from bank_account_details
(select case when balence_amount = 0 then transaction_amount  from bank_account_transaction)
as bank_account_details


from bank_account_transaction 
select bad.customer_id,bad_account_number,bad_balance_amount, 
bat. transaction_amount from 
Bank_Account_Details as bad inner join bank_account_transaction ad bat 
on bad.account_number = bat.account_number  where 

select a.customer_id,a.account_number,a.balance_amount,b.transaction_amount,b.transaction_date from Bank_Account_Details as a full outer join bank_account_transaction as b
on a.account_number=b.account_number where month(b.transaction_date) in (3,4)

select * from Bank_Account_Details as a full outer join bank_account_transaction as b
on a.account_number=b.account_number where month(b.transaction_date) in (3,4)

select a.Account_Number,a.
transaction_amount,a.Transaction_Date,
b.Balance_amount
from bank_account_transaction as a inner join  bank_account_details as b on a.Account_Number =b.Account_Number
where month(transaction_date)not in (3);



SELECT* FROM BANK_ACCOUNT_TRANSACTION

select a.Account_Number,a.
transaction_amount,a.Transaction_Date,
b.Balance_amount
from bank_account_transaction as a inner join  bank_account_details as b on a.Account_Number =b.Account_Number
where month(transaction_date)not in (3);

b.Customer_id,b.Account_Number,b.Account_type,b.Balance_amount,b.Account_status,
b.Relationship_type	Customer_id,
a.Account_Number,a.Transaction_amount,a.Transcation_channel,a.Province,a.Transaction_Date













