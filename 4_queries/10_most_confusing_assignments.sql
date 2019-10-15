SELECT ag.id, ag.name, ag.day, ag.chapter, COUNT(a.id) total_requests
  FROM assistance_requests a
  JOIN assignments ag
  ON ag.id=a.assignment_id
  GROUP BY ag.id
  ORDER BY total_requests DESC;