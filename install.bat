REM install Postgresql
@echo off
set PGPASSWORD=postgres
cd C:\opt\pgsql\bin
mkdir c:\opt\pgsql\data 
initdb.exe -E UTF-8 -D c:\opt\pgsql\data
REM pg_ctl.exe -D c:\opt\pgsql\data -U postgres start
net stop postgresqlcommit
pg_ctl.exe unregister -N postgresqlcommit
sc delete postgresqlcommit

pg_ctl.exe register -D C:\opt\pgsql\data\ -N postgresqlcommit -S a
net start postgresqlcommit