-- EXCEPT -- used to combine result sets of 2 queries and get the distinct results from 1st query not present in results of 2nd query

-- good to know
-- both queries must have same number of columns
-- order of columns and their types must match

-- basic except query
select * from t1
except
select * from  t2

-- practice queries
-- get tracks who have not had any sales
select t.TrackId, t.Name from tracks as t
except 
select distinct i.TrackId, t.name from invoice_items i 
join tracks t on t.trackid = i.trackid