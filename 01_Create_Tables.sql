DROP TABLE Course;
DROP TABLE Enrollment;
DROP TABLE Student;
DROP TABLE Instructor;
DROP TABLE Classroom;
DROP TABLE Semester;
DROP TABLE Department;


CREATE TABLE Department(
    DeptID NUMBER PRIMARY KEY,
    DeptName VARCHAR2(50),
    HOD VARCHAR2(50),
    NStudent NUMBER,
    NInstructor NUMBER
);

CREATE TABLE Student(
    StudID NUMBER PRIMARY KEY,
    FName VARCHAR2(30),
    LName VARCHAR2(30),
    DOB DATE,
    Gender VARCHAR2(10),
    Email VARCHAR2(50),
    PhoneNo VARCHAR2(20),
    Address VARCHAR2(100),
    DeptID NUMBER, FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

CREATE TABLE Instructor(
    InstID NUMBER PRIMARY KEY,
    FName VARCHAR2(30),
    LName VARCHAR2(30),
    Email VARCHAR2(50),
    PhoneNo VARCHAR2(20),
    DeptID NUMBER,

    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

CREATE TABLE Classroom(
    RoomID NUMBER PRIMARY KEY,
    RoomNo VARCHAR2(20),
    Building VARCHAR2(50),
    Capacity NUMBER
);

CREATE TABLE Semester(
    SemesterID NUMBER PRIMARY KEY,
    SemesterName VARCHAR2(30),
    Year NUMBER
);

CREATE TABLE Course(
    CourseID NUMBER PRIMARY KEY,
    CourseName VARCHAR2(50),
    CourseCode VARCHAR2(20),
    Credits NUMBER,
    DeptID NUMBER,
    InstID NUMBER,
    RoomID NUMBER,
    SemesterID NUMBER,

    FOREIGN KEY (DeptID) REFERENCES Department(DeptID),

    FOREIGN KEY (InstID) REFERENCES Instructor(InstID),

    FOREIGN KEY (RoomID) REFERENCES Classroom(RoomID),

    FOREIGN KEY (SemesterID) REFERENCES Semester(SemesterID)
);

CREATE TABLE Enrollment(
    EnID NUMBER PRIMARY KEY,
    StudID NUMBER,
    CourseID NUMBER,
    Grade VARCHAR2(5),
    EnrollDate DATE,

    FOREIGN KEY(StudID) REFERENCES Student(StudID),

    FOREIGN KEY(CourseID) REFERENCES Course(CourseID)
);