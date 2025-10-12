-- LIKE (filtering rows based on a pattern)
-- 2 options 
--      % (zero or more characters) 
--      _ (exactly one character)

-- good to know
-- like is case insensitive
-- setting the PRAGMA case_sensitive_like to true makes like case sensitive
-- LIKE operator is case sensitive for Unicode characters that are not in the ASCII ranges
-- escape character is \ by default, can be changed using ESCAPE clause

-- basic like usage
-- %
select * from artists where name like '%ab%';
select * from artists where name like '%s';
select * from artists where name like 'z%';
-- _
select * from artists where name like 'ac_dc';
select * from artists where name like 'A__e_t';
-- % and _
select * from artists where name like '%C_r%';
select * from artists where name like '%a_c%';

-- using escape character
select * from test where s like '%\%%' escape '\'; -- matches strings that contain the % character
select * from test where s like '%10\%%' escape '\'; -- matches strings that contain the 10% substring

-- to remember
select 'A' like 'a'; -- true
select 'A' = 'a'; -- false
select "Ä" LIKE "ä"; -- false - not in ASCII range

-- practice queries
-- find the tracks whose names start with the Wild literal string
select * from tracks where name like 'Wild%';