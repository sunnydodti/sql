-- INNER JOIN - used to query related data from multiple tables

-- good to know:


-- query related data from both tracks and albums tables
-- only tracks that have a matching albumid in albums table will be shown
select 
    trackid, name, albumid, title
from 
    tracks 
    inner join albums on tracks.albumid = albums.albumid

select 
    trackid, 
    name, 
    tracks.albumid, 
    albums.albumid, 
    title
from 
    tracks 
    inner join albums on tracks.albumid = albums.albumid

-- query related data from tracks, albums & artists tables
select 
    trackid, 
    tracks.name,
    artists.name as artist, 
    albums.title as album
from 
    tracks 
inner join albums on tracks.albumid = albums.albumid    
inner join artists on artists.ArtistId = albums.ArtistId

-- get tracks, albums and artist name for Deep Purple
select 
    tracks.name,
    artists.name as artist, 
    albums.title as album
from 
    tracks 
    inner join albums on tracks.albumid = albums.albumid    
    inner join artists on artists.ArtistId = albums.ArtistId

where
    artists.name = 'Deep Purple'