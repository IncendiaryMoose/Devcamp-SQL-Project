USE devcamp_schema;

SELECT student_name AS "Student", professor_name AS "Professor", sharedClasses AS "Classes together"
FROM (
	SELECT students_name AS student_name, professors_name AS professor_name, COUNT(*) AS sharedClasses
	FROM grades g
	JOIN courses c
	ON g.grades_courses_id = c.courses_id
	JOIN professors p
	ON c.courses_professors_id = p.professors_id
	JOIN students s
	ON s.students_id = g.grades_students_id
	GROUP BY p.professors_id, s.students_id
) AS m
ORDER BY sharedClasses DESC;