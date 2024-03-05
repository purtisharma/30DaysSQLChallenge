----5 March 2024
--substring, similar to(in mysql is call regexp
select *
from dioptra.malawi_f

---subquery for colum values
select dmf2.CostItem, dmf2.Category, dmf2.BUAmount,
(select avg(dmf1.BUAmount) 
from Dioptra.malawi_f dmf1 
where dmf2.Category= 'National Staff') as avgsal
from dioptra.malawi_f dmf2;

----subquery for where clauses- recheck and understand in again

select CostItem, Category, BUAMount
from dioptra.malawi_f
where (select avg(BUAmount) 
from dioptra.malawi_f where  BUAmount>50000)


