USE devcamp_schema;

SELECT s.students_name AS "Student", MAX(g.grades_score) AS "Grade", c.courses_name AS "Class"
FROM grades g
JOIN courses c
ON g.grades_courses_id = c.courses_id
JOIN students s
ON g.grades_students_id = s.students_id
GROUP BY s.students_id;