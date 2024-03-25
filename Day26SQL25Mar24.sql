--Date 24 March
__Leetcode questions- SQL 50 interview questions

# Write your MySQL query statement below
select e.name, b.bonus
from Employee AS e
left join Bonus AS b on e.empId = b.empId
where b.Bonus<1000 or b.bonus is null;