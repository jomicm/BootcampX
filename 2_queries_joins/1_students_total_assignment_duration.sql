SELECT students.name AS student_name, SUM(as_su.duration) AS total_duration 
	FROM students 
	JOIN assignment_submissions AS as_su 
	ON students.id=as_su.student_id 
	WHERE students.name='Ibrahim Schimmel' 
GROUP BY students.name;