SELECT COUNT(*) as total_assistances, name FROM students s
	JOIN assistance_requests a
	ON s.id = a.student_id
	WHERE name='Elliot Dickinson'
	GROUP BY name;