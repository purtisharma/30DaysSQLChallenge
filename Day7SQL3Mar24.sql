----3 March 2024
--Concat
select *
from dioptra.malawi_f

select concat(ProjectID, Category) as new
from dioptra.malawi_f;

SELECT CONCAT(ProjectID, ' ', Category) AS concatenated_result
FROM dioptra.malawi_f;

select rtrim(ProjectID) as new
from dioptra.malawi_f

select ltrim(rtrim(ProjectID)) as new
from dioptra.malawi_f

select upper(ProjectID) as new
from dioptra.malawi_f

select initcap(ProjectID) as new
from dioptra.malawi_f

select lower(ProjectID) as new
from dioptra.malawi_f
