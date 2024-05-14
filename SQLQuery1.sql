USE [Hospital_1]

INSERT INTO Departments (Id, Building, Name) VALUES
(1, 1, 'Cardiology'),
(2, 1, 'Gastroenterology'),
(3, 1, 'General Surgery'),
(4, 2, 'Microbiology');

INSERT INTO Doctors (Id, Name, Premium, Salary, Surname) VALUES
(1, 'John', 1000, 5000, 'Doe'),
(2, 'Jane', 2000, 6000, 'Smith');

INSERT INTO DoctorsExaminations (Id, EndTime, StartTime, DoctorId, ExaminationId, WardId) VALUES
(1, '10:00:00', '08:00:00', 1, 1, 1),
(2, '15:00:00', '13:00:00', 2, 2, 2);

INSERT INTO Donations (Id, Amount, Date, DepartmentId, SponsorId) VALUES
(1, 1000, '2024-05-14', 1, 1),
(2, 2000, '2024-05-14', 2, 2);

INSERT INTO Examinations (Id, Name) VALUES
(1, 'Examination1'),
(2, 'Examination2');

INSERT INTO Sponsors (Id, Name) VALUES
(1, 'Sponsor1'),
(2, 'Sponsor2');

INSERT INTO Wards (Id, Name, Places, DepartmentId) VALUES
(1, 'Ward1', 10, 1),
(2, 'Ward2', 20, 2);
