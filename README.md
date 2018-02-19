# MS-SQL-Server Like vs Contains performance comparison

This experiment demonstrates the difference in performance between Like and Contains.

To run the experiment you need a MS-SQL-Server and the Full-Text Search feature installed on your machine (the Full-Text Search is not installed by default).

**Instructions**
1) Run the SQL script in the file CreateDB.sql. This should creates the DB PerfDemo"and one table called Table_1
2) Run the SQL script in the file Inserts.sql. This should creates all necessary data (1M records) and the Full Text Catalog index.
3) Run the SQL queries in the file Experiment.sql

**Results**

Tested on pretty standard laptop, The query with the Like operator takes 7 seconds whereas query with the Contains takes 0 seconds. 

