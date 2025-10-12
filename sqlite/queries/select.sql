-- basic select
select 1+1; 

-- select multiple with alias
select 
    2+2 as four,
    3*3 as nine;

-- select all columns from a table
select * from tracks;

-- select specific columns from a table
select TrackId, Name, UnitPrice from tracks;