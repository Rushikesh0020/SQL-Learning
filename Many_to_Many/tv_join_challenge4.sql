-- Challenge 4 :  Unreviewed Series 

SELECT title AS unreviewed_series, rating
FROM series
LEFT JOIN reviews 
    ON series.id = reviews.series_id
WHERE rating IS NULL;

+-----------------------+--------+
| unreviewed_series     | rating |
+-----------------------+--------+
| Malcolm In The Middle |   NULL |
| Pushing Daisies       |   NULL |
+-----------------------+--------+
