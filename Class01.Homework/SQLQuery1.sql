CREATE DATABASE SEDCACADEMYDB

USE SEDCACADEMYDB

CREATE TABLE Student(
ID int identity(1,1) not null,
FirstName nvarchar(30) not null,
LastName nvarchar(30) not null,
DateOfBirth date not null,
EnrolledDate date null,
Gender nchar(1) not null,
NacionalIDNumber nvarchar(30) null,
StudentCardNumber int not null
)

CREATE TABLE Teacher(
ID int identity(1,1) not null,
FirstName nvarchar(30) not null,
LastName nvarchar(30) not null,
DateOfBirth date not null,
AcademicRank nvarchar(50) not null,
HireDate date not null
)

CREATE TABLE Grade(
ID int identity(1,1) not null,
StudentID int not null,
CourseID int not null,
TeacherID int not null,
Grade int not null,
Comment nvarchar(max) null,
CreatedDate date not null
)

CREATE TABLE Course(
ID int identity(1,1) not null,
[Name] nvarchar(100) not null,
Credit int not null,
AcademicYear int not null,
Semester int null
)

CREATE TABLE AchievementType(
ID int identity(1,1) not null,
[Name] nvarchar(100) not null,
[Description] nvarchar(max) null, 
ParticipationRate int not null
)

CREATE TABLE GradeDetails(
ID int identity(1,1) not null,
GradeID int not null,
AchievementTypeID int not null,
AchievementPoints int not null,
AchievementMaxPoints int not null,
AchievementDate date not null
)