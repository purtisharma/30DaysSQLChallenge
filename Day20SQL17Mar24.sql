--Date 17 March Hackerrack- easy ones
__-revision

We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.
SELECT (months*salary) as earnings, COUNT(*)                    
FROM Employee                      
GROUP BY earnings                  
ORDER BY earnings DESC             
LIMIT 1;    

----Query the following two values from the STATION table:
--The sum of all values in LAT_N rounded to a scale of  decimal places.
----The sum of all values in LONG_W rounded to a scale of  decimal places.
select round(sum(LAT_N),2) as lat, round(sum(LONG_W),2)
from STATION;

---Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than  and less than . Truncate your answer to  decimal places.
SELECT ROUND(SUM(LAT_N),4) FROM STATION WHERE LAT_N BETWEEN 38.7880 AND 137.2345

---Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than . Truncate your answer to  decimal places.
select round(max(LAT_N),4)
from STATION
where LAT_N<137.2345;