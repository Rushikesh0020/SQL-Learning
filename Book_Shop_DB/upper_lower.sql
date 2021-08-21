mysql> SELECT UPPER('Hello World');
+----------------------+
| UPPER('Hello World') |
+----------------------+
| HELLO WORLD          |
+----------------------+


mysql> SELECT LOWER('Hello World');
+----------------------+
| LOWER('Hello World') |
+----------------------+
| hello world          |
+----------------------+


mysql> SELECT UPPER(title) FROM books;
+-----------------------------------------------------+
| UPPER(title)                                        |
+-----------------------------------------------------+
| THE NAMESAKE                                        |
| NORSE MYTHOLOGY                                     |
| AMERICAN GODS                                       |
| INTERPRETER OF MALADIES                             |
| A HOLOGRAM FOR THE KING: A NOVEL                    |
| THE CIRCLE                                          |
| THE AMAZING ADVENTURES OF KAVALIER & CLAY           |
| JUST KIDS                                           |
| A HEARTBREAKING WORK OF STAGGERING GENIUS           |
| CORALINE                                            |
| WHAT WE TALK ABOUT WHEN WE TALK ABOUT LOVE: STORIES |
| WHERE IM CALLING FROM: SELECTED STORIES             |
| WHITE NOISE                                         |
| CANNERY ROW                                         |
| OBLIVION: STORIES                                   |
| CONSIDER THE LOBSTER                                |
+-----------------------------------------------------+


mysql> SELECT CONCAT(UPPER('My Favorite book is '), UPPER(title)) AS 'Favorite Books'
    -> FROM books;
+-------------------------------------------------------------------------+
| Favorite Books                                                          |
+-------------------------------------------------------------------------+
| MY FAVORITE BOOK IS THE NAMESAKE                                        |
| MY FAVORITE BOOK IS NORSE MYTHOLOGY                                     |
| MY FAVORITE BOOK IS AMERICAN GODS                                       |
| MY FAVORITE BOOK IS INTERPRETER OF MALADIES                             |
| MY FAVORITE BOOK IS A HOLOGRAM FOR THE KING: A NOVEL                    |
| MY FAVORITE BOOK IS THE CIRCLE                                          |
| MY FAVORITE BOOK IS THE AMAZING ADVENTURES OF KAVALIER & CLAY           |
| MY FAVORITE BOOK IS JUST KIDS                                           |
| MY FAVORITE BOOK IS A HEARTBREAKING WORK OF STAGGERING GENIUS           |
| MY FAVORITE BOOK IS CORALINE                                            |
| MY FAVORITE BOOK IS WHAT WE TALK ABOUT WHEN WE TALK ABOUT LOVE: STORIES |
| MY FAVORITE BOOK IS WHERE IM CALLING FROM: SELECTED STORIES             |
| MY FAVORITE BOOK IS WHITE NOISE                                         |
| MY FAVORITE BOOK IS CANNERY ROW                                         |
| MY FAVORITE BOOK IS OBLIVION: STORIES                                   |
| MY FAVORITE BOOK IS CONSIDER THE LOBSTER                                |
+-------------------------------------------------------------------------+

