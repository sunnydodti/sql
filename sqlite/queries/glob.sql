-- GLOB (filtering rows based on a pattern)
-- similar to LIKE but uses Unix file globbing syntax for pattern matching

-- 2 options
--      * (zero or more characters)
--      ? (exactly one character)


-- good to know
-- GLOB is case sensitive
-- no escape characters
-- can use list of characters [] to match multiple 
-- can use [^] to negate a list of characters

-- basic glob usage
-- *
select * from tracks where name glob '*Night';
select * from tracks where name glob '*sun*';
-- ?
select * from tracks where name glob '?lack ????t'

-- * and ?
select * from tracks where name glob '?ight*'

-- []
select * from tracks where name glob '[0-9]*'; -- string with any number
select * from tracks where name glob '[A-C]*'; -- string with A, B, C

-- [^]
select * from tracks where name glob '[^1-9]*'; -- string without any number
