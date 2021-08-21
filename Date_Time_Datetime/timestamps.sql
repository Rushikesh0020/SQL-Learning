The TIMESTAMP data type is used for values that contain both date and time parts.
TIMESTAMP has a range of '1970-01-01 00:00:01' UTC to '2038-01-19 03:14:07' UTC. 



CREATE TABLE comments
    (
        content VARCHAR(100),
        created_at TIMESTAMP DEFAULT NOW()
    );

INSERT INTO comments(content)
VALUES ('lol what a funny article!');

INSERT INTO comments(content)
VALUES ('I found this very insightful');

+------------------------------+---------------------+
| content                      | created_at          |
+------------------------------+---------------------+
| lol what a funny article!    | 2021-08-20 06:59:47 |
| I found this very insightful | 2021-08-20 07:00:39 |
+------------------------------+---------------------+ 

CREATE TABLE comments2
    (
        content VARCHAR(100),
        changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
    );

 INSERT INTO comments2(content)
 VALUES ('What a good content');

 INSERT INTO comments2(content)
 VALUES ('I really like cats and dogs');

INSERT INTO comments2(content)
 VALUES ('That was really awesome');

 +-----------------------------+---------------------+
| content                     | changed_at          |
+-----------------------------+---------------------+
| What a good content         | 2021-08-20 07:06:01 |
| That was really awesome     | 2021-08-20 07:08:47 |
| I really like cats and dogs | 2021-08-20 07:08:59 |
+-----------------------------+---------------------+

UPDATE comments2 SET content="Not much good content." WHERE content="What a good content";
+-----------------------------+---------------------+
| content                     | changed_at          |
+-----------------------------+---------------------+
| Not much good content.      | 2021-08-20 07:10:57 |
| That was really awesome     | 2021-08-20 07:08:47 |
| I really like cats and dogs | 2021-08-20 07:08:59 |
+-----------------------------+---------------------+ 


-- CURRENT_TIMESTAMP ===== NOW() 
    -- NOW() => prefferred one 