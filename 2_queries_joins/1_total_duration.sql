SELECT sum(duration) AS total_duration
FROM students
INNER JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE students.name = 'Stan Miller';
