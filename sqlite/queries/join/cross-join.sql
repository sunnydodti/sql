-- CROSS JOIN - used to query all combinations of rows from two or more tables

-- good to know
-- returns the Cartesian product of rows from tables involved in the join 
-- no passing ON or USING clause with INNER JOIN, LEFT JOIN or RIGHT JOIN results in a CROSS JOIN

-- ways to write a CROSS JOIN
-- 1. using CROSS JOIN 
select * from departments cross join employees;
-- 2. using INNER JOIN without ON or USING clause
select * from departments inner join employees;
-- 3. using LEFT JOIN without ON or USING clause
select * from departments left join employees;
-- 4. using RIGHT JOIN without ON or USING clause
select * from departments right join employees;
-- 5. using JOIN without ON or USING clause
select * from departments join employees;
-- 6. using comma seperated tables
select * from departments, employees;


-- practice queries
-- return a complete deck of cards data
select 
    * 
from 
    suits 
    cross join ranks