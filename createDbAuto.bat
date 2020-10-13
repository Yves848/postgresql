@echo off
set PGPASSWORD=postgres
//PATH = %PATH%;"C:\opt\pgsql\bin"

C:\opt\pgsql\bin\createuser.exe -s postgres
C:\opt\pgsql\bin\createuser.exe -s bcb
C:\opt\pgsql\bin\createuser.exe -s alliance
C:\opt\pgsql\bin\createdb.exe -U postgres -w -E UTF-8 -T template0 barrouh
C:\opt\pgsql\bin\psql.exe -U postgres -w -d barrouh -f "f:\DB\barrouh\barrouh.dump.sql"
