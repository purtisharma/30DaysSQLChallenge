--Date 19 March
__-revision DAY1 REVISE THE cte LINKEDIN COURSE

select Category, BUAmount,
avg(BUAmount) over (partition by BUAmount order by Category)
from dioptra.malawi_f;

