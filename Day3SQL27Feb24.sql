use dioptra;
select * from dioptra.malawi_f;
----------------------
--Date 28th Feb 2024
Create database CEA;
drop database CEA;

create table unitcost(
totalcost int,
sharedcost int,
budgetline varchar(255),
country varchar(255)
);
select * 
from unitcost

drop table unitcost;

create table unitcost(
totalcost int,
sharedcost int,
budgetline varchar(255),
country varchar(255)
);
alter table unitcost
add region varchar(255);

select *
from unitcost;
alter table unitcost
drop region;
drop table unitcost
create table unitcost(
	totalcost int not null,
	sharedcost int,
	budgetline varchar(255),
	fundcode varchar(255) not null,
	country varchar(255),
	primary key (fundcode)
);
create index sno
on unitcost( totalcost, sharedcost, budgetline, fundcode);

Alter table unitcost

select *
from unitcode;

