USE devcamp_schema;

SELECT c.courses_name AS "Class", average_grades.grades_score AS "Average Grade"
FROM courses c
JOIN (
	SELECT AVG(grades.grades_score) AS grades_score, grades.grades_courses_id AS courses_id
	FROM grades
	GROUP BY grades.grades_courses_id
) AS average_grades
ON average_grades.courses_id = c.courses_id
ORDER BY average_grades.grades_score;