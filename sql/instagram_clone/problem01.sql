# FINDING 5 OLDEST USERS

SELECT *
FROM users
ORDER BY created_at
LIMIT 5;