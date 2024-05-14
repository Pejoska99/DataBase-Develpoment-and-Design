INSERT INTO student (
    first_name, last_name, date_of_birth, enrolled_date, gender, national_id_number, student_card_number
) VALUES
    ('John', 'Doe', '2001-01-15', '2020-09-01', 'M', 'A123456789', 'S123456789'),
    ('Jane', 'Smith', '2002-02-20', '2020-09-01', 'F', 'B987654321', 'S987654321'),
    ('Michael', 'Johnson', '2000-03-30', '2019-09-01', 'M', 'C192837465', 'S192837465'),
    ('Emily', 'Davis', '2001-04-25', '2020-09-01', 'F', 'D123498765', 'S123498765'),
    ('David', 'Brown', '1999-05-10', '2018-09-01', 'M', 'E456789123', 'S456789123');
	
INSERT INTO teacher (
    first_name, last_name, date_of_birth, academic_rank, hire_date
) VALUES
    ('Alice', 'Brown', '1975-06-15', 'Professor', '2000-09-01'),
    ('Robert', 'Smith', '1980-08-22', 'Associate Professor', '2005-03-15'),
    ('Jennifer', 'Johnson', '1985-12-10', 'Assistant Professor', '2010-07-01'),
    ('Michael', 'Williams', '1970-04-18', 'Lecturer', '1998-01-10'),
    ('Laura', 'Davis', '1990-11-05', 'Instructor', '2015-11-20');
	
INSERT INTO course (
    name, credit, academic_year, semestar
) VALUES
    ('Introduction to Programming', 4, '2023-09-01', 1),
    ('Data Structures', 3, '2023-09-01', 2),
    ('Databases', 4, '2024-01-15', 2),
    ('Operating Systems', 3, '2024-01-15', 3),
    ('Algorithms', 3, '2024-09-01', 3),
    ('Software Engineering', 3, '2024-09-01', 4),
    ('Computer Networks', 3, '2025-01-15', 4),
    ('Machine Learning', 3, '2025-09-01', 5),
    ('Artificial Intelligence', 4, '2025-09-01', 5),
    ('Cyber Security', 3, '2026-01-15', 6);
	
-- Претпоставуваме дека во табелите student, course и teacher веќе има податоци

INSERT INTO grade (
    student_id, course_id, teacher_id, grade, comment, created_date
) VALUES
    (1, 1, 1, 95, 'Excellent performance', '2024-05-10'),
    (2, 2, 2, 88, 'Good understanding of concepts', '2024-05-12'),
    (3, 3, 3, 92, 'Well done', '2024-05-14'),
    (4, 4, 4, 85, 'Needs improvement in practicals', '2024-05-15'),
    (5, 5, 5, 90, 'Strong analytical skills', '2024-05-16'),
    (1, 6, 1, 87, 'Good participation', '2024-05-17'),
    (2, 7, 2, 91, 'Excellent project', '2024-05-18'),
    (3, 8, 3, 89, 'Good understanding of machine learning', '2024-05-19'),
    (4, 9, 4, 94, 'Outstanding in AI concepts', '2024-05-20'),
    (5, 10, 5, 93, 'Very good in security analysis', '2024-05-21');
	
INSERT INTO achievement_type (
    name, description, participation_rate
) VALUES
    ('Best Student', 'Awarded to the top-performing student of the year.', 95.50),
    ('Sports Champion', 'Awarded to the student who excels in sports activities.', 85.75),
    ('Best Innovator', 'Awarded to the student with the most innovative project.', 90.00),
    ('Community Service', 'Awarded to the student with outstanding community service.', 80.25),
    ('Perfect Attendance', 'Awarded to the student with perfect attendance.', 99.00);


INSERT INTO grade_detail (
    grade_id, achievement_type_id, achievement_points, achievement_max_points, achievement_date
) VALUES
    (1, 1, 95.00, 100.00, '2024-05-10'),
    (2, 2, 88.00, 100.00, '2024-05-12'),
    (3, 3, 92.00, 100.00, '2024-05-14'),
    (4, 4, 85.00, 100.00, '2024-05-15'),
    (5, 5, 90.00, 100.00, '2024-05-16'),
    (6, 1, 87.00, 100.00, '2024-05-17'),
    (7, 2, 91.00, 100.00, '2024-05-18'),
    (8, 3, 89.00, 100.00, '2024-05-19'),
    (9, 4, 94.00, 100.00, '2024-05-20'),
    (10, 5, 93.00, 100.00, '2024-05-21');





