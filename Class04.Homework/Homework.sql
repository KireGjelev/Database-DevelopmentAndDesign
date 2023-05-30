--Create new view (vv_StudentGrades) that will List all StudentIds and count of Grades per student
CREATE VIEW vv_StudentGrades
AS
SELECT StudentID, COUNT(Grade) as GradeCount
FROM Grade
GROUP BY StudentID
GO

--Change the view to show Student First and Last Names instead of StudentID
ALTER VIEW vv_StudentGrades
AS
SELECT s.FirstName as FirstName, s.LastName as LastName, COUNT(Grade) as GradeCount
FROM Grade g
INNER JOIN Student s
on g.StudentID = s.ID
GROUP BY s.FirstName, s.LastName
GO

--List all rows from view ordered by biggest Grade Coun
SELECT *
FROM vv_StudentGrades
ORDER BY GradeCount DESC


--Declare scalar variable for storing FirstName values
	--Assign value ‘Antonio’ to the FirstName variable
	--Find all Students having FirstName same as the variable
DECLARE @FirstName NVARCHAR(50)
SET @FirstName = 'Antonio'

SELECT *
FROM Student
WHERE FirstName = FirstName

--Declare table variable that will contain StudentId, StudentName and DateOfBirth
	--Fill the table variable with all Female students
DECLARE @StudentList TABLE(
StudentId int,
StudentName nvarchar(50),
DateOfBirth date
)
INSERT INTO @StudentList (StudentId, StudentName, DateOfBirth)

SELECT ID, FirstName, DateOfBirth
FROM Student
WHERE Gender = 'F'

SELECT * 
FROM @StudentList

--Declare temp table that will contain LastName and EnrolledDate columns
	--Fill the temp table with all Male students having First Name starting with ‘A’
	--Retrieve the students from the table which last name is with 7 characters
CREATE TABLE #MaleStudents(
LastName NVARCHAR(50), 
EnrolledDate date
)
INSERT INTO #MaleStudents

SELECT LastName, EnrolledDate
FROM Student
WHERE Gender = 'M' and FirstName like 'A%' 

SELECT *
FROM #MaleStudents
WHERE LEN(LastName) = 7

--Find all teachers whose FirstName length is less than 5 and the first 3 characters of their FirstName and LastName are the same
CREATE TABLE #Teachers(
FirstName NVARCHAR(100),
LastName NVARCHAR(100)
)
INSERT INTO #Teachers

SELECT FirstName, LastName
FROM Teacher
WHERE SUBSTRING(FirstName,1,3) = SUBSTRING(LastName,1,3) and LEN(FirstName) < 5

SELECT *
FROM #Teachers