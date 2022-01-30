@echo off
cd "C:\Personal-Folders\Stock_projects\DatabaseBackups" 
set temp=%DATE:/=%
set dirname=%temp:~8,4%%temp:~6,2%%temp:~4,2%weekly
mkdir %dirname%
cd "C:\Program Files\MongoDB\Tools\100\bin"
set outdir=C:\Personal-Folders\Stock_projects\DatabaseBackups\%dirname%\
mongodump  --db=Market1 --out=%outdir%
mongodump  --db=Market5 --out=%outdir%
cd C:\Personal-Folders\Stock_projects\rough