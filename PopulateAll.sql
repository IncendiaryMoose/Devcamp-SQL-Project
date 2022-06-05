USE devcamp_schema;

INSERT INTO students(students_name, students_email)
VALUES 
	("Josh", "josh@example.com"),
	("Jeff", "jeff@example.com"),
	("Abby", "abby@example.com"),
    ("Thomas", "thomas@example.com"),
    ("George", "george@example.com"),
    ("Stacy", "stacy@example.com"),
    ("Henry", "henry@example.com"),
    ("John", "john@example.com"),
    ("Adrian", "adrian@example.com"),
    ("William", "william@example.com");

INSERT INTO professors(professors_name, professors_email)
VALUES
	("Dallin", "dallin@example.com"),
    ("Smith", "smith@example.com"),
    ("Jefferson", "jefferson@example.com"),
    ("Heather", "heather@example.com"),
    ("Samantha", "samantha@example.com");

INSERT INTO courses(courses_name, courses_professors_id)
VALUES 
	(
		"Math 1",
		(SELECT professors_id FROM professors WHERE professors_name = 'Dallin' LIMIT 1)
	),
    (
		"Math 2",
		(SELECT professors_id FROM professors WHERE professors_name = 'Dallin' LIMIT 1)
	),
    (
		"Art",
		(SELECT professors_id FROM professors WHERE professors_name = 'Smith' LIMIT 1)
	),
	(
		"Science",
		(SELECT professors_id FROM professors WHERE professors_name = 'Jefferson' LIMIT 1)
    ),
    (
		"Biology",
		(SELECT professors_id FROM professors WHERE professors_name = 'Jefferson' LIMIT 1)
	),
    (
		"Physics",
		(SELECT professors_id FROM professors WHERE professors_name = 'Jefferson' LIMIT 1)
	),
	(
		"Economics",
		(SELECT professors_id FROM professors WHERE professors_name = 'Heather' LIMIT 1)
	),
	(
		"Politics",
		(SELECT professors_id FROM professors WHERE professors_name = 'Samantha' LIMIT 1)
	);

INSERT INTO grades(grades_score, grades_courses_id, grades_students_id)
VALUES
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Math 1' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Josh' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Science' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Josh' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Art' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Josh' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Math 1' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Jeff' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Math 2' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Jeff' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Biology' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Jeff' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Science' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Abby' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Biology' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Abby' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Physics' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Abby' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Politics' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Thomas' LIMIT 1)
	),
    (
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Economics' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Thomas' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Art' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Thomas' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Politics' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'George' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Math 1' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'George' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Physics' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'George' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Biology' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Stacy' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Economics' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Stacy' LIMIT 1)
	),
    (
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Physics' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Stacy' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Economics' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Henry' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Math 1' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Henry' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Math 2' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Henry' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Math 2' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'John' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Physics' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'John' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Art' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'John' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Physics' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Adrian' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Politics' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Adrian' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Art' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'Adrian' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Math 1' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'William' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Science' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'William' LIMIT 1)
	),
	(
		(RAND()*100),
        (SELECT courses_id FROM courses WHERE courses_name = 'Economics' LIMIT 1),
        (SELECT students_id FROM students WHERE students_name = 'William' LIMIT 1)
	);

SELECT *
FROM grades;