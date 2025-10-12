-- OR (conditional filtering for select statements)

-- basic or operator
select 1 = 1 or 2 = 3; 
select 1 or 0; 
select 1 or null;

-- practice queries
-- get the invoices whose billing city is either New York or London
select * from invoices where billingcity = 'New York' or billingcity = 'London' order by billingcity;

