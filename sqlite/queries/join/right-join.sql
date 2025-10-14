-- RIGHT JOIN - used to query related data from multiple tables, including all records from the right table

-- good to know
-- returns all records from right table
-- returns matching records from left table, and null for non-matching records
-- RIGHT OUTER JOIN is the same as RIGHT JOIN
-- the table listed after RIGHT JOIN is the right table

-- USING clause can be used if the column names are the same in both tables

-- practice queries

-- use the RIGHT JOIN to retrieve all employees and their respective departments
select 
    employees.employee_name,
    departments.department_name
from 
    departments 
    right join employees using (department_id);

-- find all employees who do not have a department
select 
    employees.employee_name,
    departments.department_name
from 
    departments 
    right outer join employees using (department_id)
where departments.department_name is null;
