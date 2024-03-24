--Date 23 March
__Leetcode questions- SQL 50 interview questions

select product_id
from Products
where low_fats='Y' and recyclable='Y';

# Write your MySQL query statement below
select name
from Customer
where referee_id <> 2 or referee_id is null;

# Write your MySQL query statement below
select name, population, area
from World
where population>25000000 or area>=3000000;


select distinct author_id as id
from Views
where author_id=viewer_id
order by author_id;


select tweet_id  from Tweets where char_length(content)>15

select 
eu.unique_id as unique_id, e.name as name
from Employees e left join EmployeeUNI eu on e.id = eu.id