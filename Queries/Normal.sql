-- Change Database Name --
ALTER database DBProjectPhase1 SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER database DBProjectPhase1 MODIFY NAME = Quera;
ALTER database Quera SET MULTI_USER WITH ROLLBACK IMMEDIATE

USE Quera;

-- Change Contest,RegisterFee to int
ALTER TABLE Contest
ALTER COLUMN RegisterFee int;

-- Change Name of Columns --
EXEC sp_rename 'developer', 'Developer';

-- Change the Name of Columns
EXEC sp_rename 'Contest.userPassword', 'UsePassword';
EXEC sp_rename 'Contest.ScoreBoard', 'UseScoreboard';
EXEC sp_rename 'Contest.isTest', 'UseTestMode';
EXEC sp_rename 'Contest.startDate', 'StartDate';
EXEC sp_rename 'Contest.teamAllowed', 'UseTeamAllowed';
EXEC sp_rename 'Contest.singlePartisipant', 'UseSingleParticipant';
EXEC sp_rename 'ApplyForOffer.userID', 'UserId';
EXEC sp_rename 'Contest.[Document]', 'Document';


-- Change Data Type of Switch Cols to Bit
ALTER TABLE Contest
ALTER COLUMN UseSingleParticipant bit not null;

ALTER TABLE Contest
ALTER COLUMN UsePassword bit not null;

ALTER TABLE Contest
ALTER COLUMN UseScoreboard bit not null;

ALTER TABLE Contest
ALTER COLUMN UseTestMode bit not null;

ALTER TABLE Contest
ALTER COLUMN UseTeamAllowed bit not null;

ALTER TABLE Contest
ALTER COLUMN UseSingleParticipant bit not null;

-- Class --
ALTER TABLE Class
ADD IsArchived bit not null;

ALTER TABLE Class
ADD YearID int not null FOREIGN KEY (YearID) REFERENCES AcademicYear;

-- Contest --
ALTER TABLE Contest
DROP COLUMN Inistitute;

ALTER TABLE Contest
ADD InistituteID int;
ALTER TABLE Contest
ADD FOREIGN KEY(InistituteID) REFERENCES Inistitute;


ALTER TABLE Contest
DROP CONSTRAINT FK__Contest__userID__5FB337D6;

ALTER TABLE Contest
DROP COLUMN UserID;

ALTER TABLE Contest
ADD ManInChargeID char(10);

ALTER TABLE Contest
ADD FOREIGN KEY(ManInChargeID) REFERENCES ManInCharge;


-- Change relationship Between Solutions and Excesise
-- To Question
ALTER TABLE Solutions
DROP CONSTRAINT FK__Solutions__Exerc__48CFD27E;
ALTER TABLE Solutions
DROP COLUMN ExerciseID;

ALTER TABLE Solutions
ADD QuestionID int;
ALTER TABLE Solutions
ADD FOREIGN KEY(QuestionID) REFERENCES Question;

-- Add Relationship Between 

-- Break Company
SELECT TABLE_NAME,
       CONSTRAINT_TYPE,CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME='Offer';

ALTER TABLE Offer
DROP CONSTRAINT FK__Offer__CompanyID__5441852A;

DROP TABLE Company;

-- Add Skills to Developer --
CREATE TABLE DevSkill(
	ID int IDENTITY PRIMARY KEY,
	Name varchar(20) not null,
	DevID int FOREIGN KEY REFERENCES Developer
);

-- CREATE Company
CREATE TABLE Company(
	CompanyID int PRIMARY KEY,
	AdminID int FOREIGN KEY REFERENCES Users ,
	CompanyName varchar(20) not null,
	EstablishYear int not null,
	PhoneNumber varchar(20),
	AddressCity varchar(20),
	AddressRest varchar(60),
	AddressCoordinateLatitude float,
	AddressCoordinateMagnitude float,
	WorkFocus varchar(40) not null,
	Website varchar(20) not null,
	Logo image,
	Description varchar(MAX)
);

CREATE TABLE CompanySize(
	CompanySizeID int IDENTITY PRIMARY KEY,
	CompanyID int FOREIGN KEY REFERENCES Company,
	MinNumber int not null,
	MaxNumber int not null
);

CREATE TABLE CompanyLink(
	Link varchar(50) not null PRIMARY KEY,
	CompanyID int FOREIGN KEY REFERENCES Company
);

CREATE TABLE CompanyTechnology(
	Name varchar(20) PRIMARY KEY,
	CompanyID int FOREIGN KEY REFERENCES Company
);

CREATE TABLE CompanyTechnologySkill(
	Name varchar(20) PRIMARY KEY,
	TechName varchar(20) FOREIGN KEY REFERENCES CompanyTechnology
);

CREATE TABLE CompanyBenefit(
	Name varchar(20) PRIMARY KEY,
	CompanyID int REFERENCES Company
);

CREATE TABLE WorkFocus(
	Name varchar(20) PRIMARY KEY,
	CompanyID int REFERENCES Company
);

-- Add Foriegn Key Constraints again to dependant TABLEs
ALTER TABLE Offer
ADD FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID);

-- Add QuestionBank --
CREATE TABLE QuestionBank(
	ID int PRIMARY KEY,
	Name varchar(50) not null,
);

CREATE TABLE QuestionBankHaveQuestion(
	BankID int FOREIGN KEY REFERENCES QuestionBank not null,
	QuestionID int FOREIGN KEY REFERENCES Question not null,
	PRIMARY KEY(BankID, QuestionID)
);

-- Offer --
SELECT TABLE_NAME,
       CONSTRAINT_TYPE,CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME='ApplyForOffer';

ALTER TABLE ApplyForOffer
DROP CONSTRAINT FK__ApplyForO__Offer__1F98B2C1;

SELECT TABLE_NAME,
       CONSTRAINT_TYPE,CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME='BookmarkOffer';

ALTER TABLE BookmarkOffer
DROP CONSTRAINT FK__BookmarkO__Offer__17F790F9;

DROP TABLE Offer;


CREATE TABLE Offer (
	OfferID int primary Key,
	CompanyID int FOREIGN KEY REFERENCES Company,
	MinSalary int,
	MaxSalary int,
	Type varchar(20),
	Title varchar(20) not null,
	isRemote varchar(20) not null,
	Status varchar(20) not null,
	Experience varchar(20),
	PostedTime DateTime not null,
);

CREATE TABLE OfferTechnologySkill(
	Name varchar(20) PRIMARY KEY,
	OfferID int FOREIGN KEY REFERENCES Offer,
	IsPlus bit not null
);

CREATE TABLE OfferBenefit(
	Name varchar(20) PRIMARY KEY,
	OfferID int REFERENCES Offer
);

ALTER TABLE BookmarkOffer
ADD FOREIGN KEY (OfferID) REFERENCES Offer(OfferID);


ALTER TABLE ApplyForOffer
ADD FOREIGN KEY (OfferID) REFERENCES Offer(OfferID);

-- Break Acadamic Year --
ALTER TABLE Class
DROP COLUMN AcademicYear;

CREATE TABLE AcademicYear(
	ID int identity PRIMARY KEY,
	StartYear int not null,
	Semester varchar(20) not null,
);


DROP TABLE ManInCharge;
CREATE TABLE ManInCharge(
	NationalCode char(10) PRIMARY KEY,
	ContestID int FOREIGN KEY REFERENCES Contest,
	Name varchar(40),
	Email varchar(40),
	PhoneNumber varchar(40)
)

-- Question --
DROP TABLE Question;

create TABLE Question(
	QuestionID int primary Key,
	ExerciseID  int FOREIGN KEY REFERENCES Exercises ,
	userIDForJudgment int FOREIGN KEY REFERENCES Users ,
	userIDForcreate int FOREIGN KEY REFERENCES Users ,
	Description varchar(20),
	SolutionStatus varchar(20),
	PostedTime DateTime,
	Category varchar(20),
)

CREATE TABLE QuestionLabel(
	ID int PRIMARY KEY,
	Name varchar(20) not null,
	QuestionID int FOREIGN KEY REFERENCES Question
);

CREATE TABLE QuestionLimits(
	ID int PRIMARY KEY,
	Name varchar(20) not null,
	QuestionID int FOREIGN KEY REFERENCES Question
);

-- Convert Solution From Entity to Relationship
DROP TABLE Solutions;

CREATE TABLE Solution(
	SolutionID int PRIMARY KEY,
	QuestionID int FOREIGN KEY REFERENCES Question,
	UserID int FOREIGN KEY REFERENCES Users,
	RankOfUser int FOREIGN KEY REFERENCES ranksOFUsers,
	PostedTime datetime,
	Score int not null,
	Status varchar(20) not null
);

-- Change Primary Key to Two Columns
DROP TABLE Applicant;

CREATE TABLE Applicant(
 ApplicantID int PRIMARY KEY,
 userID int FOREIGN KEY REFERENCES Users ,
)


DROP TABLE ApplyForOffer;

CREATE TABLE ApplyForOffer(
	OfferID int FOREIGN KEY REFERENCES Offer not null,
	UserID int FOREIGN KEY REFERENCES Users not null,
	PRIMARY KEY(OfferID, UserID)
);


DROP TABLE BookmarkOffer;

CREATE TABLE BookmarkOffer(
	OfferID int FOREIGN KEY REFERENCES Offer not null,
	UserID int FOREIGN KEY REFERENCES Users not null,
	PRIMARY KEY(OfferID, UserID)
);


DROP TABLE CalculateRank;

CREATE TABLE CalculateRank(
	UserID int FOREIGN KEY REFERENCES Users not null,
	ClassID int FOREIGN KEY REFERENCES Class not null,
	PRIMARY KEY(UserID, ClassID)
)

DROP TABLE ManageContest;

CREATE TABLE ManageContest(
	UserID int FOREIGN KEY REFERENCES Users,
	ContestID  int FOREIGN KEY REFERENCES Contest
	PRIMARY KEY(UserID, ContestID)
)


DROP TABLE QuestionSupport;

CREATE TABLE QuestionSupport(
	QuestionID int FOREIGN KEY REFERENCES Question,
	UserID int FOREIGN KEY REFERENCES Users,
	PRIMARY KEY(QuestionID, UserID)
)

DROP TABLE QuestionCheaters;

CREATE TABLE QuestionCheaters(
	QuestionID int FOREIGN KEY REFERENCES Question,
	UserID int FOREIGN KEY REFERENCES Users,
	PRIMARY KEY(QuestionID, UserID)
)

DROP TABLE userSubmitClass;

CREATE TABLE userSubmitClass(
	ClassID int FOREIGN KEY REFERENCES Class,
	UserID int FOREIGN KEY REFERENCES Users,
	PRIMARY KEY(ClassID, UserID)
)

-- Add firstname and last name to Users Column
ALTER TABLE Users
ADD FirstName varchar(50) not null;
ALTER TABLE Users
ADD LastName varchar(50) not null;

ALTER TABLE Users
ALTER COLUMN Email varchar(30)
ALTER TABLE Users
ALTER COLUMN username varchar(30)
ALTER TABLE Users
ALTER COLUMN AddressofUser varchar(50)

ALTER TABLE Inistitute
ALTER COLUMN InistitueName varchar(40)
ALTER TABLE Inistitute
ALTER COLUMN InistitueType varchar(30)
ALTER TABLE Inistitute
ALTER COLUMN InistitueWebSite varchar(40)

ALTER TABLE Class
ALTER COLUMN ClassDetail varchar(40);

ALTER TABLE Contest 
ADD CompanyID int FOREIGN KEY REFERENCES Company

ALTER TABLE Users
ADD Age int

ALTER TABLE Company
ADD Size int

ALTER TABLE Users
ADD City varchar(20);

ALTER TABLE Class
ADD YearID int FOREIGN KEY REFERENCES AcademicYear;