--Date 21 March
__-revision DAY1 REVISE THE cte LINKEDIN COURSE

SELECT candidate_id 
FROM candidates 
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
group by candidate_id
having count(skill)=3
order by candidate_id;


Tesla is investigating production bottlenecks and they need your help to extract the relevant data. Write a query to determine which parts have begun the assembly process but are not yet finished.

Assumptions:

parts_assembly table contains all parts currently in production, each at varying stages of the assembly process.
An unfinished part is one that lacks a finish_date.
This question is straightforward, so let's approach it with simplicity in both thinking and solution.

Effective April 11th 2023, the problem statement and assumptions were updated to enhance clarity.

SELECT part, assembly_step
FROM parts_assembly
where finish_date is null and assembly_step>2;

