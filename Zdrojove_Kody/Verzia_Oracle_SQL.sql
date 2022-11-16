

-- Ako zistime aktualnu verziu Oracle DB
-- Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production
-- 1.
select * from v$version;

-- 2.
select * from v$version
where banner like 'Oracle%'

-- 3.
select banner from v$version
where banner like 'Oracle%'


-- Dark theme
-- 1.Oracle Live SQL
-- https://darkreader.org/

-- 
Tools > Preferences > Code Editor > PL/SQL Syntax Colors. Here you can choose Twilight scheme.
C:\Users\Administrator\AppData\Roaming\sqldeveloper\22.2.1
https://github.com/Gillisdc/sqldeveloper-syntax-highlighting

https://community.oracle.com/tech/developers/discussion/961742/dark-color-as-background-theme-look-and-feel