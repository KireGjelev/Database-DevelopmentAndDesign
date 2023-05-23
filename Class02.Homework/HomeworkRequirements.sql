--Find all Students with FirstName = Antonio
SELECT *
FROM Student
WHERE FirstName = 'Antonio'

--Find all Students with DateOfBirth greater than ‘01.01.1999’
SELECT * 
FROM Student
WHERE DateOfBirth > '01.01.1999'

--Find all Students with LastName starting With ‘J’ enrolled in January/1998
SELECT *
FROM Student
WHERE LastName LIKE 'J%' and (EnrolledDate >= '01.01.1998' and EnrolledDate <= '01.31.1998')

--List all Students ordered by FirstName
SELECT *
FROM Student
ORDER BY FirstName 

--List all Teacher Last Names and Student Last Names in single result set
SELECT LastName
FROM Teacher
UNION 
SELECT LastName
FROM Student

--Create Foreign key constraints as needed

--They are already created in the SEDCHomeworkSetup

--ALTER TABLE Student
--ADD PRIMARY KEY (ID)

--ALTER TABLE dbo.Teacher
--ADD PRIMARY KEY (ID)

--ALTER TABLE Course
--ADD PRIMARY KEY (ID)

--ALTER TABLE Grade
--ADD PRIMARY KEY (ID)

--ALTER TABLE GradeDetails
--ADD PRIMARY KEY (ID)

--ALTER TABLE chievementType
--ADD PRIMARY KEY (ID)


--ALTER TABLE [dbo].[GradeDetails] 
--ADD CONSTRAINT [FK_Grade_Student]
--FOREIGN KEY ([GradeID]) 
--REFERENCES [dbo].[Grade]([ID])

--ALTER TABLE [dbo].[Grade]
--ADD CONSTRAINT [FK_Grade_Student] 
--FOREIGN KEY ([StudentID]) 
--REFERENCES [dbo].[Student]([ID])

--ALTER TABLE [dbo].[Grade] 
--ADD CONSTRAINT [FK_Grade_Student]
--FOREIGN KEY ([TeacherID]) 
--REFERENCES [dbo].[Teacher]([ID])

--ALTER TABLE [dbo].[Grade]
--ADD CONSTRAINT [FK_Grade_Student]
--FOREIGN KEY ([CourseID]) 
--REFERENCES [dbo].[Course]([ID])

--ALTER TABLE [dbo].[GradeDetails] 
--ADD CONSTRAINT FK_GradeDetails_AchievementType
--FOREIGN KEY ([AchievementTypeID]) 
--REFERENCES [dbo].[AchievementType]([ID])