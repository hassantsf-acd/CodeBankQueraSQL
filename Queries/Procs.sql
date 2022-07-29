USE DBProjectPhase2
------------------------------------------------------------------------------------------------
--SP 1
CREATE PROCEDURE NumClasses @Name varchar(50) AS BEGIN
SELECT COUNT(*)
FROM Users
    JOIN userSubmitClass ON Users.userID = userSubmitClass.UserID
    JOIN Class ON Class.classID = userSubmitClass.ClassID
WHERE Users.firstname LIKE '%' + @Name;
END

GO

--SP 2
CREATE PROCEDURE NearDeadline @UserID int,
@Day int AS BEGIN
SELECT *
FROM Exercises
WHERE classID IN (
        SELECT Class.classID
        FROM Class
            JOIN userSubmitClass ON Class.classID = userSubmitClass.ClassID
            JOIN Users ON Users.UserID = userSubmitClass.UserID
        WHERE Users.UserID = @UserID
    )
    AND DATEDIFF(DAY, deadline, CURRENT_TIMESTAMP) = @Day;
END

GO
------------------------------------------------------------------------------------------------
-- SP 3
CREATE PROCEDURE AverageNameQuestion @Questions int,
@Contest varchar(50),
@Category varchar(50) AS BEGIN
SELECT AVG(LEN(LastName))
FROM Users
WHERE userID IN (
        SELECT userID
        FROM Users U,
            SubmitForContest SFC,
            Contest C
        WHERE U.userID = SFC.developerID
            AND SFC.ContestID = C.ContestID
            AND C.ExerciseID IN (
                SELECT ExerciseID
                FROM Exercises E
                WHERE ExerciseID IN (
                        SELECT ExerciseID
                        FROM Question Q
                        WHERE (
                                SELECT COUNT(*)
                                FROM Users,
                                    Solution,
                                    Question
                                WHERE Q.QuestionID = Question.QuestionID
                                    AND U.userID = Users.userID
                                    AND Users.userID = Solution.UserID
                                    AND Solution.QuestionID = Question.QuestionID
                                    AND Question.GroupingOFQ = @Category
                            ) > @Questions
                    )
            )
    )
END
------------------------------------------------------------------------------------------------
-- SP 4
CREATE PROCEDURE FavoriteStudent @TeacherName varchar(50),
@Semester varchar(50) AS BEGIN
SELECT *
FROM Users
WHERE userID IN (
	SELECT userID
	FROM Users U, userSubmitClass USC, Class C
	WHERE U.userID = USC.UserID AND C.classID = UCS.ClassID
		AND C.IsArchived = 0 AND C.TeachersName = @TeacherName
) AND EXISTS(
	SELECT *
	FROM Users U, userSubmitClass USC, Class C
	WHERE U.userID = USC.UserID AND C.classID = UCS.ClassID
		AND C.IsArchived = 1
);
END

--  --
CREATE PROCEDURE BestRecently @TopX int,
@Date varchar(50) AS BEGIN
	SELECT FirstName, LastName
	FROM Users
	WHERE userID IN (
		SELECT userID
		FROM Developer, 
	)
END
------------------------------------------------------------------------------------------------
--SP 6

create proc ActiveProfessors
@A int,
@X varchar(20),
@Y varchar(30)
as 
select Top (@A) u.username,COUNT(*) as answers from Users u join Solution s
on s.UserID = u.userID
where u.userID in (
	select c.userID
	from Class c 
	where c.InistituteID in (
		Select i.InistituteID
		from Inistitute i
		where i.InistitueName = @Y
	) and c.IsArchived =0
	and c.TeachersName = u.firstname + ' '+ u.lastname
) and s.QuestionID in (select q.QuestionID from QuestionLabel q where q.Name =@X)
group by u.username
order by answers asc

EXEC ActiveProfessors 3,'Technology','Khaje Nasir Toosi Univercity'
------------------------------------------------------------------------------------------------
--SP 7

create proc LookingForJobS
@A int,
@B int,
@C varchar(20)
AS 
select Avg(age) ,city
from Users u
where u.userID in(
	select a.UserID
	from ApplyForOffer a 
	where a.OfferID in (
		select o.OfferID 
		from Offer o 
		where o.CompanyID in(
			select c.CompanyID 
			from Company c 
			where u.city = c.AddressCity
			and c.CompanyID in(
				select cs.CompanyID
				from CompanySize cs
				where cs.MinNumber =@A AND cs.MaxNumber = @B
			)
		)  
		AND o.Type = @C
	)
)
group by city

exec LookingForJob 1000,2000,'Part Time'
------------------------------------------------------------------------------------------------
--SP 8 

CREATE PROC NumSolutions
@X varchar(20) 
as 
select COUNT(*) as sols, QuestionID
from Solution s1
where exists( 
	select *
	from Solution s2
	where s1.QuestionID = S2.QuestionID and
	s2.Status = 'Incomplete'	
) 
and s1.Status = 'Accepted'
group by QuestionID

Exec NumSolutions 'Incomplete'
------------------------------------------------------------------------------------------------
--SP 9 

create proc MostPopulatedClass 
@X varchar(20),
@Y varchar(20)
as
select Count(*) as submitters,ClassID 
from userSubmitClass
where ClassID in (
	select c.classID
	from Class c
	where c.InistituteID in (
		select i.InistituteID
		from Inistitute i
		where i.InistitueName = @X
	) and YearID in(
		select a.id
		from AcademicYear a
		where @Y like a.StartYear + '%' + a.Semester
	)
)
group by ClassID
order by submitters desc

exec MostPopulatedClass 'Amir Kabir','99 Fall'


------------------------------------------------------------------------------------------------
--SP 10

create  proc AllCompanies
@X varchar(20),
@Y varchar(20)
as
select CompanyName from Company c
where CompanyID not in(
	select o.CompanyID from Offer o where o.OfferID in(
		select a.OfferID
		from ApplyForOffer a
		where UserID in(
			select userID
			from Users u
			where u.city = @X
			and u.UnivercityID in(
				select i.InistituteID
				from Inistitute i
				where i.InistitueName = @Y
			)
		)
	)
)


Exec AllCompanies 'Gazvin','Tehran Univercity'
------------------------------------------------------------------------------------------------
--SP 11

create  Proc MostWantedJobs
@X INTEGER,
@A varchar(20),
@B varchar(30),
@C varchar(30)
as
select top (@X) count(*) as Appliers,a.OfferID total 
from ApplyForOffer a JOIN Offer o 
on o.OfferID = a.OfferID
where o.CompanyID in(select CompanyID from Company c
	where c.CompanyName = @A 
	and c.CompanyID in (select CT.CompanyID from CompanyTechnology CT 
		where CT.Name = @B
	)
) and o.Experience = @C
group by a.OfferID
Order by Appliers desc

exec MostWantedJobs 3,'Digikala','C#','junior'
select * from ApplyForOffer
select * from Offer
select * from Company
select * from CompanyTechnology
------------------------------------------------------------------------------------------------
--SP 12

create proc NoCompetition 
@A varchar(20)
as
select  username
from Users u
where NOT exists(	
	SELECT * 
	from SubmitForContest s1 
	where s1.developerID = u.userID
) or @A = all(
	select InistitueName
	from Inistitute 
	where InistituteID in (
		SELECT InistituteID
		from Class where classID in(
			select classID 
			from userSubmitClass s2 
			where s2.UserID = u.userID)
	)
)


exec NoCompetition 'Amir Kabir'

select * from Inistitute
select * from SubmitForContest
select * from userSubmitClass
select * from Class
------------------------------------------------------------------------------------------------
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
--SP 14

------------------------------------------------------------------------------------------------
--SP 15

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
------------------------------------------------------------------------------------------------
--SP 16
create proc AllJobs 
@A varchar(20),
@B int 
as
select  u.lastname  from Users u
where NOT exists(	
	(select OfferID from Offer 
	where CompanyID in (select CompanyID from Company where CompanyName =@A) 
	)
	except
	(select OfferID from ApplyForOffer a
	where a.UserID = u.userID)	
) and not exists(
	select * from userSubmitClass s
	where s.UserID = u.userID 
	and ClassID in(select ClassID from Class c where c.Capacity >=@B)
)

exec AllJobs 'Snap',40