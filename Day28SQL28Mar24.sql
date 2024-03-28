--Date 28 March Leetcode SQL 50 interview Questions
SELECT
    Students.student_id,
    Students.student_name,
    Subjects.subject_name,
    COUNT(Examinations.subject_name) AS attended_exams
FROM Students
JOIN Subjects ON Subjects.subject_id = Examinations.subject_id
LEFT JOIN Examinations ON Students.student_id = Examinations.student_id
GROUP BY Students.student_id, Subjects.subject_name
ORDER BY student_id ASC, subject_name ASC

