SELECT c.name, SUM(a.completed_at - a.started_at) total_duration
  FROM students s
  JOIN cohorts c
  ON s.cohort_id=c.id
  JOIN assistance_requests a
  ON a.student_id=s.id
  GROUP BY c.name
  ORDER BY total_duration;