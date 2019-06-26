-- 5 users who have been around the longest --
 
/*
SELECT username,
        created_at
    FROM users
    ORDER BY created_at ASC LIMIT 5;  
*/

-- what days of the week do most users register --
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

