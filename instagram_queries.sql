-- -------------------------------------------
-- 5 users who have been around the longest --
-- -------------------------------------------

/*
SELECT username,
        created_at
    FROM users
    ORDER BY created_at ASC LIMIT 5;  
*/

-- -----------------------------------------------
-- -----------------------------------------------
-- what days of the week do most users register --
-- -----------------------------------------------

/*
SELECT 
    COUNT(DAYOFWEEK(created_at)) AS registered_users,
    DAYNAME(created_at) AS 'Day'
    FROM users
    GROUP BY DAYNAME(created_at) ORDER BY registered_users DESC;
    
SELECT 
    COUNT(*) AS registered_users,
    DAYNAME(created_at) AS 'Day'
    FROM users
    GROUP BY DAYNAME(created_at) ORDER BY registered_users DESC;

SELECT
  COUNT(created_at) AS registered_users,
  DAYNAME(created_at) AS Day
FROM users
GROUP BY Day
ORDER BY registered_users DESC;
*/

-- -------------------------------------------
-- -------------------------------------------
-- find users who have never posted a photo --
-- -------------------------------------------

/*
SELECT username
    FROM users
    LEFT JOIN photos
    on users.id = photos.user_id
    WHERE image_url IS NULL;

*/


-- ------------------------
-- photo with most likes --
-- ------------------------
/*
SELECT
  username,
  image_url,
  COUNT(photo_id) AS likes
FROM users
INNER JOIN photos
  ON users.id = photos.user_id
INNER JOIN likes
  ON photos.id = likes.photo_id
GROUP BY photo_id
ORDER BY likes DESC LIMIT 10;
    */
    
-- *************** --    
-- TEST PERFORMANCE --
-- *************** --

/*
EXPLAIN SELECT
  COUNT(created_at) AS registered_users,
  DAYNAME(created_at) AS Day
FROM users
GROUP BY Day
ORDER BY registered_users DESC;


EXPLAIN SELECT
  COUNT(*) AS registered_users,
  DAYNAME(created_at) AS Day
FROM users
GROUP BY Day
ORDER BY registered_users DESC;


SET profiling=1;
SELECT
 COUNT(created_at) AS registered_users,
  DAYNAME(created_at) AS Day
FROM users
GROUP BY Day
ORDER BY registered_users DESC;


SELECT
  COUNT(*) AS registered_users,
  DAYNAME(created_at) AS Day
FROM users
GROUP BY Day
ORDER BY registered_users DESC;

SHOW profile;

*/

-- *************************************** --


-- ---------------------------------------- --
-- how many time does the average user post --
-- ---------------------------------------- --
/*
SELECT (SELECT COUNT(*) 
    FROM photos) / (SELECT COUNT(*) 
                FROM users) AS average_posts;

*/

-- ---------------------------------------- --
-- ---------------------------------------- --
--    five most commonly used hashtags      --
-- ---------------------------------------- --
/*
SELECT tag_name,
       COUNT(*) AS times_used
       FROM tags
       INNER JOIN photo_tags
       ON tags.id = photo_tags.tag_id
       GROUP BY tags.id ORDER BY times_used DESC LIMIT 5;
*/












