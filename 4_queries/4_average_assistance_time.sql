SELECT AVG(a.completed_at - a.started_at) as average_assistance_request_duration 
  FROM assistance_requests a;