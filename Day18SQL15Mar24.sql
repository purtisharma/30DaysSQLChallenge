--Date 14 March Hackerrack- easy ones
/*Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) 
rounded down to the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/
select CITY.NAME
from CITY, COUNTRY
where CITY.COUNTRYCODE= COUNTRY.CODE and COUNTRY.CONTINENT='Africa'


/*Given the CITY and COUNTRY tables, 
query the sum of the populations of all 
cities where the CONTINENT is 'Asia'.*/

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT SUM(c.POPULATION)
FROM CITY as c, COUNTRY as ct
WHERE c.COUNTRYCODE=ct.CODE AND ct.CONTINENT='Asia';