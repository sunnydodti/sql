-- GROUP BY - is used to arrange identical data into groups

-- good to know
-- often used with aggregate functions (COUNT, SUM, AVG, MAX, MIN)
-- GROUP BY clause comes after FROM and WHERE (if WHERE is used)

-- practice queries
-- finger count of tracks in each album
select 
    a.Title,
    count(t.TrackId) as Tracks
from 
    tracks t
    join albums a using (albumid)
group by 
    albumid
order by
    tracks desc

-- get total duration of tracks in each album
select 
    a.AlbumId,
    a.Title,
    sum(milliseconds)
from 
    tracks t
    join albums a using (albumid)
group by 
    albumid
order by
    3 

-- HAVING - is used to filter records that work on aggregated data
-- often used with GROUP BY clause

-- practice queries
-- get the albums that have more than 15 tracks
select 
    a.Title,
    count(t.TrackId) as TrackCount
from 
    tracks t
    join albums a using (albumid)
group by 
    albumid
having count(t.TrackId) > 15
order by
    TrackCount

-- get total length and bytes for each album
select 
    a.Title,
    count(t.TrackId) as TrackCount,
    sum(t.Milliseconds) as Length,
    sum(t.Bytes) as Size
from 
    tracks t
    join albums a using (albumid)
group by 
    albumid
order by
    TrackCount, Length, Size

-- return the album id, album title, maximum length, minimum length, and the average length of tracks in the tracks table
select 
    a.AlbumId,
    a.Title,
    max(t.Milliseconds) as Max,
    min(t.Milliseconds) as Min,
    round(avg(t.Milliseconds),2) as Avg
from 
    tracks t
    join albums a using (albumid)
group by 
    albumid
order by
    Avg

-- group tracks by media type and genre
select
    MediaTypeId,
    GenreId,
    count(trackid) as TrackCount
from 
    tracks
group by 
    MediaTypeId,
    GenreId
    

-- get invoices per year
select 
    strftime('%Y', invoicedate) as Year,
    count(invoiceid)
from invoices
group by 
    strftime('%Y', invoicedate)
order by
    Year desc