--Show complete information of all students
SELECT * FROM Student;

--Show all available courses
SELECT * FROM Course;

--Show all instructor information
SELECT * FROM Instructor;


--Show student names, enrolled courses and grades
SELECT S.FName,
       S.LName,
       C.CourseName,
       E.Grade 
FROM Student S
JOIN Enrollment E
ON S.StudID=E.StudID
JOIN Course C
ON E.CourseID=C.CourseID;


--Display course names with assigned credits
SELECT CourseName, Credits FROM Course;



--Count total students in each department
SELECT D.DeptName,
       COUNT(*) AS TotalStudents
FROM Department D
JOIN Student S
ON D.DeptID=S.DeptID
GROUP BY DeptName;


--Show which instructor teaches which course
SELECT C.CourseName,
       I.FName || ' ' || I.LName AS Instructor
FROM Course C
JOIN Instructor I
ON C.InstID=I.InstID;


--Display all courses having 3 credits
SELECT CourseName FROM Course WHERE Credits=3;


--Find students who achieved A+
SELECT * FROM Enrollment WHERE Grade='A+';



--Show which department offers which courses
SELECT D.DeptName,
       C.CourseName
FROM Department D
JOIN Course C
ON D.DeptID = C.DeptID;
