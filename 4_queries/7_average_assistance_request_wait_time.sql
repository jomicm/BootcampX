SELECT AVG(a.started_at - a.created_at) AS average_wait_time 
  FROM assistance_requests a
  JOIN students s
  ON a.student_id=s.id
  JOIN cohorts c
  ON s.cohort_id=c.id;