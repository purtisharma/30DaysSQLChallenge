use dioptra;
select * from dioptra.malawi_f;
----------------------
--Date 26th Feb 2024
Select * 
from dioptra.malawi_f;

Select * 
from dioptra.malawi_f 
where Category = 'ICR';

select * 
from dioptra.malawi_f 
where Category = 'International Staff' AND CostItem ='USA01';

select * 
from dioptra.malawi_f 
where Category = 'National Staff' OR CostItem ='USA01';

select *
from dioptra.malawi_f
where NOT Category = 'National Staff' And Not CostItem = 'USA01';

Select *
from dioptra.malawi_f
where NOT Category = 'National Staff' AND (CostItem = 'USA01' or CostItem = 'Driver');

Select *
from dioptra.malawi_f
where NOT Category = 'National Staff'
Order by BUAmount desc;

Select *
from dioptra.malawi_f
where Category is not null;

Select *
from dioptra.malawi_f
where Category is null;

update dioptra.malawi_f
set Notes= 0000
where BUAmount>=70000

delete from dioptra.malawi_f
where category!=0;

select Category
from dioptra.malawi_f
where BUAmount>0
limit 1000;

select min(BUAmount) AS minamount
from dioptra.malawi_f;

select max(BUAmount) AS maxamount
from dioptra.malawi_f;

Select count(*)
from dioptra.malawi_f;

Select avg(BUAmount)
from dioptra.malawi_f;

select Sum(BUAmount)
from dioptra.malawi_f;

---% multiple character, _ single character
select *
from dioptra.malawi_f
where Category like 'N%'

select *
from dioptra.malawi_f
where Category in ('National Staff', 'International Staff');

select *
from dioptra.malawi_f
where BUAmount between 200 And 20000;
