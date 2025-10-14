-- JOIN - used to combine rows from two or more tables based on a related column

-- good to know
-- types of joins: 
    -- INNER JOIN
    -- LEFT JOIN (LEFT OUTER JOIN)
    -- RIGHT JOIN (RIGHT OUTER JOIN)
    -- FULL OUTER JOIN (FULL JOIN)
    -- CROSS JOIN


-- practice queries
-- returns the album titles and the corresponding artist names
select
    albums.Title,
    artists.Name
from
    albums
    inner join artists on albums.ArtistId = artists.ArtistId;

-- retrieve the artist names and album titles
select
    al.Title,
    ar.Name
from
    artists ar
    left join albums al on al.ArtistId = ar.ArtistId;

-- find artists who don’t have any albums
select
    ar.Name,
    al.Title
from
    artists ar
    left join albums al on al.ArtistId = ar.ArtistId
where
    al.Title is null;