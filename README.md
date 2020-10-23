## CARA EXPORT DAN IMPORT DATABASE LEWAT COMMAND LINE.

## Export Database
<br>
mysqldump -u username -p nama_database > lokasi_penyimpanan\nama_file.sql<br>
<br>
e.g.<br>
<br>
mysqldump -u root -p inventory > D:\Learning\SQL\Database_Inventory.sql<br>

## Import Database
<br>
1. CREATE DATABASE<br>
<br>
- create database inventory;<br>
<br>
- use inventory;<br>
<br>
2. IMPORTING (source lokasi_penyimpanan\nama_file.sql)<br>
<br>
- source D:\Learning\SQL\Database_Inventory.sql
