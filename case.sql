select distinct a.Account_type,a.Customer_id,a.Account_Number,
case 
    when a.balance_amount = 0 then b.transaction_amount else a.balance_amount end as bal_amt
from bank_account_details as a
inner join 
bank_account_transaction as b on
a.Account_Number=b.Account_Number 
where Account_type='Credit card' 


