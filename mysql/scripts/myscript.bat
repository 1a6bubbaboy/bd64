@echo off
"C:\wordpress-4.6-1/mysql\bin\mysql.exe" --defaults-file="C:\wordpress-4.6-1/mysql\my.ini" -u root -e "DELETE FROM mysql.user WHERE User='';"
"C:\wordpress-4.6-1/mysql\bin\mysql.exe" --defaults-file="C:\wordpress-4.6-1/mysql\my.ini" -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '%1';"
