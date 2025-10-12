-- WHERE (optional) - conditional filtering for select statements
-- appears after FROM clause

-- operators: =, >, <, >=, <=, <>, !=
-- equal to - =
select * from invoices where billingcountry = 'USA';

-- greater than - >
select * from tracks where trackid > 100;

-- less than - <
select * from tracks where albumid < 5;

-- greater than or equal to - >=
select * from invoices  where invoicedate >= '2010';

-- less than or equal to - <=
select * from invoices  where invoicedate <= '2010';

-- not equal to - != or <>
select * from tracks where albumid <> 1; -- not equal to

-- logical operators:
-- and
select * from invoices where billingstate != 'TX' and billingcountry = 'USA'

-- or
select * from invoices where billingcountry = 'Brazil' or billingstate = 'CA';

-- between
select * from invoices where total between 5 and 10; -- between

-- in
select * from invoices where customerid in (10, 20, 30); -- in

-- like (pattern matching)
select * from tracks where name like '%love%' -- contains 'love'

-- practice queries
-- show all customers from Brazil
select * from customers where country = 'Brazil';

-- show all cities from Brazil
select distinct city from customers where country = 'Brazil';

-- show get tracks of the album 1 that have the length greater than 200,000 milliseconds
select * from tracks where albumid = 1 and milliseconds >= 200000;