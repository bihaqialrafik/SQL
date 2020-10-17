# SQL
<br>
<br>
## CARA EXPORT DAN IMPORT DATABASE LEWAT COMMAND LINE.
<br>
### Export Database

mysqldump -u username -p nama_database > lokasi_penyimpanan\nama_file.sql<br>
<br>
e.g:
<br> 
mysqldump - u root -p inventory > D:\Learning\SQL\Database_Inventory.sql<br>
<br>
### Import Database
<br>
1. Create Database
   create database inventory;<br>
   use inventory;<br>
2. importing (source lokasi_penyimpanan\nama_file.sql)<br>
   source D:\Learning\SQL\Database_Inventory.sql<br>
