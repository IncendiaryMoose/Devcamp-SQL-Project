USE devcamp_schema;

SELECT p.professors_name AS "Professor", AVG(g.grades_score) AS "Average Grade Given"
FROM grades g
JOIN courses c
ON g.grades_courses_id = c.courses_id
JOIN professors p
ON c.courses_professors_id = p.professors_id
GROUP BY p.professors_id;