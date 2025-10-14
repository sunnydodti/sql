-- LEFT JOIN - used to query related data from multiple tables, including all records from the left table

-- good to know:
-- returns all records from left table
-- returns matching records from right table, and null for non-matching records
-- LEFT OUTER JOIN is the same as LEFT JOIN
-- the table listed before LEFT JOIN is the left table


-- practice queries
-- get all artists and their albums (if any)
select 
    artists.name as artist, 
    albums.title as album
from 
    artists  
left join albums on artists.ArtistId = albums.ArtistId;


-- find artists who do not have any albums
select 
    artists.name as artist, 
    albums.title as album
from 
    artists  
left join albums on artists.ArtistId = albums.ArtistId
where album is null