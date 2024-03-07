----7 March 2024
--substring, rollup add the subtotal with the subgroup
select *
from dioptra.malawi_f

select rating, count(*)
from film
where lenght<90 
group by rating
having avg(replacement_cost)<20;

----windows functions- subset with whole table
---first_value and Over and Partition

SELECT CostItem, Category, BUAmount,
FIRST_VALUE(BUAmount) OVER (PARTITION BY Category ORDER BY BUAmount) AS famount
FROM dioptra.malawi_f;





