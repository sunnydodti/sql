-- SELF JOIN - a regular join, but the table is joined with itself

-- good to know
-- useful for hierarchical data or comparing rows within the same table
-- || is used to concatenate strings in SQLite
-- use alias to differentiate between the two instances of the same table

-- practice queries
-- get the information on who is the direct report of whom
select 
    e.FirstName,
    e.LastName,
    m.FirstName as ReportsTo
from employees e
    inner join employees m on e.EmployeeId = m.ReportsTo;

select 
    e.FirstName || ' ' || e.LastName as Employee,
    m.FirstName || ' ' || m.FirstName as ReportsTo
from employees e
    inner join employees m on e.EmployeeId = m.ReportsTo;
    
select * from employees;

-- get the information of all employees and their respective managers if any
select 
    e.FirstName, e.LastName as Employee,
    m.FirstName || ' ' || m.FirstName as Reports
from employees e
    left join employees m on m.EmployeeId = e.ReportsTo

--  find the employees located in the same city
select distinct
    e.City,
    e.FirstName || ' ' || e.LastName
from 
    employees e
    inner join employees s 
        on e.City = s.City
        and s.FirstName <> e.FirstName 
        and s.LastName <> e.LastName;
        

