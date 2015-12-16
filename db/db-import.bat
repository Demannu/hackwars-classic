:: HackWars Database Import
@echo off

SET mysql="PATH/TO/MYSQL" 
:: Default: "%ProgramFiles(x86)%\MySQL\MySQL Server 5.x\bin\mysql" ;As of this publish it's 5.7
SET user="DB_user"
:: Default: root
SET password="DB_pass"
:: Default: Make sure to set a password!

cd %cd%
mkdir tmp
unzip db.zip -d tmp\hwdbs
cd tmp\hwdbs

%mysql% -u %user% --password=%password% < hackwars.sql
%mysql% -u %user% --password=%password% < hackerforum.sql
%mysql% -u %user% --password=%password% < chat.sql
%mysql% -u %user% --password=%password% < hackwars_drupal.sql

cd ..\..
del /F /Q tmp\hwdbs\*.*
rmdir tmp\hwdbs
rmdir tmp