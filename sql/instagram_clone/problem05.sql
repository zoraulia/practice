# HOW MANY TIMES DOES THE AVERAGE USERS POST
# Calculate avg number of photos per user

SELECT (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS average;