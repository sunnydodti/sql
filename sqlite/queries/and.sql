-- AND (conditional filtering for select statements)

-- basic and operator
select 1 = 1 and 2 = 2;
select 1 and 10; -- any non-zero number is true
select 1 and null; -- null is unknown
select null and false; -- false and anything is false

-- practice queries
-- get the invoices whose billing city is New York and Total is greater than 5
select * from invoices where billingcity = 'New York' and total > 5;

-- get the invoices whose Total is greater than 5 and billing city is either New York or London
select 
    * 
from 
    invoices 
where 
    total > 5 
    and (
        billingcity = 'New York' 
        or billingcity = 'London'
    )