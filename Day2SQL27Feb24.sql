use dioptra;
select * from dioptra.malawi_f;
----------------------
--Date 27th Feb 2024
Select * 
from dioptra.malawi_f;

Select Category AS cat
from dioptra.malawi_f;

---Inner join matches values on both sides
select Category, BUAmount
from dioptra.malawi_f as d
Inner Join Customers C ON d.Category= c.category;

---Left join all left value along with matching right values reverse for right join
select Category, BUAMount
from dioptra.malawi_f AS d
Left join Customers C on d.Category=c.Customers;

-----Cross Join returns all the values from both tables
select Category, BUAmount
from dioptra.malawi_f
cross join Customer;

-----Learn about Self join Youtube

----SELECT column_name(s) FROM table1 UNION ALL SELECT column_name(s) FROM table2;
---Union All include duplicates
SELECT City FROM Customers
UNION
SELECT City FROM Suppliers

Select sum(BUAMount) 
from dioptra.malawi_f
where Category = 'National Staff'
group by FundCode;

select sum(BUAmount)
from dioptra.malawi_f
group by FundCode
having count(BUAmount) >5;

---The EXISTS operator is used to test for the existence of any record in a subquery.
select *
from dioptra.malawi_f
where exists
(select Category from dioptra.malawi_f where Category='National Staff');



