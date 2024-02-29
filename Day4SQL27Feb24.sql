use dioptra;
select * from dioptra.malawi_f;
----------------------
--Date 29th Feb 2024
 create view Category As
 select CostItem, BUAmount from Dioptra.malawi_f
 
 Select current_timestamp;
 select time(BUAmont)
 from dioptra.malawi_f;
 -- Calculate the difference in month, quarters, year, week, weekday
select datediff(month, '2020/05/06', '2022/05/06')
SELECT DATEDIFF(QUARTER, '2020/05/06', '2022/05/06') AS QuarterDifference;
select datediff(year,'2020/05/06', '2022/05/06' ) as yeardifference;


