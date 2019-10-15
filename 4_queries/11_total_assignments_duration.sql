SELECT ag.day, COUNT(ag.name) number_of_assignments, SUM(ag.duration) duration
  FROM assignments ag
  GROUP BY ag.day
  ORDER BY ag.day;