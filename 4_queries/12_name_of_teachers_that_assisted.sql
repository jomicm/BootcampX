SELECT DISTINCT t.name teacher, c.name cohort
FROM teachers t
JOIN assistance_requests a
ON t.id=a.teacher_id
JOIN students s
ON a.student_id=s.id
JOIN cohorts c
ON s.cohort_id=c.id
WHERE c.name = 'JUL02'
ORDER BY t.name;