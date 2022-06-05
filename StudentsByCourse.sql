USE devcamp_schema;

SELECT s.students_name AS "Student", c.courses_name AS "Class"
FROM grades g
JOIN courses c
ON g.grades_courses_id = c.courses_id
JOIN students s
ON g.grades_students_id = s.students_id
ORDER BY c.courses_id