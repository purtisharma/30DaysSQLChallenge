----9 March 2024
--substring, rollup add the subtotal with the subgroup
select max(BUAmount)
from dioptra.malawi_f

SELECT Category, CostItem, SUM(BUAmount) AS TotalAmount
FROM dioptra.malawi_f
GROUP BY Category, CostItem WITH ROLLUP;

select Category, CostItem, BUAmount,
sum(BUAmount) over (partition by Category) as TS
from dioptra.malawi_f