--Date 20 March
__-revision DAY1 REVISE THE cte LINKEDIN COURSE

SELECT candidate_id 
FROM candidates 
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
group by candidate_id
having count(skill)=3
order by candidate_id;


