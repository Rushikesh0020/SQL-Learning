SELECT title, released_year FROM books
WHERE released_year BETWEEN 2004 AND  2015;
+----------------------------------+---------------+
| title                            | released_year |
+----------------------------------+---------------+
| A Hologram for the King: A Novel |          2012 |
| The Circle                       |          2013 |
| Just Kids                        |          2010 |
| Oblivion: Stories                |          2004 |
| Consider the Lobster             |          2005 |
| 10% Happier                      |          2014 |
+----------------------------------+---------------+

SELECT title, released_year FROM books
WHERE released_year NOT BETWEEN 2004 AND  2015;
-- yeah! You have already guessed the output buddy! Cheers!
