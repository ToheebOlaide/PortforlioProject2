

select Year, count(Year)
from LicensedDriver
group by Year
order by Year

select max(cast(Year as int))
from LicensedDriver
group by Year 

select year, cohort, state, gender
from LicensedDriver
where Gender= 'male'
order by year desc


select year, cohort, state, gender
from LicensedDriver
where Gender= 'female'
and state = 'florida'
and year = '2018'
--and cohort > '30'
order by year desc


select *
from LicensedDriver

select year, gender, cohort, state, Drivers
from LicensedDriver
where Gender= 'female'
and state = 'florida'
and year = '2018'
and cohort > '30'
order by year desc


select year, gender, cohort, state, Drivers
from LicensedDriver
where Gender= 'female'
and state = 'florida'
and year = '2018'
and cohort <> '30'
order by year desc

select year, gender, cohort, state, Drivers
from LicensedDriver
where Gender= 'female'
and state = 'florida'
and year = '2018'
and cohort = '30-34'
order by year desc


select *
from LicensedDriver
order by year desc

--All Drivers in Florida in the year 1994

select year, gender, Drivers
from LicensedDriver
where state = 'florida'
and year = 1994
order by year desc

select year, gender, Drivers
from LicensedDriver
where state like'f%'
and year = 1994
order by year desc

select year, gender, state, Drivers
from LicensedDriver
where state like'f%'
and year = 1994
order by year desc


select year, gender, state, Drivers
from LicensedDriver
where state like'%f%'
and year = 1994
order by year desc


--All Drivers in Florida in the year 2018

select year, gender, Drivers
from LicensedDriver
where state = 'florida'
and year = 2018
order by year desc

select year, gender, state, Drivers
from LicensedDriver
where state like'%f%'
and year = 2018
order by year desc


--All Drivers in California in the year 1994

select year, gender, state, Drivers
from LicensedDriver
where state like'%c%'
and year = 2018
order by year desc

select year, gender, state, Drivers
from LicensedDriver
where state like'c%'
and year = 2018
order by year desc

select year, gender, state, Drivers
from LicensedDriver
where state like 'california'
and year = 1994
order by year desc


---compare male drivers in 2014 and 2012 in california

select year, gender , state, drivers
from LicensedDriver
where state = 'california'
and year = 2014
and gender = 'male'

select year, gender , state, drivers
from LicensedDriver
where state = 'california'
and year = 2014
and gender = 'male'

select year, gender , state, drivers
from LicensedDriver
where state = 'california'
and year = 2014
and gender = 'female'

select year, gender , state, drivers
from LicensedDriver
where state = 'california'
and year = 2014
--and gender = 'male'

--Total drivers in all States

select year,  max(drivers) as totaldrivers
from LicensedDriver
--where state = 'california'
group by year
order by year desc

--Total male drivers in all States

select year, gender, max(drivers) as totaldrivers
from LicensedDriver
where gender = 'male'
group by year, gender
order by year 

--Total female drivers in all States

select year, gender, max(drivers) as totaldrivers
from LicensedDriver
where gender = 'female'
group by year, gender
order by year desc

--Total drivers in California

select year,  max(drivers) as totaldrivers
from LicensedDriver
where state = 'california'
group by year
order by year desc

--Total drivers in California showing gender

select year, gender, max(drivers) as totaldrivers
from LicensedDriver
where state = 'california'
group by year, gender
order by year desc

--Total drivers in California showing male gender

select year, gender, max(drivers) as totaldrivers
from LicensedDriver
where state = 'california'
and gender = 'male'
group by year, gender
order by year desc

--Total drivers in California showing male gender

select year, gender, max(drivers) as totaldrivers
from LicensedDriver
where state = 'california'
and gender = 'female'
group by year, gender
order by year desc

--Total drivers in California in 2018

select year, gender, max(drivers) as totaldrivers
from LicensedDriver
where state = 'california'
and year = '2018'
group by year, gender
order by year desc

--Total male drivers in California in 2018

select year, gender, max(drivers) as totaldrivers
from LicensedDriver
where state = 'california'
and year = '2018'
and gender = 'male'
group by year, gender
order by year desc

--Total female drivers in California in 2018

select year, gender, max(drivers) as totaldrivers
from LicensedDriver
where state = 'california'
and year = '2018'
and gender = 'female'
group by year, gender
order by year desc


select cohort
, Case when cohort = 'under 16' then 'young' 
       when cohort = '16' then 'young'
	   when  cohort = '17' then 'young'
	   when  cohort = '18' then 'young'
	   when  cohort = '19' then 'young'
	   when  cohort = '20' then 'young'
	   when  cohort = '21' then 'adult'
	   when  cohort = '22' then 'adult'
	   when  cohort = '23' then 'adult'
	   when  cohort = '24' then 'adult'
	   when  cohort = '25-29' then 'adult'
	   else cohort 
	   end
from LicensedDriver


--Percentage

select year, cohort, state, drivers, (cohort/drivers) as DriversPercentage
, cast(drivers as nvarchar(255)) CastedValue
from LicensedDriver
--where state = 'california'
--where year = 2017
--and cohort > '22'
order by year desc

----OR

select year, cohort, state, drivers, (cohort/drivers) as DriversPercentage
, case when  ISNUMERIC((drivers))=Drivers
          then CAST(Drivers AS nvarchar(255)) else Drivers end AS CastedValue
from LicensedDriver
--where state = 'california'
--and cohort > '22'
order by year DESC


select year, state, cohort, drivers

from LicensedDriver
--where state = 'california'
--where year = 2017
where cohort > '22'
order by year desc





--SELECT
          --case when  ISNUMERIC((drivers))=Drivers
          --then CAST(Drivers AS nvarchar(255)) else Drivers end AS CastedValue
     --FROM LicensedDriver


--SELECT
--cast(drivers as nvarchar(255))
--from LicensedDriver


UPDATE LicensedDriver 
SET Cohort = CONVERT(nvarchar (255), REPLACE([Cohort],'','.') )


select *
from LicensedDriver
ORDER BY YEAR DESC



  




























































--All Drivers in California in the year 2018
--All Drivers in Texas in the year 1994
--All Drivers in Texas in the year 2018
--Male Drivers in Florida in the year 1994
--Female Drivers in Florida in the year 2018
--Male Drivers in California in the year 1994
--Female Drivers in California in the year 2018
--Male Drivers in Texas in the year 1994
--Female Drivers in Texas in the year 2018
--Male Drivers Between age 30-34 in Florida
--Male Drivers Between age 30-34 in Florida in 2016
--Female Drivers Between age 30-34 in Florida 
--Female Drivers Between age 30-34 in Florida in 2016
--Male Drives Between age 40-44 in Florida, California, Texas, Kansas
--Male Drives Between age 40-44 in Florida, California, Texas, Kansas in 
--Female Drives Between age 40-44 in Florida, California, Texas, Kansas
--Female Drives Between age 40-44 in Florida, California, Texas, Kansas in 2014