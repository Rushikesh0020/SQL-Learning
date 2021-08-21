SELECT title, stock_quantity FROM books;

+-----------------------------------------------------+----------------+
| title                                               | stock_quantity |
+-----------------------------------------------------+----------------+
| The Namesake                                        |             32 |
| Norse Mythology                                     |             43 |
| American Gods                                       |             12 |
| Interpreter of Maladies                             |             97 |
| A Hologram for the King: A Novel                    |            154 |
| The Circle                                          |             26 |
| The Amazing Adventures of Kavalier & Clay           |             68 |
| Just Kids                                           |             55 |
| A Heartbreaking Work of Staggering Genius           |            104 |
| Coraline                                            |            100 |
| What We Talk About When We Talk About Love: Stories |             23 |
| Where Im Calling From: Selected Stories             |             12 |
| White Noise                                         |             49 |
| Cannery Row                                         |             95 |
| Oblivion: Stories                                   |            172 |
| Consider the Lobster                                |             92 |
| 10% Happier                                         |             29 |
| fake_book                                           |            287 |
| Lincoln In The Bardo                                |           1000 |
+-----------------------------------------------------+----------------+

SELECT title, stock_quantity FROM books 
WHERE stock_quantity LIKE '____';
-- There are 4 underscores means 4 digits 
+----------------------+----------------+
| title                | stock_quantity |
+----------------------+----------------+
| Lincoln In The Bardo |           1000 |
+----------------------+----------------+


-- 2 Underscores means 2 digits 
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '__';
+-----------------------------------------------------+----------------+
| title                                               | stock_quantity |
+-----------------------------------------------------+----------------+
| The Namesake                                        |             32 |
| Norse Mythology                                     |             43 |
| American Gods                                       |             12 |
| Interpreter of Maladies                             |             97 |
| The Circle                                          |             26 |
| The Amazing Adventures of Kavalier & Clay           |             68 |
| Just Kids                                           |             55 |
| What We Talk About When We Talk About Love: Stories |             23 |
| Where Im Calling From: Selected Stories             |             12 |
| White Noise                                         |             49 |
| Cannery Row                                         |             95 |
| Consider the Lobster                                |             92 |
| 10% Happier                                         |             29 |
+-----------------------------------------------------+----------------+

-- ---------------------------------------------------
-- Let think how u are going to search for 
-- This exact pattern of Contact Number: (235)234-0987
-- ---------------------------------------------------


-- Soln: 
-- (235)234-0987  LIKE '(___)___-____' 

---------------------------------------------------------------
----------------------------------------------------------------

-- But what if there wild cards in string
    -- I'm searching for a book with '%' in it 
    -- I'm searching for a book with '_' in it 

    -- Soln: 
        -- WHERE title LIKE '%\%%'
        -- WHERE title LIKE '%\_%'


-- Example

SELECT title FROM books
WHERE title LIKE '%\%%';
+-------------+
| title       |
+-------------+
| 10% Happier |
+-------------+

SELECT title FROM books
WHERE title LIKE '%\_%';
+-----------+
| title     |
+-----------+
| fake_book |
+-----------+
