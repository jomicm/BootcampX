SELECT t.name AS teacher,s.name AS student,ag.name AS assignment, (a.completed_at - a.started_at) AS duration 
  FROM assistance_requests a
  JOIN teachers t
  ON a.teacher_id=t.id
  JOIN students s
  ON a.student_id=s.id
  JOIN assignments ag
  ON a.assignment_id=ag.id
  ORDER BY duration;