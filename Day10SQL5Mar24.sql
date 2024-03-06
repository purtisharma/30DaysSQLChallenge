----6 March 2024
--substring, rollup add the subtotal with the subgroup
select *
from dioptra.malawi_f

SELECT Category, BUAmount
FROM dioptra.malawi_f
group by Category, BUAmount WITH ROLLUP
order by Category, BUAmount;




