--SP 1

insert into ranksOFUsers(rankID,DescriptionOfRank,score,place)
values (14,'general',0,1)
insert into ranksOFUsers(rankID,DescriptionOfRank,score,place)
values (15,'general',0,1)
insert into ranksOFUsers(rankID,DescriptionOfRank,score,place)
values (16,'general',0,1)

insert into Users(userID,SignInDate,Email,passwordofUser,RankOfUser,username,EmailSituation,AddressofUser,firstname,lastname)
values(14,GETDATE(),'YaserFkhri@email.com','a1v2',14,'u1','Verified','Tehran,ST10,Code1','Yaser','Fakhri')

insert into Users(userID,SignInDate,Email,passwordofUser,RankOfUser,username,EmailSituation,AddressofUser,firstname,lastname)
values(15,GETDATE(),'Yasin80@email.com','cdf5',15,'u1','Verified','Tehran,ST10,Code1','Yasin','Ahmadi')

insert into Users(userID,SignInDate,Email,passwordofUser,RankOfUser,username,EmailSituation,AddressofUser,firstname,lastname)
values(16,GETDATE(),'YEsmaili@email.com','aaa8',16,'u1','Verified','Tehran,ST10,Code1','Yavar','Esmaili')

insert into Inistitute(InistituteID,InistitueName,InistitueType,InistitueWebSite,InistitueCity)
values(2,'Amir Kabir','Univercity','aut.ac.ir','Tehran')

insert into Class(classID,userID,InistituteID,ClassDetail,ClassName,ClassDistinctionFeature,TeachersName,Capacity,RegistrationSituation,passwordOfClass,IsArchived)
values (2,2,2,'class for zohre Rasooli','class AI',null,'Zohre Rasuli',30,null,'AUT1',0)

insert into Class(classID,userID,InistituteID,ClassDetail,ClassName,ClassDistinctionFeature,TeachersName,Capacity,RegistrationSituation,passwordOfClass,IsArchived)
values (3,2,2,'class for zohre Rasooli','class AD',null,'Zohre Rasuli',40,null,'AUT2',0)

insert into Class(classID,userID,InistituteID,ClassDetail,ClassName,ClassDistinctionFeature,TeachersName,Capacity,RegistrationSituation,passwordOfClass,IsArchived)
values (4,2,2,'class for zohre Rasooli','class DB',null,'Zohre Rasuli',30,null,'AUT3',0)

insert into userSubmitClass(ClassID,UserID)
values(2,14)
insert into userSubmitClass(ClassID,UserID)
values(3,14)
insert into userSubmitClass(ClassID,UserID)
values(4,14)

insert into userSubmitClass(ClassID,UserID)
values(2,15)
insert into userSubmitClass(ClassID,UserID)
values(4,15)

insert into userSubmitClass(ClassID,UserID)
values(3,16)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SP 2

insert into Exercises(ExerciseID,classID,Description,deadline)
values (3,3,'first HW','6/16/2022')

insert into Question (QuestionID,ExerciseID,userIDForJudgment,userIDForcreate,Description,SolutionStatus,PostedTime,GroupingOFQ)
values(9,3,2,2,'Q1','UNGiven','6/9/2022','c')
insert into Question (QuestionID,ExerciseID,userIDForJudgment,userIDForcreate,Description,SolutionStatus,PostedTime,GroupingOFQ)
values(10,3,2,2,'Q2','UNGiven','6/9/2022','c')
insert into Question (QuestionID,ExerciseID,userIDForJudgment,userIDForcreate,Description,SolutionStatus,PostedTime,GroupingOFQ)
values(11,3,2,2,'Q3','UNGiven','6/9/2022','c')
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SP 3

insert into Exercises(ExerciseID,classID,Description,deadline)
values (4,null,'For Test','6/25/2022')


INSERT  INTO Contest(ContestID,ExerciseID,ContestName,Document,UseSingleParticipant,Type,UseTeamAllowed,Description,minParticipants,maxParticipants,StartDate,RegisterDeadline,DeadlineType,UseTestMode,requiredInfo,UseScoreboard,RegisterFee,RegisterType,Pasword,UsePassword,InistituteID,ManInChargeID,CompanyID)
values (2,4,'Doroogh 13','mm',0,'Open',0,'nothing',1,5,'6/15/2022','6/13/2022','A',0,'Name and profession',0,100000,'Online','abd457c',1,null,4578,1)


insert into Question (QuestionID,ExerciseID,userIDForJudgment,userIDForcreate,Description,SolutionStatus,PostedTime,GroupingOFQ)
values(12,4,2,2,'Q1','UNGiven','6/9/2022','Olampiyad')
insert into Question (QuestionID,ExerciseID,userIDForJudgment,userIDForcreate,Description,SolutionStatus,PostedTime,GroupingOFQ)
values(13,4,2,2,'Q2','UNGiven','6/9/2022','Olampiyad')
insert into Question (QuestionID,ExerciseID,userIDForJudgment,userIDForcreate,Description,SolutionStatus,PostedTime,GroupingOFQ)
values(14,4,2,2,'Q3','UNGiven','6/9/2022','Olampiyad')
insert into Question (QuestionID,ExerciseID,userIDForJudgment,userIDForcreate,Description,SolutionStatus,PostedTime,GroupingOFQ)
values(15,4,2,2,'Q3','UNGiven','6/9/2022','Olampiyad')

insert into SubmitForContest(SubmitContestID,developerID,ExerciseID,ContestID)
values (5,5,4,2)
insert into SubmitForContest(SubmitContestID,developerID,ExerciseID,ContestID)
values (6,6,4,2)
insert into SubmitForContest(SubmitContestID,developerID,ExerciseID,ContestID)
values (7,7,4,2)

insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (19,12,5,null,'6/10/2022',100,'Accepted')
insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (20,13,5,null,'6/12/2022',100,'Accepted')
insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (21,14,5,null,'6/14/2022',100,'Accepted')


insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (22,14,6,null,'6/12/2022',100,'Accepted')
insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (23,15,6,null,'6/14/2022',100,'Accepted')

insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (24,15,7,null,'6/14/2022',100,'Accepted')
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SP 4

insert into AcademicYear(id,StartYear,Semester)
values (1,400,'Spring')

insert into Class(classID,userID,InistituteID,ClassDetail,ClassName,ClassDistinctionFeature,TeachersName,Capacity,RegistrationSituation,passwordOfClass,IsArchived,YearID)
values (5,2,1,'class for zohre Rasooli','class DB',null,'Zohre Rasuli',30,null,'kntu2',0,1)

insert into userSubmitClass(ClassID,UserID)
values(5,7)

insert into userSubmitClass(ClassID,UserID)
values(5,8)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SP 5

------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SP 6
insert into QuestionLabel(ID,Name,QuestionID)
VALUES (1,'Technology',1)
insert into QuestionLabel(ID,Name,QuestionID)
VALUES (2,'Technology',2)

insert into Class(classID,userID,InistituteID,ClassDetail,ClassName,ClassDistinctionFeature,TeachersName,Capacity,RegistrationSituation,passwordOfClass,IsArchived)
values (6,1,1,'class for Ali Gholami','class AI',null,'Ali Gholami',20,null,'kntu3',0)

insert into Class(classID,userID,InistituteID,ClassDetail,ClassName,ClassDistinctionFeature,TeachersName,Capacity,RegistrationSituation,passwordOfClass,IsArchived)
values (7,3,1,'class for Elham Niyayeshi','class DB',null,'Elham Niyayeshi',20,null,'kntu4',0)

insert into Class(classID,userID,InistituteID,ClassDetail,ClassName,ClassDistinctionFeature,TeachersName,Capacity,RegistrationSituation,passwordOfClass,IsArchived)
values (8,4,1,'class for Reza Maleki','class SF',null,'Reza Maleki',20,null,'kntu5',0)

insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (25,1,2,null,'6/12/2022',100,'Accepted')
insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (26,2,2,null,'6/12/2022',100,'Accepted')

insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (27,2,1,null,'6/12/2022',100,'Accepted')

insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (28,1,3,null,'6/12/2022',100,'Accepted')

insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (29,1,4,null,'6/12/2022',100,'Accepted')
insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (30,2,4,null,'6/12/2022',100,'Accepted')
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SP7

insert into Users(userID,SignInDate,Email,passwordofUser,RankOfUser,username,EmailSituation,AddressofUser,firstname,lastname)
values(17,GETDATE(),'Test@email.com','TST10TXI',null,'TestADmin','Verified','Tehran,ST1,CODE103','parisa','Rahmani')

INSERT into Company (CompanyID,AdminID,CompanyName,EstablishYear,PhoneNumber,AddressCity,AddressRest,AddressCoordinateLatitude,AddressCoordinateMagnitude,WorkFocus,Website,Logo,Description)
values(4,17,'Test',2012,'023577644','Tehran','Ab SAKHTEAMN',25.23,54.23,'App Developer','www.Test.ir',null,'hello')
insert into CompanySize(CompanyID,MinNumber,MaxNumber)
values(4,1000,2000)
insert into CompanySize(CompanyID,MinNumber,MaxNumber)
values(2,1000,2000)

insert into Offer(OfferID,CompanyID,MinSalary,MaxSalary,Type,Title,isRemote,Status,Experience,PostedTime)
values (5,4,1000000,2000000,'Online','AI','Part Time','Available','1 year','6/10/2022' )

insert into Offer(OfferID,CompanyID,MinSalary,MaxSalary,Type,Title,isRemote,Status,Experience,PostedTime)
values (6,2,1000000,2000000,'Online','DB','Part Time','Available','2 year','6/10/2022' )

 insert into ApplyForOffer(OfferID,UserID)
values (5,1)
 insert into ApplyForOffer(OfferID,UserID)
values (6,2)

update Offer
set Type = 'Part Time'
where OfferID in (5,6)

update Users 
set age = 35
where userID =1
update Users 
set age = 25
where userID =2

update Users 
set city = 'Tehran'
where userID =1
update Users 
set city = 'Tehran'
where userID =2

insert into Users(userID,SignInDate,Email,passwordofUser,RankOfUser,username,EmailSituation,AddressofUser,firstname,lastname)
values(18,GETDATE(),'Test2@email.com','TST10TXI',null,'TestADmin','Verified','Tehran,ST1,CODE103','pirisa','Rihmani')

INSERT into Company (CompanyID,AdminID,CompanyName,EstablishYear,PhoneNumber,AddressCity,AddressRest,AddressCoordinateLatitude,AddressCoordinateMagnitude,WorkFocus,Website,Logo,Description)
values(5,17,'Test2',2012,'023577644','Tabriz','Ab2 SAKHTEAMN',25.23,54.23,'App Developer','www.Test.ir',null,'hellop2')
insert into CompanySize(CompanyID,MinNumber,MaxNumber)
values(5,1000,2000)
insert into CompanySize(CompanyID,MinNumber,MaxNumber)
values(3,10,50)
insert into Offer(OfferID,CompanyID,MinSalary,MaxSalary,Type,Title,isRemote,Status,Experience,PostedTime)
values (7,5,1000000,2000000,'Part Time','AI','Part Time','Available','1 year','6/10/2022' )

insert into ApplyForOffer(OfferID,UserID)
values (7,3)
 insert into ApplyForOffer(OfferID,UserID)
values (7,8)

update Users 
set age = 28
where userID =3
update Users 
set age = 38
where userID =8

update Users 
set city = 'Tabriz'
where userID =3
update Users 
set city = 'Tabriz'
where userID =8
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SP 8

insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (18,2,6,null,'6/12/2022',100,'Accepted')
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SP 9

insert into AcademicYear(id,StartYear,Semester)
values(2,99,'Fall')
update Class
set YearID = 2
where classID in (2,3,4)


insert into userSubmitClass(ClassID,UserID)
values(2,16)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SP 10

insert into Inistitute(InistituteID,InistitueName,InistitueType,InistitueWebSite,InistitueCity)
values(3,'Tehran Univercity','Univercity','www.ut.ac.ir','Tehran')

update Users 
set city = 'Gazvin',UnivercityID = 3
where userID =4

insert into ApplyForOffer (OfferID,UserID)
values (1,4)
insert into ApplyForOffer (OfferID,UserID)
values (3,4)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SP 11

insert into CompanyTechnology(Name,CompanyID)
values('C#',1)
insert into CompanyTechnology(Name,CompanyID)
values('Python',1)

insert into Offer(OfferID,CompanyID,MinSalary,MaxSalary,Type,Title,isRemote,Status,Experience,PostedTime)
values (8,1,1000000,2000000,'Part Time Online','AI','Partly','Available','junior','6/10/2022' )

insert into Offer(OfferID,CompanyID,MinSalary,MaxSalary,Type,Title,isRemote,Status,Experience,PostedTime)
values (9,1,1000000,2000000,'Part Time Online','AI','Part Time','Available','junior','6/10/2022' )

insert into Offer(OfferID,CompanyID,MinSalary,MaxSalary,Type,Title,isRemote,Status,Experience,PostedTime)
values (10,1,1000000,2000000,'Part Time Online','DB','Partly','Available','junior','6/12/2022' )

insert into Offer(OfferID,CompanyID,MinSalary,MaxSalary,Type,Title,isRemote,Status,Experience,PostedTime)
values (11,1,1000000,2000000,'Part Time Online','ML','Part Time','Available','junior','6/15/2022' )

insert into ApplyForOffer(OfferID,UserID)
values(8,5)
insert into ApplyForOffer(OfferID,UserID)
values(8,6)
insert into ApplyForOffer(OfferID,UserID)
values(8,7)
insert into ApplyForOffer(OfferID,UserID)
values(8,8)

insert into ApplyForOffer(OfferID,UserID)
values(10,8)
insert into ApplyForOffer(OfferID,UserID)
values(10,9)
insert into ApplyForOffer(OfferID,UserID)
values(10,10)

insert into ApplyForOffer(OfferID,UserID)
values(9,1)
insert into ApplyForOffer(OfferID,UserID)
values(9,2)

insert into ApplyForOffer(OfferID,UserID)
values(11,1)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SP 12
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SP 13

create proc CompleteScores
@A varchar(30)
as 
select u.firstname + u.lastname as fullname from Users u
where u.userID in(
	select us.UserID
	from userSubmitClass us
	where us.ClassID in(
		select c.classID
		from Class c 
		where c.ClassName =@A
	) and not exists( 
		select e.ExerciseID from Exercises e
		where e.classID = us.ClassID
		except
		select e.ExerciseID from Exercises e
		where e.classID = us.ClassID
		and e.fullscore = all(
			select sum(s.score) 
			from Solution s 
			where s.UserID = u.userID and s.QuestionID in(select q.QuestionID from Question q where q.ExerciseID = e.ExerciseID)
		)
	)
)

exec CompleteScores 'Riaziat Gosaste'
------------------------------------------------------------------------------------------------
--SP14

------------------------------------------------------------------------------------------------
--SP15

alter proc OurSmartStudents
@X varchar(30),
@Y varchar(30)
as 
select * 
from Users u 
where u.userID in(
	select s.developerID
	from SubmitForContest s
	where s.ContestID in (
		select c.ContestID
		from Contest c
		where c.ContestName = @X
		and not exists (
			select q.QuestionID from Question q where q.ExerciseID = c.ExerciseID
			except 
			select sol.QuestionID from Solution sol where sol.UserID = u.userID 
		)
	) and u.userID in (
		select us.UserID
		from userSubmitClass us
		where exists ( 
			select * 
			from Class c 
			where c.classID = us.ClassID
			and c.InistituteID in (
				select i.InistituteID 
				from Inistitute i 
				where i.InistituteID = c.InistituteID and i.InistitueName = @Y
			)
		)
	)
)

exec OurSmartStudents 'Doroogh 13','Khaje Nasir Toosi Univercity'
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SP 16
insert into userSubmitClass(ClassID,UserID)
values (6,2)

insert into ApplyForOffer(OfferID,UserID)
values (2,2)
insert into ApplyForOffer(OfferID,UserID)
values (1,2)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------