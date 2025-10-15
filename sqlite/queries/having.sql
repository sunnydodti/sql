-- HAVING - specifies a search condition for a group or an aggregate

-- good to know
-- often used with GROUP BY clause


-- practice queeries
--  find the numbers of tracks for the album with id 1
select
    albums.AlbumId,
    count(trackid) as TrackCount
from 
    tracks
    inner join albums using (albumid)
group by 
    albums.AlbumId
having 
    albums.AlbumId = 1;

-- find albums that have the number of tracks between 18 and 20
select
    albums.AlbumId,
    albums.Title,
    count(trackid) as TrackCount
from 
    tracks
    inner join albums using (albumid)
group by 
    albums.AlbumId
having 
    count(tracks.TrackId) between 18 and 20
order by
    TrackCount

-- find albums that have the total length greater than 60,000,000 milliseconds
select
    albums.AlbumId,
    albums.Title,
    sum(tracks.Milliseconds) as length
from 
    tracks
    inner join albums using (albumid)
group by 
    albums.AlbumId
having 
    length > 60000000
order by
    length