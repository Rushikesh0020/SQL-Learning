SELECT 
    CONCAT
    (
        SUBSTRING(title, 1, 10),
        '...'
    )
FROM books;


SELECT CONCAT(
        SUBSTRING(title, 1, 10), '...'
    ) AS 'Short Title'
FROM books;


+---------------+
| Short Title   |
+---------------+
| The Namesa... |
| Norse Myth... |
| American G... |
| Interprete... |
| A Hologram... |
| The Circle... |
| The Amazin... |
| Just Kids...  |
| A Heartbre... |
| Coraline...   |
| What We Ta... |
| Where Im ... |
| White Nois... |
| Cannery Ro... |
| Oblivion: ... |
| Consider t... |
+---------------+

-- ---------------------
-- SUBSTRING + REPLACE 
-- ---------------------
SELECT
    SUBSTRING
    (
        REPLACE(title, 'e', '3'), 1, 10
    )
FROM books;

mysql> SELECT SUBSTRING(REPLACE(title, 'e', '3'),1,10)
    -> FROM books;
+------------------------------------------+
| SUBSTRING(REPLACE(title, 'e', '3'),1,10) |
+------------------------------------------+
| Th3 Nam3sa                               |
| Nors3 Myth                               |
| Am3rican G                               |
| Int3rpr3t3                               |
| A Hologram                               |
| Th3 Circl3                               |
| Th3 Amazin                               |
| Just Kids                                |
| A H3artbr3                               |
| Coralin3                                 |
| What W3 Ta                               |
| Wh3r3 Im                                 |
| Whit3 Nois                               |
| Cann3ry Ro                               |
| Oblivion:                                |
| Consid3r t                               |
+------------------------------------------+
