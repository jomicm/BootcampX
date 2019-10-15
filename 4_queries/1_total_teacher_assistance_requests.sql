SELECT COUNT(*) as total_assistances, name FROM teachers t
	JOIN assistance_requests a
	ON t.id = a.teacher_id
	WHERE name='Waylon Boehm'
	GROUP BY name;