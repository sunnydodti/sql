-- IN (filtering rows based on a list of values)

-- basic in usage
select * from tracks where mediatypeid in (1, 2);
select * from tracks where mediatypeid not in (1, 2);

-- in with subquery
select * from tracks where albumid in (    
    select albumid from albums where artistid = 12
);