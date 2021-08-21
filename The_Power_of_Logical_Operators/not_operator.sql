SELECT title, released_year FROM  books 
WHERE released_year!=2017;

-- yeah! You know the output already buddy


-- --------
-- NOT LIKE
-- --------

SELECT title FROM books
WHERE title LIKE 'W%';
+-----------------------------------------------------+
| title                                               |
+-----------------------------------------------------+
| What We Talk About When We Talk About Love: Stories |
| Where Im Calling From: Selected Stories             |
| White Noise                                         |
+-----------------------------------------------------+

SELECT title FROM books
WHERE title NOT LIKE 'W%';

+-------------------------------------------+
| title                                     |
+-------------------------------------------+
| The Namesake                              |
| Norse Mythology                           |
| American Gods                             |
| Interpreter of Maladies                   |
| A Hologram for the King: A Novel          |
| The Circle                                |
| The Amazing Adventures of Kavalier & Clay |
| Just Kids                                 |
| A Heartbreaking Work of Staggering Genius |
| Coraline                                  |
| Cannery Row                               |
| Oblivion: Stories                         |
| Consider the Lobster                      |
| 10% Happier                               |
| fake_book                                 |
| Lincoln In The Bardo                      |
+-------------------------------------------+