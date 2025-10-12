-- order by clause

-- asc - ascending order (default)
select * from tracks order by mediatypeid asc;

-- desc - descending order
select * from tracks order by composer desc;

-- order by multiple columns (this is how you format the query)
select 
    * 
from 
    tracks 
order by 
    mediatypeid asc,
    composer desc;

-- order by column position
select * from tracks order by 1 desc;

-- order by with unselected column
select trackid, name from tracks order by mediatypeid desc;

-- order by media type and then by milliseconds
select 
    trackid, 
    name, 
    composer,
    albumid,
    unitprice,
    bytes
from 
    tracks
order by 
    albumid,
    unitprice,
    bytes;

