@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:\wordpress-4.6-1/mysql\bin\mysqld.exe" --install "wordpressMySQL" --defaults-file="C:\wordpress-4.6-1/mysql\my.ini"

net start "wordpressMySQL" >NUL
goto end

:remove
rem -- STOP SERVICES BEFORE REMOVING

net stop "wordpressMySQL" >NUL
"C:\wordpress-4.6-1/mysql\bin\mysqld.exe" --remove "wordpressMySQL"

:end
exit
