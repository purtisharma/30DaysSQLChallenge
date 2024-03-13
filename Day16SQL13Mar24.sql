--Date 13 March Hackerrack- easy ones
/*Query a count of the number of cities in CITY 
having a Population larger than .
*/
select count(*) as cityno
from CITY
where POPULATION > 100000;

/*Query the total population of all cities
 in CITY where District is California.
*/
select sum(POPULATION)
from CITY
where DISTRICT='California';

/*Query the difference between the maximum and minimum 
populations in CITY.
*/
select (max(POPULATION)- min(POPULATION)) as diff
from CITY;