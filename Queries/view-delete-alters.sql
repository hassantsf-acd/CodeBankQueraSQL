delete from user where datepart(month,getdate() )- datepart(month,SignInDate) >=1
and not exists(select * from Solution s where UserID = s.UserID )
and not exists(select * from userSubmitClass s where UserID = s.UserID )
-------------------------------------------------------------------------
create view v1 
as
select * from Class c
where exists(
	select classID,count(*) as members 
	from userSubmitClass 
	groupby classID 
	having count(*) >=40 
)
----------------------------------------------------------------------
alter table Users
alter column Email varchar(30)
alter table Users
alter column username varchar(30)
alter table Users
alter column AddressofUser varchar(50)

alter table Inistitute
alter column InistitueName varchar(40)
alter table Inistitute
alter column InistitueType varchar(30)
alter table Inistitute
alter column InistitueWebSite varchar(40)

alter table Class
alter column classDetail varchar(40)

alter table Contest 
add CompanyID int foreign key references Company

alter table Users
add age int

alter table Company
add size int

alter table Users
add city varchar(20)

create table AcademicYear(
id int primary key,
StartYear int not null,
Semester varchar(20 ) not null
)

alter table Class
add YearID int foreign key references AcademicYear

alter table Users
add  firstname varchar(20)

alter table Users
add  lastname varchar(20)