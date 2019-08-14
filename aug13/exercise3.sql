INSERT INTO grades (student_id, week, grade) SELECT id, 1, grade_1 FROM students;
INSERT INTO grades (student_id, week, grade) SELECT id, 2, grade_2 FROM students;
INSERT INTO grades (student_id, week, grade) SELECT id, 3, grade_1 FROM students;

ALTER TABLE students DROP COLUMN grade_1;
ALTER TABLE students DROP COLUMN grade_2;
ALTER TABLE students DROP COLUMN grade_3;