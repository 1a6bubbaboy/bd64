@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:/wordpress-4.6-1/apache2\bin\httpd.exe" -k install -n "wordpressApache" -f "C:/wordpress-4.6-1/apache2\conf\httpd.conf"

net start wordpressApache >NUL
goto end

:remove
rem -- STOP SERVICE BEFORE REMOVING

net stop wordpressApache >NUL
"C:/wordpress-4.6-1/apache2\bin\httpd.exe" -k uninstall -n "wordpressApache"

:end
exit
