--Date 11 March Hackerrack- easy ones
/*Query the list of CITY names starting 
with vowels (i.e., a, e, i, o, or u) from STATION. 
Your result cannot contain duplicates. /*


SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE 'a%' or city like 'e%' or city like 'i%'
or city like 'o%' or city like 'or%' or city like 'u%'


--ALSO USE...^ MEANS BEGINING

SELECT DISTINCT(CITY)
FROM STATION 
WHERE CITY REGEXP '^[aeiou]';

---ending with vowel $-- means ending
SELECT distinct CITY
FROM STATION
WHERE CITY REGEXP '[aeiou]$';

 ---or we can write like this
SELECT distinct CITY
FROM STATION
WHERE CITY like '%a'
or city like '%e'
or city like '%i'
or city like '%o'
or city like '%u';

-----Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters.
-----Your result cannot contain duplicates.
-----^ begin, $ end, .* inbetween
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiou].*[aeiou]$';

---Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
select distinct city
from station
where city not regexp '^[aeiou]'

----Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
select distinct city
from station
where city not regexp '[aeiou]$'

Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
select distinct city
from station
where city not regexp '^[aeiou].*[aeiou]$'