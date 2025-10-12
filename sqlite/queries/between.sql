-- BETWEEN (filtering rows within a range)

-- good to know
-- between - includes the boundary values
-- not between - excludes the boundary values
-- the lower value must be less than or equal to the upper value

-- basic between usage
select * from tracks where mediatypeid between 1 and 2;
select * from tracks where mediatypeid not between 5 and 10 order by 4 desc

-- between with dates
select * from invoices where invoicedate between '2009-01' and '2010-12'  order by 3 desc;
select * from invoices where invoicedate not between '2009-01-01' and '2009-12-31'  order by 3;