USE mysql;
UPDATE user SET authentication_string=PASSWORD('password') WHERE User='root';
FLUSH PRIVILEGES;

GRANT ALL PRIVILEGES
ON database.*
TO 'username'@'%'
IDENTIFIED BY 'password';