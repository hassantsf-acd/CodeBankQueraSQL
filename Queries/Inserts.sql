




insert into ranksOFUsers(rankID,DescriptionOfRank,score,place)
values (1,'general',0,1)
insert into ranksOFUsers(rankID,DescriptionOfRank,score,place)
values (2,'general',0,1)
insert into ranksOFUsers(rankID,DescriptionOfRank,score,place)
values (3,'general',0,1)
insert into ranksOFUsers(rankID,DescriptionOfRank,score,place)
values (4,'general',0,1)
insert into ranksOFUsers(rankID,DescriptionOfRank,score,place)
values (5,'general',0,1)
insert into ranksOFUsers(rankID,DescriptionOfRank,score,place)
values (6,'general',0,1)
insert into ranksOFUsers(rankID,DescriptionOfRank,score,place)
values (7,'general',0,1)
insert into ranksOFUsers(rankID,DescriptionOfRank,score,place)
values (8,'general',0,1)
insert into ranksOFUsers(rankID,DescriptionOfRank,score,place)
values (9,'general',0,1)
insert into ranksOFUsers(rankID,DescriptionOfRank,score,place)
values (10,'general',0,1)

insert into Users(userID,SignInDate,Email,passwordofUser,RankOfUser,username,EmailSituation,AddressofUser,firstname,lastname)
values(1,GETDATE(),'aligholami@email.com','abcd',1,'u1','Verified','Tehran,ST10,Code1','Ali','Gholami')

insert into Users(userID,SignInDate,Email,passwordofUser,RankOfUser,username,EmailSituation,AddressofUser,firstname,lastname)
values(2,GETDATE(),'ZohreRSLI@email.com','AAbb',2,'u2','unVerified','Tehran,ST30,Code20',Zohre','Rasuli)

insert into Users(userID,SignInDate,Email,passwordofUser,RankOfUser,username,EmailSituation,AddressofUser,firstname,lastname)
values(3,GETDATE(),'ELHNyayshi@email.com','elhhny1',3,'u3','Verified','Tabriz,ST50,Code5',Elham','Niyayeshi)

insert into Users(userID,SignInDate,Email,passwordofUser,RankOfUser,username,EmailSituation,AddressofUser,firstname,lastname)
values(4,GETDATE(),'RZMlki80@email.com','rrZZ80mk',4,'u4','Verified','Tehran,ST17,Code5','Reza','Maleki')

insert into Users(userID,SignInDate,Email,passwordofUser,RankOfUser,username,EmailSituation,AddressofUser,firstname,lastname)
values(5,GETDATE(),'MortazaMolayi@email.com','MM55mly',5,'u5','Verified','Esfahan,ST40,Code6','Mortaza','Molayi')

insert into Users(userID,SignInDate,Email,passwordofUser,RankOfUser,username,EmailSituation,AddressofUser,firstname,lastname)
values(6,GETDATE(),'SaeedHJZi@email.com','a1b2',6,'u6','Verified','Tehran,ST11,Code8','Saeed','Hejazi')

insert into Users(userID,SignInDate,Email,passwordofUser,RankOfUser,username,EmailSituation,AddressofUser,firstname,lastname)
values(7,GETDATE(),'MHMDRahnama@email.com','mhmh80',7,'u7','unVerified','Qom,ST30,Code20','Mohammad','Rahnama')

insert into Users(userID,SignInDate,Email,passwordofUser,RankOfUser,username,EmailSituation,AddressofUser,firstname,lastname)
values(8,GETDATE(),'ArmanFadayi@email.com','armnfd',8,'u8','Verified','Tabriz,ST30,Code9','Arman','Fadayi')

insert into Users(userID,SignInDate,Email,passwordofUser,RankOfUser,username,EmailSituation,AddressofUser,firstname,lastname)
values(9,GETDATE(),'MohmdSajadi@email.com','mhmdsj40',9,'u9','Verified','Esfahan,ST11,Code7','Mohammad','Sajadi')

insert into Users(userID,SignInDate,Email,passwordofUser,RankOfUser,username,EmailSituation,AddressofUser,firstname,lastname)
values(10,GETDATE(),'ALIMHD@email.com','MM55mly',10,'u10','Verified','Esfahan,ST20,Code26','Ali','Mohammadi')


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Insert into Developer (developerID,userID)
values (1,1)
Insert into Developer (developerID,userID)
values (2,2)
Insert into Developer (developerID,userID)
values (3,3)
Insert into Developer (developerID,userID)
values (4,4)
Insert into Developer (developerID,userID)
values (5,5)
Insert into Developer (developerID,userID)
values (6,6)
Insert into Developer (developerID,userID)
values (7,7)
Insert into Developer (developerID,userID)
values (8,8)
Insert into Developer (developerID,userID)
values (9,9)
Insert into Developer (developerID,userID)
values (10,10)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Inistitute(InistituteID,InistitueName,InistitueType,InistitueWebSite,InistitueCity)
values(1,'Khaje Nasir Toosi Univercity','Univercity','ce.kntu.ac.ir','Tehran')

insert into Class(classID,userID,InistituteID,ClassDetail,ClassName,ClassDistinctionFeature,TeachersName,Capacity,RegistrationSituation,passwordOfClass,IsArchived)
values (1,(select u.userID from Users u where u.username = 'Zohre Rasuli'),1,'class for zohre Rasooli','class1',null,'Zohre Rasuli',20,null,'kntu1',0)

insert into userSubmitClass(ClassID,UserID)
values(1,(select u.userID from Users u where u.username = 'Mortaza Molayi'))

insert into userSubmitClass(ClassID,UserID)
values(1,(select u.userID from Users u where u.username = 'Reza Maleki'))

insert into userSubmitClass(ClassID,UserID)
values(1,(select u.userID from Users u where u.username ='Arman Fadayi'))

insert into userSubmitClass(ClassID,UserID)
values(1,(select u.userID from Users u where u.username ='Elham Niyayeshi'))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Exercises(ExerciseID,classID,Description,deadline)
values (1,1,'first HW','6/16/2022')

insert into Question (QuestionID,ExerciseID,userIDForJudgment,userIDForcreate,Description,SolutionStatus,PostedTime,GroupingOFQ)
values(1,1,2,2,'Q1','UNGiven','6/9/2022','A')
insert into Question (QuestionID,ExerciseID,userIDForJudgment,userIDForcreate,Description,SolutionStatus,PostedTime,GroupingOFQ)
values(2,1,2,2,'Q2','UNGiven','6/9/2022','A')
insert into Question (QuestionID,ExerciseID,userIDForJudgment,userIDForcreate,Description,SolutionStatus,PostedTime,GroupingOFQ)
values(3,1,2,2,'Q3','UNGiven','6/9/2022','A')

insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (1,1,3,null,'6/12/2022',100,'Accepted')
insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (2,2,3,null,'6/12/2022',100,'Accepted')
insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (3,3,3,null,'6/12/2022',100,'Accepted')

insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (4,1,5,null,'6/10/2022',100,'Accepted')
insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (5,2,5,null,'6/12/2022',80,'Incomplete')
insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (6,3,5,null,'6/14/2022',0,'Rejected')

insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (7,1,8,null,'6/10/2022',100,'Accepted')
insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (8,2,8,null,'6/12/2022',70,'Incomplete')
insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (9,3,8,null,'6/14/2022',0,'Rejected')

insert into QuestionBank(ID,Name)
VALUES(1,'Bank')

update Class
Set IsArchived = 1
where classID = 1

insert into QuestionBankHaveQuestion(BankID,QuestionID)
values(1,1)
insert into QuestionBankHaveQuestion(BankID,QuestionID)
values(1,2)
insert into QuestionBankHaveQuestion(BankID,QuestionID)
values(1,3)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Question (QuestionID,ExerciseID,userIDForJudgment,userIDForcreate,Description,SolutionStatus,PostedTime,GroupingOFQ)
values(4,null,2,2,'Q4','UNGiven','6/9/2022','B')
insert into Question (QuestionID,ExerciseID,userIDForJudgment,userIDForcreate,Description,SolutionStatus,PostedTime,GroupingOFQ)
values(5,null,2,2,'Q5','UNGiven','6/9/2022','B')
insert into Question (QuestionID,ExerciseID,userIDForJudgment,userIDForcreate,Description,SolutionStatus,PostedTime,GroupingOFQ)
values(6,null,2,2,'Q6','UNGiven','6/9/2022','B')
insert into Question (QuestionID,ExerciseID,userIDForJudgment,userIDForcreate,Description,SolutionStatus,PostedTime,GroupingOFQ)
values(7,null,2,2,'Q7','UNGiven','6/9/2022','B')
insert into Question (QuestionID,ExerciseID,userIDForJudgment,userIDForcreate,Description,SolutionStatus,PostedTime,GroupingOFQ)
values(8,null,2,2,'Q8','UNGiven','6/9/2022','B')

insert into QuestionBankHaveQuestion(BankID,QuestionID)
values(1,4)
insert into QuestionBankHaveQuestion(BankID,QuestionID)
values(1,5)
insert into QuestionBankHaveQuestion(BankID,QuestionID)
values(1,6)
insert into QuestionBankHaveQuestion(BankID,QuestionID)
values(1,7)
insert into QuestionBankHaveQuestion(BankID,QuestionID)
values(1,8)

insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (10,4,1,null,'6/12/2022',100,'Accepted')
insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (11,5,1,null,'6/12/2022',100,'Accepted')
insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (12,6,1,null,'6/12/2022',100,'Accepted')
insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (13,8,1,null,'6/12/2022',80,'Incomplete')

insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (14,4,6,null,'6/12/2022',100,'Accepted')
insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (15,6,6,null,'6/12/2022',50,'Incomplete')
insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (16,8,6,null,'6/12/2022',80,'Incomplete')

insert into Solution(SolutionID,QuestionID,UserID,RankOfUser,PostedTime,Score,Status)
values (17,8,7,null,'6/12/2022',100,'Accepted')

update ranksOFUsers 
set score = 380
where rankID = 1

update ranksOFUsers 
set score = 300
where rankID = 3

update ranksOFUsers 
set score = 180
where rankID = 5

update ranksOFUsers 
set score = 230
where rankID = 6

update ranksOFUsers 
set score = 100
where rankID = 7

update ranksOFUsers 
set score = 170
where rankID = 8

update ranksOFUsers 
set place = 7

update ranksOFUsers 
set place = 1
where score =380

update ranksOFUsers 
set place = 2
where score =300

update ranksOFUsers 
set place = 3
where score =230

update ranksOFUsers 
set place = 4
where score =180

update ranksOFUsers 
set place = 5
where score =170

update ranksOFUsers 
set place = 6
where score =100

select sum(s.Score) as totalScore,UserID from Solution s 
group by UserID
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Users(userID,SignInDate,Email,passwordofUser,RankOfUser,username,EmailSituation,AddressofUser,firstname,lastname)
values(11,GETDATE(),'Digikala@email.com','DG10KL',null,'DGKALAADmin','Verified','Tehran,ST1,CODE102','Ali','Ahmadi')

INSERT into Company (CompanyID,AdminID,CompanyName,EstablishYear,PhoneNumber,AddressCity,AddressRest,AddressCoordinateLatitude,AddressCoordinateMagnitude,WorkFocus,Website,Logo,Description)
values(1,11,'Digikala',2010,'023556644','Tehran','A;I SAKHTEAMN',25.23,54.23,'Web Developer','www.Digikala.ir',null,'Easy search,easier buy')

insert into Exercises(ExerciseID,classID,Description,deadline)
values (2,null,'For Digikala','6/25/2022')

insert into ManInCharge(NationalCode,ContestID,Name,Email,PhoneNumber)
values ('4578',null,'Ali Ahmadi','AHMADI@Email.com','09145556644')

INSERT  INTO Contest(ContestID,ExerciseID,ContestName,Document,UseSingleParticipant,Type,UseTeamAllowed,Description,minParticipants,maxParticipants,StartDate,RegisterDeadline,DeadlineType,UseTestMode,requiredInfo,UseScoreboard,RegisterFee,RegisterType,Pasword,UsePassword,InistituteID,ManInChargeID,CompanyID)
values (1,2,'Digi','mm',0,'Open',0,'nothing',1,5,'6/15/2022','6/13/2022','A',0,'Name and profession',0,100000,'Online','abd457c',1,null,4578,1)

insert into ManageContest(UserID,ContestID)
values(11,1)

insert into SubmitForContest(SubmitContestID,developerID,ExerciseID,ContestID)
values (1,(select developerID from Developer where developerID in (select userID from Users where username = 'Mohammad Rahnama')),2,1)
insert into SubmitForContest(SubmitContestID,developerID,ExerciseID,ContestID)
values (2,(select developerID from Developer where developerID in (select userID from Users where username = 'Arman Fadayi')),2,1)
insert into SubmitForContest(SubmitContestID,developerID,ExerciseID,ContestID)
values (3,(select developerID from Developer where developerID in (select userID from Users where username = 'Mohammad Sajadi')),2,1)
insert into SubmitForContest(SubmitContestID,developerID,ExerciseID,ContestID)
values (4,(select developerID from Developer where developerID in (select userID from Users where username = 'Ali Mohammadi')),2,1)
-----------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Users(userID,SignInDate,Email,passwordofUser,RankOfUser,username,EmailSituation,AddressofUser,firstname,lastname)
values(12,GETDATE(),'Snap@email.com','SNP10TXI',null,'SnapADmin','Verified','Tehran,ST1,CODE103','Moosa','Rezayi')

INSERT into Company (CompanyID,AdminID,CompanyName,EstablishYear,PhoneNumber,AddressCity,AddressRest,AddressCoordinateLatitude,AddressCoordinateMagnitude,WorkFocus,Website,Logo,Description)
values(2,12,'Snap',2012,'023577644','Tehran','Ab SAKHTEAMN',25.23,54.23,'App Developer','www.snap.ir',null,'Easy Taxi')

insert into Users(userID,SignInDate,Email,passwordofUser,RankOfUser,username,EmailSituation,AddressofUser,firstname,lastname)
values(13,GETDATE(),'AliiBaba@email.com','ALBB50',null,'ALIBABAADmin','Verified','Tehran,ST1,CODE104','Moosa','Alizadeh')

INSERT into Company (CompanyID,AdminID,CompanyName,EstablishYear,PhoneNumber,AddressCity,AddressRest,AddressCoordinateLatitude,AddressCoordinateMagnitude,WorkFocus,Website,Logo,Description)
values(3,13,'AliBaba',2010,'023778899','Tehran','Akil SAKHTEAMN',25.23,54.23,'Web Developer','www.AliBaba.ir',null,'Easy Travel')

insert into Offer(OfferID,CompanyID,MinSalary,MaxSalary,Type,Title,isRemote,Status,Experience,PostedTime)
values (1,2,1000000,2000000,'Online','AI','Partly','Available','1 year','6/10/2022' )
insert into Offer(OfferID,CompanyID,MinSalary,MaxSalary,Type,Title,isRemote,Status,Experience,PostedTime)
values (2,2,2000000,2500000,'Online','EMP','Fully','Available','2 year','6/10/2022' )
insert into Offer(OfferID,CompanyID,MinSalary,MaxSalary,Type,Title,isRemote,Status,Experience,PostedTime)
values (3,3,3000000,4000000,'Online','EMP','Partly','unAvailable','3 year','6/11/2022' )
insert into Offer(OfferID,CompanyID,MinSalary,MaxSalary,Type,Title,isRemote,Status,Experience,PostedTime)
values (4,3,1000000,1500000,'Online','Fulltime EMP','FULLY','Available','5 year','6/10/2022' )
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 insert into ApplyForOffer(OfferID,UserID)
values ((select top 1 OfferID from Offer where Title = 'AI'),(select userID from Users where username = 'Elham Niyayeshi'))
 delete from ApplyForOffer 
 where 'python' not in (select Name from DevSkill d where d.DevID = UserID)

