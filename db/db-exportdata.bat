:: HackWars Database Export
@echo off

SET mysql="PATH\TO\MYSQLDUMP" 
:: Default: "%PROGRAMFILES%\MySQL\MySQL Server 5.x\bin\mysqldump" ;As of this publish it's 5.7
SET user="MySQLUser"
:: Default: root
SET password="MySQLPass"
:: Default: Make sure to set a password!

cd %cd%
mkdir database_export
cd database_export

%mysql% -u %user% --password=%password% --databases --add-drop-database alex_chat > chat.sql
%mysql% -u %user% --password=%password% --databases --add-drop-database hackerforum > hackerforum.sql
%mysql% -u %user% --password=%password% --databases --add-drop-database hackwars > hackwars.sql
%mysql% -u %user% --password=%password% --databases --add-drop-database hackwars_drupal > hackwars_drupal.sql

cd ..

echo Created database export in /database_export
pause