# FIND USERS WHO HAVE LIKED EVERY SINGLE PHOTO ON THE SITE

SELECT username, 
       Count(*) AS num_likes
FROM users
INNER JOIN likes
    ON users.id = likes.user_id 
GROUP  BY likes.user_id 
HAVING num_likes = (SELECT Count(*) 
                    FROM photos);