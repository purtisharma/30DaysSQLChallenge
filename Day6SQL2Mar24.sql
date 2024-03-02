use dioptra;
select * from dioptra.malawi_f;
----------------------
--Date 2rd Mar 2024-- Intermediate SQL for Data Scientist
---Data definition- Table, index, view, schemas

create table ntable
(sno int,
budgetline text,
fundcode int,
country varchar(255),
start_date date,
Primary key(sno)
);

CREATE INDEX inx_ntable_sno
ON ntable
USING (sno);

CREATE INDEX "inx_dioptra.malawi_f_"
ON dioptra.malawi_f
USING (CostItem);

create view cost AS
select CostItem, BUAmount
from dioptra.malawi_f;

---Aggregate Functions

select count(*), min(BUAmount), max(BUAmount)
from dioptra.malawi_f;

Select count(*), min(BUAmount)
from dioptra.malawi_f
where CostItem= 'National Staff';

select sum(BUAmount), round(var_pop(BUAmount),2), round(stddev(BUAmount),2), round(avg(BUAmount),2)
from dioptra.malawi_f;
----grouping & filtering using group by and where clause
select Category, sum(BUAmount)
from dioptra.malawi_f
group by Category;