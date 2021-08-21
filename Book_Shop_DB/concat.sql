mysql> USE book_shop;
Database changed
mysql> SELECT author_fname, author_lname FROM books;
+--------------+----------------+
| author_fname | author_lname   |
+--------------+----------------+
| Jhumpa       | Lahiri         |
| Neil         | Gaiman         |
| Neil         | Gaiman         |
| Jhumpa       | Lahiri         |
| Dave         | Eggers         |
| Dave         | Eggers         |
| Michael      | Chabon         |
| Patti        | Smith          |
| Dave         | Eggers         |
| Neil         | Gaiman         |
| Raymond      | Carver         |
| Raymond      | Carver         |
| Don          | DeLillo        |
| John         | Steinbeck      |
| David        | Foster Wallace |
| David        | Foster Wallace |
+--------------+----------------+
16 rows in set (0.01 sec)

mysql> SELECT CONCAT('Hello', 'World');
+--------------------------+
| CONCAT('Hello', 'World') |
+--------------------------+
| HelloWorld               |
+--------------------------+
1 row in set (0.00 sec)


mysql> SELECT CONCAT(author_fname,' ',author_lname) FROM books;
+---------------------------------------+
| CONCAT(author_fname,' ',author_lname) |
+---------------------------------------+
| Jhumpa Lahiri                         |
| Neil Gaiman                           |
| Neil Gaiman                           |
| Jhumpa Lahiri                         |
| Dave Eggers                           |
| Dave Eggers                           |
| Michael Chabon                        |
| Patti Smith                           |
| Dave Eggers                           |
| Neil Gaiman                           |
| Raymond Carver                        |
| Raymond Carver                        |
| Don DeLillo                           |
| John Steinbeck                        |
| David Foster Wallace                  |
| David Foster Wallace                  |
+---------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT(author_fname,' ',author_lname) AS 'Full Name' FROM books;
+----------------------+
| Full Name            |
+----------------------+
| Jhumpa Lahiri        |
| Neil Gaiman          |
| Neil Gaiman          |
| Jhumpa Lahiri        |
| Dave Eggers          |
| Dave Eggers          |
| Michael Chabon       |
| Patti Smith          |
| Dave Eggers          |
| Neil Gaiman          |
| Raymond Carver       |
| Raymond Carver       |
| Don DeLillo          |
| John Steinbeck       |
| David Foster Wallace |
| David Foster Wallace |
+----------------------+
16 rows in set (0.00 sec)


mysql> SELECT author_fname AS first, author_lname AS last, CONCAT(author_fname, ' ', author_lname) AS Full_Name
    -> FROM books;
+---------+----------------+----------------------+
| first   | last           | Full_Name            |
+---------+----------------+----------------------+
| Jhumpa  | Lahiri         | Jhumpa Lahiri        |
| Neil    | Gaiman         | Neil Gaiman          |
| Neil    | Gaiman         | Neil Gaiman          |
| Jhumpa  | Lahiri         | Jhumpa Lahiri        |
| Dave    | Eggers         | Dave Eggers          |
| Dave    | Eggers         | Dave Eggers          |
| Michael | Chabon         | Michael Chabon       |
| Patti   | Smith          | Patti Smith          |
| Dave    | Eggers         | Dave Eggers          |
| Neil    | Gaiman         | Neil Gaiman          |
| Raymond | Carver         | Raymond Carver       |
| Raymond | Carver         | Raymond Carver       |
| Don     | DeLillo        | Don DeLillo          |
| John    | Steinbeck      | John Steinbeck       |
| David   | Foster Wallace | David Foster Wallace |
| David   | Foster Wallace | David Foster Wallace |
+---------+----------------+----------------------+

-- -----------------------------------------
-- Contact with Separator: CONCAT_WS
-- -----------------------------------------

-- Method 1: 

SELECT CONCAT(title, '-', author_fname, '-', author_lname) FROM books;

+--------------------------------------------------------------------+
| CONCAT(title, '-', author_fname, '-', author_lname)                |
+--------------------------------------------------------------------+
| The Namesake-Jhumpa-Lahiri                                         |
| Norse Mythology-Neil-Gaiman                                        |
| American Gods-Neil-Gaiman                                          |
| Interpreter of Maladies-Jhumpa-Lahiri                              |
| A Hologram for the King: A Novel-Dave-Eggers                       |
| The Circle-Dave-Eggers                                             |
| The Amazing Adventures of Kavalier & Clay-Michael-Chabon           |
| Just Kids-Patti-Smith                                              |
| A Heartbreaking Work of Staggering Genius-Dave-Eggers              |
| Coraline-Neil-Gaiman                                               |
| What We Talk About When We Talk About Love: Stories-Raymond-Carver |
| Where Im Calling From: Selected Stories-Raymond-Carver            |
| White Noise-Don-DeLillo                                            |
| Cannery Row-John-Steinbeck                                         |
| Oblivion: Stories-David-Foster Wallace                             |
| Consider the Lobster-David-Foster Wallace                          |
+--------------------------------------------------------------------+

-- Method 2 : Short One 

SELECT CONCAT_WS('-', title, author_fname, author_lname) FROM books;

-- Output: Gives same as above