Create DATABASE StudentRegistrationSystem;
USE StudentRegistrationSystem;
CREATE TABLE Student (
StudentID INT PRIMARY KEY,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
Email VARCHAR(50) UNIQUE NOT NULL,
Age INT,
Gender VARCHAR(5)
);
CREATE TABLE Course (
CourseID INT PRIMARY KEY,
CourseTitle VARCHAR(50) NOT NULL,
CreditHour INT
);
CREATE TABLE Enrolment (
EnrollmentID INT PRIMARY KEY,
StudentID INT,
CourseID INT,
EnrollmentDate DATE,
CONSTRAINT fk_student FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
CONSTRAINT fk_course FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

CREATE TABLE Lecturer (
LecturerID INT AUTO_INCREMENT PRIMARY KEY,
LecturerName VARCHAR(50),
CourseID INT,
FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
)