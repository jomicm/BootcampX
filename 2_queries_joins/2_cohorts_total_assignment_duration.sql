SELECT SUM(as_su.duration) AS total_duration 
	FROM students 
	JOIN assignment_submissions AS as_su 
	ON students.id=as_su.student_id 
	JOIN cohorts
	ON students.cohort_id=cohorts.id
	WHERE cohorts.name='FEB12'
GROUP BY cohorts.name;