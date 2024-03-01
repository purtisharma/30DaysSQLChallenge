use dioptra;
select * from dioptra.malawi_f;
----------------------
--Date 1st Mar 2024
---Data Manipulation
INSERT INTO dioptra.new (date)
VALUES ('2023-04-23');

update dioptra.malawi_f
Set Category='Indirect Cost Recovery'
where Category='ICR';

delete from dioptra.malawi_f
where Category='Indirect Cost Reovery';
