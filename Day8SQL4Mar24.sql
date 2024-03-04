----4 March 2024
--substring, similar to(in mysql is call regexp
select *
from dioptra.malawi_f

SELECT SUBSTRING(ProjectID, 1, 4) AS shortv
FROM dioptra.malawi_f;

SELECT SUBSTR(ProjectID, 1, 4) AS shortv2
FROM dioptra.malawi_f;

select distinct(Category)
from dioptra.malawi_f;

SELECT Category, CostItem
FROM dioptra.malawi_f
WHERE CostItem regexp 'train|capacity|Agents';

SELECT Category, CostItem
FROM dioptra.malawi_f
WHERE CostItem regexp 'tra|capa';

-----Having command used as filter at the result stage and we can 
--use aggregate functions count,sum which we can not used in where command

SELECT Category, CostItem
FROM dioptra.malawi_f
GROUP BY Category
HAVING SUM(BUAmount) > 50000
ORDER BY Category;
