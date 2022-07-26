SELECT cohorts.name as cohort, count(assignment_submissions.id) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions.id) DESC;
