1. Create Schema
CREATE TABLE students
    (
        id INT PRIMARY KEY AUTO_INCREMENT,
        first_name VARCHAR(100)
    );

CREATE TABLE papers
    (
         id INT PRIMARY KEY AUTO_INCREMENT,
         title VARCHAR(100),
         grade INT,
         student_id INT,
         FOREIGN KEY(student_id) 
            REFERENCES students(id)
                ON DELETE CASCADE
    );

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

 SELECT * FROM students;
+----+------------+
| id | first_name |
+----+------------+
|  1 | Caleb      |
|  2 | Samantha   |
|  3 | Raj        |
|  4 | Carlos     |
|  5 | Lisa       |
+----+------------+

SELECT * FROM papers;
+----+---------------------------------------+-------+------------+
| id | title                                 | grade | student_id |
+----+---------------------------------------+-------+------------+
|  1 | My First Book Report                  |    60 |          1 |
|  2 | My Second Book Report                 |    75 |          1 |
|  3 | Russian Lit Through The Ages          |    94 |          2 |
|  4 | De Montaigne and The Art of The Essay |    98 |          2 |
|  5 | Borges and Magical Realism            |    89 |          4 |
+----+---------------------------------------+-------+------------+

2. INNER JOIN

SELECT first_name, title, grade 
FROM students
JOIN papers
    ON students.id = papers.student_id
Order BY grade DESC;

+------------+---------------------------------------+-------+
| first_name | title                                 | grade |
+------------+---------------------------------------+-------+
| Carlos     | De Montaigne and The Art of The Essay |    98 |
| Raj        | Russian Lit Through The Ages          |    94 |
| Lisa       | Borges and Magical Realism            |    89 |
| Samantha   | My Second Book Report                 |    75 |
| Caleb      | My First Book Report                  |    60 |
+------------+---------------------------------------+-------+


3. LEFT JOIN
SELECT first_name, title, grade
FROM students
LEFT JOIN papers
    ON students.id = papers.student_id;

-- oR 

SELECT first_name, title, grade
FROM papers
RIGHT JOIN students
    ON students.id = papers.student_id;

+------------+---------------------------------------+-------+
| first_name | title                                 | grade |
+------------+---------------------------------------+-------+
| Caleb      | My First Book Report                  |    60 |
| Caleb      | My Second Book Report                 |    75 |
| Samantha   | Russian Lit Through The Ages          |    94 |
| Samantha   | De Montaigne and The Art of The Essay |    98 |
| Raj        | NULL                                  |  NULL |
| Carlos     | Borges and Magical Realism            |    89 |
| Lisa       | NULL                                  |  NULL |
+------------+---------------------------------------+-------+ 


4. 
SELECT 
    first_name,
    IFNULL(title, 'Missing'),
    IFNULL(grade, 0) AS grade
FROM students 
LEFT JOIN papers
    ON students.id = papers.student_id;

-- oR 

SELECT 
    first_name,
    IFNULL(title, 'Missing') AS title, 
    IFNULL(grade, 0) AS grade
FROM papers 
RIGHT JOIN students
    ON students.id = papers.student_id;


+------------+---------------------------------------+-------+
| first_name | title                                 | grade |
+------------+---------------------------------------+-------+
| Caleb      | My First Book Report                  |    60 |
| Caleb      | My Second Book Report                 |    75 |
| Samantha   | Russian Lit Through The Ages          |    94 |
| Samantha   | De Montaigne and The Art of The Essay |    98 |
| Raj        | Missing                               |     0 |
| Carlos     | Borges and Magical Realism            |    89 |
| Lisa       | Missing                               |     0 |
+------------+---------------------------------------+-------+

5. Average

SELECT 
    first_name,
    IFNULL(AVG(grade), 0) AS average
FROM students
LEFT JOIN papers
    ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;

+------------+---------+
| first_name | average |
+------------+---------+
| Samantha   | 96.0000 |
| Carlos     | 89.0000 |
| Caleb      | 67.5000 |
| Raj        | 0       |
| Lisa       | 0       |
+------------+---------+

6. 

SELECT 
    first_name,
    IFNULL(AVG(grade),0) AS average,
    CASE 
        WHEN AVG(grade) >= 75 THEN 'PASSING'
        ELSE 'FAILING' 
    END AS passing_status
FROM students
LEFT JOIN papers 
    ON students.id = papers.student_id
GROUP BY students.id
ORDER BY AVG(grade) DESC;
+------------+---------+----------------+
| first_name | average | passing_status |
+------------+---------+----------------+
| Samantha   | 96.0000 | PASSING        |
| Carlos     | 89.0000 | PASSING        |
| Caleb      | 67.5000 | FAILING        |
| Raj        |  0.0000 | FAILING        |
| Lisa       |  0.0000 | FAILING        |
+------------+---------+----------------+ 


------------------------------
SELECT NULL >=1;
+----------+
| NULL >=1 |
+----------+
|     NULL |
+----------+
----------------------------
-- To be extra careful 

SELECT 
    first_name,
    IFNULL(AVG(grade),0) AS average,
    CASE 
        WHEN AVG(grade) IS NULL THEN 'FAILING'
        WHEN AVG(grade) >= 75 THEN 'PASSING'
        ELSE 'FAILING' 
    END AS passing_status
FROM students
LEFT JOIN papers 
    ON students.id = papers.student_id
GROUP BY students.id
ORDER BY AVG(grade) DESC;