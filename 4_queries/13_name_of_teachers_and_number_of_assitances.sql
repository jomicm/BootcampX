SELECT t.name teacher, c.name cohort, COUNT(a.id) total_assistances
  FROM teachers t
  JOIN assistance_requests a
  ON t.id=a.teacher_id
  JOIN students s
  ON a.student_id=s.id
  JOIN cohorts c
  ON s.cohort_id=c.id
  WHERE c.name = 'JUL02'
  GROUP BY t.name,c.name
  ORDER BY t.name;