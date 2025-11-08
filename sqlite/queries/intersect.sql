-- INTERSECT - used to combine results of 2 queries and get the distinct results from both the queries

-- good to know 
-- number of colums, their order and the respecitve data types must be same/comparable
-- get common results from 2 queries

-- basic query
select * from t1
intersect
select * from t2

-- practice queries
-- get customers who have invoices
select c.customerid, c.FirstName, c.LastName from customers c
intersect 
select i.CustomerId, c.FirstName, c.LastName from invoices i 
join customers c on c.customerid = i.CustomerId
