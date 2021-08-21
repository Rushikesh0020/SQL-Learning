SELECT * FROM books WHERE released_year > 2000;
-- yeah! You have already guessed the output buddy

SELECT title, released_year FROM books 
ORDER BY released_year;

SELECT title, released_year FROM books WHERE released_year > 2000
ORDER BY released_year;
+-------------------------------------------+---------------+
| title                                     | released_year |
+-------------------------------------------+---------------+
| American Gods                             |          2001 |
| A Heartbreaking Work of Staggering Genius |          2001 |
| fake_book                                 |          2001 |
| The Namesake                              |          2003 |
| Coraline                                  |          2003 |
| Oblivion: Stories                         |          2004 |
| Consider the Lobster                      |          2005 |
| Just Kids                                 |          2010 |
| A Hologram for the King: A Novel          |          2012 |
| The Circle                                |          2013 |
| 10% Happier                               |          2014 |
| Norse Mythology                           |          2016 |
| Lincoln In The Bardo                      |          2017 |
+-------------------------------------------+---------------+

SELECT title, released_year FROM books WHERE released_year >= 2000
ORDER BY released_year;

SELECT title, stock_quantity FROM books
WHERE stock_quantity >= 100;

+-------------------------------------------+----------------+
| title                                     | stock_quantity |
+-------------------------------------------+----------------+
| A Hologram for the King: A Novel          |            154 |
| A Heartbreaking Work of Staggering Genius |            104 |
| Coraline                                  |            100 |
| Oblivion: Stories                         |            172 |
| fake_book                                 |            287 |
| Lincoln In The Bardo                      |           1000 |
+-------------------------------------------+----------------+

SELECT 99 > 1;
    -- O/P : 1

SELECT 55 > 156;
    -- O/P : 0

SELECT -15 > 15;
    -- O/P : 0

SELECT 'a' > 'b';
    -- O/P : 0 

SELECT 'A' > 'a';
    -- O/P : 0 

SELECT 'A' >= 'a';
    -- O/P : 1 