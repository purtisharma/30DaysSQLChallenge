--Date 10 March Hackerrack- easy ones
---Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
--The CITY table is described as follows:

SELECT *
FROM CITY
WHERE POPULATION > 100000 AND COUNTRYCODE='USA'

--Query all columns (attributes) for every row in the CITY table.
--The CITY table is described as follows:
SELECT *
FROM CITY

---Query all columns for a city in CITY with the ID 1661.
SELECT *
FROM CITY
WHERE ID=1661

---Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT *
FROM CITY
WHERE COUNTRYCODE='JPN'

--Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT NAME
FROM CITY
WHERE COUNTRYCODE='JPN'


--Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT(CITY)
FROM STATION
WHERE ID % 2=0

----Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
SELECT COUNT(CITY)- COUNT(DISTINCT CITY) AS DIFF
FROM STATION

---Weather Observation Station 5 Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
select CITY,LENGTH(CITY) from STATION order by Length(CITY) asc, CITY limit 1; 
select CITY,LENGTH(CITY) from STATION order by Length(CITY) desc,CITY limit 1;