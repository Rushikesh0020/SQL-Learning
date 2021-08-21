-- Challenge 5: GENRE AVG Ratings 

-- Note: JOIN is by default INNER JOIN 

SELECT 
    genre,
    AVG(rating) AS avg_rating
FROM series 
JOIN reviews 
    ON series.id = reviews.series_id
GROUP BY genre
ORDER BY avg_rating;

+-----------+------------+
| genre     | avg_rating |
+-----------+------------+
| Animation |    7.86000 |
| Drama     |    8.04375 |
| Comedy    |    8.16250 |
+-----------+------------+



--  ROUND()

SELECT 
    genre,
    ROUND
    (
        AVG(rating), 2
    ) AS avg_rating  
FROM series 
JOIN reviews 
    ON series.id = reviews.series_id
GROUP BY genre
ORDER BY avg_rating;

+-----------+------------+
| genre     | avg_rating |
+-----------+------------+
| Animation |       7.86 |
| Drama     |       8.04 |
| Comedy    |       8.16 |
+-----------+------------+
