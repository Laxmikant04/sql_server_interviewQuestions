

--date time to date
CAST('datetime' As Date)

-- get DAY from date/datetime
DAY(GETDATE())

-- get month from date/datetime
MONTH(GETDATE())

-- get year from date/datetime
YEAR(GETDATE())

-- add/substract  from date/date
DATEADD(DAY,1,GETDATE())  --will add one to current date


---date diff
 DATEDIFF(MONTH,HIREDATE,GETDATE())