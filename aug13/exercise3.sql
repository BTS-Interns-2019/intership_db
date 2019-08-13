CREATE TABLE grades(
    id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    id_student INTEGER UNSIGNED,
    week TINYINT UNSIGNED,
    grade TINYINT(2) UNSIGNED
);

INSERT INTO grades (id_student, week, grade) SELECT id, 1, grade_1 FROM students;
INSERT INTO grades (id_student, week, grade) SELECT id, 2, grade_2 FROM students;
INSERT INTO grades (id_student, week, grade) SELECT id, 3, grade_3 FROM students;

ALTER TABLE students DROP COLUMN grade_1, DROP COLUMN grade_2, DROP COLUMN grade_3;