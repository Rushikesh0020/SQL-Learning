-- Challenge 7: 3 Tables 

SELECT 
    title,
    rating,
    CONCAT(first_name, last_name) AS 'reviewer'
FROM reviewers
INNER JOIN reviews
    ON reviewers.id = reviews.reviewer_id
INNER JOIN series
    ON series.id = reviews.series_id
ORDER BY title;
+----------------------+--------+----------------+
| title                | rating | reviewer       |
+----------------------+--------+----------------+
| Archer               |    8.0 | ThomasStoneman |
| Archer               |    7.5 | WyattSkaggs    |
| Archer               |    8.5 | KimbraMasters  |
| Archer               |    7.7 | DomingoCortes  |
| Archer               |    8.9 | ColtSteele     |
| Arrested Development |    8.1 | ThomasStoneman |
| Arrested Development |    6.0 | DomingoCortes  |
| Arrested Development |    8.4 | PinkiePetit    |
| Arrested Development |    9.9 | ColtSteele     |
| Arrested Development |    8.0 | KimbraMasters  |
| Bobs Burgers         |    7.0 | ThomasStoneman |
| Bobs Burgers         |    8.0 | DomingoCortes  |
| Bobs Burgers         |    7.5 | PinkiePetit    |
| Bobs Burgers         |    8.0 | ColtSteele     |
| Bobs Burgers         |    7.1 | KimbraMasters  |
| Bojack Horseman      |    7.5 | ThomasStoneman |
| Bojack Horseman      |    8.3 | DomingoCortes  |
| Bojack Horseman      |    7.6 | WyattSkaggs    |
| Bojack Horseman      |    8.5 | ColtSteele     |
| Bojack Horseman      |    7.8 | KimbraMasters  |
| Breaking Bad         |    9.5 | ThomasStoneman |
| Breaking Bad         |    9.3 | WyattSkaggs    |
| Breaking Bad         |    9.9 | ColtSteele     |
| Breaking Bad         |    9.0 | KimbraMasters  |
| Breaking Bad         |    9.1 | DomingoCortes  |
| Curb Your Enthusiasm |    6.5 | WyattSkaggs    |
| Curb Your Enthusiasm |    8.8 | DomingoCortes  |
| Curb Your Enthusiasm |    7.8 | KimbraMasters  |
| Curb Your Enthusiasm |    9.1 | ColtSteele     |
| Curb Your Enthusiasm |    8.4 | WyattSkaggs    |
| Fargo                |    9.7 | ColtSteele     |
| Fargo                |    9.1 | WyattSkaggs    |
| Freaks and Geeks     |    8.5 | DomingoCortes  |
| Freaks and Geeks     |    7.8 | WyattSkaggs    |
| Freaks and Geeks     |    9.3 | ColtSteele     |
| Freaks and Geeks     |    8.8 | PinkiePetit    |
| General Hospital     |    6.8 | KimbraMasters  |
| General Hospital     |    5.8 | DomingoCortes  |
| General Hospital     |    5.5 | WyattSkaggs    |
| General Hospital     |    4.5 | ColtSteele     |
| General Hospital     |    4.3 | PinkiePetit    |
| Halt and Catch Fire  |    9.9 | ColtSteele     |
| Seinfeld             |    7.2 | DomingoCortes  |
| Seinfeld             |    8.0 | KimbraMasters  |
| Stranger Things      |    8.9 | KimbraMasters  |
| Stranger Things      |    8.9 | DomingoCortes  |
| Stranger Things      |    8.5 | WyattSkaggs    |
+----------------------+--------+----------------+
