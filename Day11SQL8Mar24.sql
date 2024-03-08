----8 March 2024
--substring, rollup add the subtotal with the subgroup
select *
from dioptra.malawi_f

select rating, count(*)
from film
where lenght<90 
group by rating
having avg(replacement_cost)<20;

----Round function need to put into entire over and partition 


SELECT CostItem, Category, BUAmount,
round(avg(BUAmount) OVER (PARTITION BY Category ORDER BY BUAmount), 2)
FROM dioptra.malawi_f;

----Create quartile
Select CostItem, Category, BUAmount
ntile(4) over (partition over Category order by Category desc) as quartile
from dioptra.malawi

---identify second and or third highest budget with category
SELECT CostItem, Category, BUAmount,
       nth_value(BUAmount, 2) OVER (PARTITION BY Category ORDER BY Category DESC) AS NthValue
FROM dioptra.malawi_f;

--learn rank 
SELECT CostItem, Category, BUAmount,
RANK() OVER (PARTITION BY Category ORDER BY Category) AS CategoryRank
FROM dioptra.malawi_f;

