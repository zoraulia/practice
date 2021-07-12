# CHAR is good if you will store a fixed length data such F/M

# CREATE TABLE inventory (item_name VARCHAR(100), price DECIMAL(8,2), quantity INT);

# Difference between DATETIME and TIMESTAMP is the maximun and the minimun range that they support and the size of the memory.

# SELECT CURTIME();

# SELECT CURDATE()

# SELECT DAYOFWEEK(CURDATE());

# SELECT DAYNAME(CURDATE());

# SELECT DATE_FORMAT(NOW(), '%m/%d/%Y');

# SELECT DATE_FORMAT(NOW(), '%M %D at %l:%i');

# CREATE TABLE tweets(
#     content VARCHAR(140),
#     username VARCHAR(50) NOT NULL,
#     created_at TIMESTAMP DEFAULT NOW()
# );

# INSERT INTO tweets (content, username)
# VALUES ("I'm learning with BTS", 'zoe009'), ('I love this hahaha', 'zoeee');