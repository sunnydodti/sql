-- UNION - combines the result sets multiple queries into a single result set

-- good to know:
-- Each SELECT statement within the UNION must have the same number of columns
-- by default UNION removes duplicats rows
-- use UNION ALL to include duplicate rows

-- rules for UNION
-- queries must have same number of columns
-- columns must have conpatible data types
-- column names come from 1st query
-- group by and having - if used will be applied to each query not the final result
-- order by - if used will be applied to the final result not individual query

-- basic union query
select * from t1
union
select * from t2;

-- union of 2 queries with duplicates
select * from t1
union all
select * from t2

-- combine the names of employees and customers into a single list
select 
    c.FirstName, c.LastName 
from 
    customers as c
union
select 
    e.FirstName, e.LastName 
from 
    employees as e

-- combine the names of employees and customers into a single list with type identifier
select 
    c.FirstName, 
    c.LastName,
    'customer' as Type
from 
    customers as c
union
select 
    e.FirstName, 
    e.LastName,
    'employee' as Type
from 
    employees as e
order by Type desc