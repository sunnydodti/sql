-- distinct comes immedaitely after select
-- 1 column - discinct values from that column
-- multiple columns - distinct combinations of values from those columns

-- select distinct values from a column
select distinct albumid from tracks;

-- practice queries

-- show all the citie in the customers table
select distinct city from customers order by 1;

-- show all the combinations of cities & countries in the customers table