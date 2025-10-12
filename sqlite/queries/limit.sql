-- LIMIT (restricting the number of rows returned)

-- basic limit usage
select * from tracks limit 5;

-- good to know
select * from tracks limit 0; -- returns 0 rows
select * from tracks limit -1; -- returns all rows

-- OFFSET (skipping rows before starting to return rows)

-- basic offset usage
select * from tracks order by 1 asc limit 5 offset 5; -- skip first 5 rows and return next 5 rows
-- shorter syntax for limit with offset
select * from tracks order by 1 asc limit 10,5; -- so odd - in shorter syntax, limit comes after offset

-- points to remember
-- use order by with limit and offset to ensure consistent results
-- offset without limit is not allowed

-- practice queries

-- get the top 10 biggest tracks by size
select * from tracks order by Bytes desc limit 10;

-- get the 5 shortest tracks,
select * from tracks order by Milliseconds limit 5

-- second-longest track, the third smallest track
select * from tracks order by Milliseconds limit 2, 1; -- 3rd smallest
select * from tracks order by Milliseconds desc limit 1,1; -- 2nd longest