CREATE DATABASE [Hospital_1]
GO
USE [Hospital_1]
GO

CREATE TABLE Departments (
    Id INT PRIMARY KEY,
    Building INT,
    Name NVARCHAR(100)
);

CREATE TABLE Doctors (
    Id INT PRIMARY KEY,
    Name NVARCHAR(MAX),
    Premium MONEY,
    Salary MONEY,
    Surname NVARCHAR(MAX)
);

CREATE TABLE DoctorsExaminations (
    Id INT PRIMARY KEY,
    EndTime TIME,
    StartTime TIME,
    DoctorId INT,
    ExaminationId INT,
    WardId INT,
    FOREIGN KEY (DoctorId) REFERENCES Doctors(Id),
    FOREIGN KEY (ExaminationId) REFERENCES Examinations(Id),
    FOREIGN KEY (WardId) REFERENCES Wards(Id)
);

CREATE TABLE Donations (
    Id INT PRIMARY KEY,
    Amount MONEY,
    Date DATE,
    DepartmentId INT,
    SponsorId INT,
    FOREIGN KEY (DepartmentId) REFERENCES Departments(Id),
    FOREIGN KEY (SponsorId) REFERENCES Sponsors(Id)
);

CREATE TABLE Examinations (
    Id INT PRIMARY KEY,
    Name NVARCHAR(100)
);

CREATE TABLE Sponsors (
    Id INT PRIMARY KEY,
    Name NVARCHAR(100)
);

CREATE TABLE Wards (
    Id INT PRIMARY KEY,
    Name NVARCHAR(20),
    Places INT,
    DepartmentId INT,
    FOREIGN KEY (DepartmentId) REFERENCES Departments(Id)
);