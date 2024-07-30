create table employe(
	employe_id serial primary key,
    name varchar(150),
	age int,
	salary int
)
select * from employe

insert into employe values (1,'divya',21,35000),(2,'tisha',22,23000),(3,'shital',20,28000)

copy employe from 'D:\ARC\SQL\task_sql\taks_4employe1.csv' delimiter ',' csv header

---different types of querys 
    --1.Distict query
select age from employe
select distinct age from employe
select distinct name from employe
select * from employe
	
	--2.Where query
select * from employe where age = 21
select * from employe where age = 26
select employe_id,name from employe where age = 28
select * from employe

--AND,OR,Not,Between opeator
select * from employe where employe_id =20 and age = 26
select * from employe where employe_id =201 or age = 26
select * from employe where not age = 25
select * from employe where salary >=35000 and salary <= 45000
select * from employe 

--3.Update query
select * from employe 
update employe set salary ='45000'where employe_id = 20
update employe set salary ='25000'where employe_id = 41

--4.Delete query
select * from employe 
delete from employe where employe_id = 15

--5.Id alter query
select * from employe 
alter table employe add column mob_no double precision 
update employe set mob_no = 75172 where employe_id = 1
update employe set mob_no = 982256 where employe_id = 2
alter table employe drop column mob_no

--6.IN query
select * from employe 
select * from employe where employe_id in(1,20,21,40)

--7.Constaint query
ALTER TABLE employe add CONSTRAINT check_age CHECK(age<=30);

ALTER TABLE employe ADD CONSTRAINT check_name CHECK (name NOT IN('a1','b1','check'));
select * from employe 









