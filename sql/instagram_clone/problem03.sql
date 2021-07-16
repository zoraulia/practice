# FIND THE USERS WHO HAVE NEVER POSTED A PHOTO
# Identify Inactive Users (users with no photos)

SELECT username
FROM users
LEFT JOIN photos
    ON users.id=photos.user_id
WHERE photos.user_id IS NULL;