-- 1. Anonymous Block
--Search student by ID (Display the name of student ID 101)

SET SERVEROUTPUT ON;

DECLARE
    v_name VARCHAR2(30);
BEGIN
    SELECT FName
    INTO v_name
    FROM Student
    WHERE StudID=101;

    DBMS_OUTPUT.PUT_LINE(v_name);
END;
/

-- 2. Procedure

--Shows all students of a department
CREATE OR REPLACE PROCEDURE Show_Students(
    p_DeptID NUMBER
)
IS BEGIN
    FOR rec IN (
        SELECT *
        FROM Student
        WHERE DeptID=p_DeptID
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
        rec.StudID || ' ' ||
        rec.FName || ' ' ||
        rec.LName);
    END LOOP;
END;
/

--Run
BEGIN
Show_Students(1);
END;
/

-- 3. Function

--Count total students of a department
CREATE OR REPLACE FUNCTION Count_Students(
    p_DeptID NUMBER
)
RETURN NUMBER
IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Student
    WHERE DeptID=p_DeptID;

    RETURN v_count;
END;
/

--Run
SELECT Count_Students(1)
FROM DUAL;


-- 4. Cursor

--Shows student-course enrollment records
DECLARE

CURSOR c1 IS
SELECT S.FName,
       C.CourseName
FROM Student S
JOIN Enrollment E
ON S.StudID=E.StudID
JOIN Course C
ON E.CourseID=C.CourseID;

BEGIN

FOR rec IN c1 LOOP

DBMS_OUTPUT.PUT_LINE(
rec.FName || ' -> ' ||
rec.CourseName);

END LOOP;

END;
/

-- 5. Trigger

--Automatically update student count
CREATE OR REPLACE TRIGGER trg_student_count
AFTER INSERT ON Student
FOR EACH ROW
BEGIN

UPDATE Department
SET NStudent = NStudent + 1
WHERE DeptID = :NEW.DeptID;

END;
/

--Test Trigger
INSERT INTO Student VALUES(
111,
'Rakib',
'Hossain',
DATE '2003-08-10',
'Male',
'rakib@gmail.com',
'01712345678',
'Khulna',
1
);

--After inserting
SELECT DeptID,NStudent
FROM Department;


-- 6. Exception Handling

--Searching for a non-existing student
DECLARE

v_name VARCHAR2(30);

BEGIN

SELECT FName
INTO v_name
FROM Student
WHERE StudID=999;

EXCEPTION

WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('Student Not Found');

END;
/