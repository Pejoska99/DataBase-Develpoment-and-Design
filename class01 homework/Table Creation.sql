 CREATE TABLE student (
    ID SERIAL PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    date_of_birth DATE NOT NULL,
    enrolled_date DATE NOT NULL,
    gender CHAR(1) NOT NULL,
    national_id_number VARCHAR(20) UNIQUE NOT NULL,
    student_card_number VARCHAR(20) UNIQUE NOT NULL
);

SELECT * FROM student;

CREATE TABLE teacher (
    ID SERIAL PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    date_of_birth DATE NOT NULL,
    academic_rank VARCHAR(20) NOT NULL,
    hire_date DATE NOT NULL
);

SELECT * FROM teacher;

CREATE TABLE course (
    ID SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	credit INT NOT NULL,
	academic_year DATE NOT NULL,
	semestar SMALLINT NOT NULL
		
);

SELECT * FROM course;

CREATE TABLE grade (
	ID SERIAL PRIMARY KEY,
    student_id INT REFERENCES student(id),
	course_id INT REFERENCES course(id),
	teacher_id INT REFERENCES teacher(id),
	grade SMALLINT NOT NULL,
	comment VARCHAR(200),
	created_date DATE NOT NULL
		
);

SELECT * FROM grade;

CREATE TABLE achievement_type (
	ID SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	description TEXT NOT NULL,
	participation_rate NUMERIC (5,2) NOT NULL
			
);

SELECT * FROM achievement_type;

CREATE TABLE grade_detail (
    ID SERIAL PRIMARY KEY,
    grade_id INT REFERENCES grade(id),
    achievement_type_id INT REFERENCES achievement_type(id),
    achievement_points NUMERIC(5,2) NOT NULL,
    achievement_max_points NUMERIC(5,2),
    achievement_date DATE NOT NULL
  
);

SELECT * FROM grade_detail;

