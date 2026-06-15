INSERT INTO Department VALUES(1,'CSE','Dr. Rahman',0,0);
INSERT INTO Department VALUES(2,'EEE','Dr. Karim',0,0);
INSERT INTO Department VALUES(3,'BBA','Dr. Akter',0,0);


INSERT INTO Student VALUES(101,'Tanvir','Ahmed',DATE '2003-05-10','Male','tanvir@gmail.com','01711111111','Khulna',1);

INSERT INTO Student VALUES(102,'Sakib','Hasan',DATE '2002-08-15','Male','sakib@gmail.com','01822222222','Dhaka',1);

INSERT INTO Student VALUES(103,'Nusrat','Jahan',DATE '2003-03-22','Female','nusrat@gmail.com','01933333333','Jessore',2);

INSERT INTO Student VALUES(104,'Rafi','Islam',DATE '2003-10-10','Male','rafi@gmail.com','01777777777','Khulna',3);

INSERT INTO Student VALUES(105,'Mim','Akter',DATE '2004-01-12','Female','mim@gmail.com','01688888888','Dhaka',1);

INSERT INTO Student VALUES(106,'Hasan','Mahmud',DATE '2003-06-11','Male','hasan@gmail.com','01744444444','Khulna',2);

INSERT INTO Student VALUES(107,'Rima','Sultana',DATE '2003-07-08','Female','rima@gmail.com','01855555555','Barisal',1);

INSERT INTO Student VALUES(108,'Jahid','Hossain',DATE '2002-11-20','Male','jahid@gmail.com','01966666666','Rajshahi',3);

INSERT INTO Student VALUES(109,'Farzana','Rahman',DATE '2003-09-17','Female','farzana@gmail.com','01777778888','Dhaka',2);

INSERT INTO Student VALUES(110,'Arif','Khan',DATE '2004-02-14','Male','arif@gmail.com','01899999999','Khulna',1);


INSERT INTO Instructor VALUES(201,'Anis','Rahman','anis@gmail.com','01911111111',1);

INSERT INTO Instructor VALUES(202,'Fahim','Karim','fahim@gmail.com','01922222222',2);

INSERT INTO Instructor VALUES(203,'Shafiq','Ahmed','shafiq@gmail.com','01933333333',3);

INSERT INTO Instructor VALUES(204,'Mahmud','Hasan','mahmud@gmail.com','01788888888',1);

INSERT INTO Instructor VALUES(205,'Rubel','Islam','rubel@gmail.com','01877777777',2);



INSERT INTO Classroom VALUES(1,'A101','Academic Building',60);

INSERT INTO Classroom VALUES(2,'B205','Engineering Building',80);

INSERT INTO Classroom VALUES(3,'C301','Business Building',50);

INSERT INTO Classroom VALUES(4,'D105','New Academic Building',70);


INSERT INTO Semester VALUES(1,'Spring',2025);

INSERT INTO Semester VALUES(2,'Summer',2025);

INSERT INTO Semester VALUES(3,'Fall',2025);



INSERT INTO Course VALUES
(301,'Database Systems','CSE301',3,1,201,1,1);

INSERT INTO Course VALUES
(302,'Data Structures','CSE201',3,1,204,2,1);

INSERT INTO Course VALUES
(303,'Digital Electronics','EEE302',3,2,202,2,2);

INSERT INTO Course VALUES
(304,'Marketing Principles','BBA101',3,3,203,3,1);

INSERT INTO Course VALUES
(305,'Operating Systems','CSE303',3,1,201,4,3);

INSERT INTO Course VALUES
(306,'Circuit Analysis','EEE201',3,2,205,2,3);


INSERT INTO Enrollment VALUES(1,101,301,'A+',DATE '2025-01-15');
INSERT INTO Enrollment VALUES(2,102,301,'A',DATE '2025-01-15');
INSERT INTO Enrollment VALUES(3,103,303,'A-',DATE '2025-01-15');
INSERT INTO Enrollment VALUES(4,104,304,'B+',DATE '2025-01-15');
INSERT INTO Enrollment VALUES(5,105,302,'A+',DATE '2025-01-15');
INSERT INTO Enrollment VALUES(6,106,306,'A',DATE '2025-01-15');
INSERT INTO Enrollment VALUES(7,107,305,'A-',DATE '2025-01-15');
INSERT INTO Enrollment VALUES(8,108,304,'B',DATE '2025-01-15');
INSERT INTO Enrollment VALUES(9,109,303,'A+',DATE '2025-01-15');
INSERT INTO Enrollment VALUES(10,110,301,'A',DATE '2025-01-15');
INSERT INTO Enrollment VALUES(11,101,305,'A+',DATE '2025-01-15');
INSERT INTO Enrollment VALUES(12,102,302,'A-',DATE '2025-01-15');

COMMIT;