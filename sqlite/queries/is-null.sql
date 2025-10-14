-- IS NULL / IS NOT NULL

-- null indicates absence of a value, not equal to anything, not even itself

-- find all tracks that do not have a composer
select trackid, name from tracks where composer is null;

-- find all tracks that have a composer
select trackid, name from tracks where composer is not null;