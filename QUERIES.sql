
SQL EXERCISES QUERIES AND RESULTS:

EX.1

127.0.0.1/us_flight_scheme/flights_schedule/		http://localhost/phpmyadmin/tbl_sql.php?db=us_flight_scheme&table=flights_schedule
Your SQL query has been executed successfully.

SELECT COUNT(Flight_code) AS TOTAL FROM flights_schedule

RESULT:


TOTAL
16	


EX.2


 
	 Show all	|			Number of rows:
127.0.0.1/us_flight_scheme/flights_schedule/		http://localhost/phpmyadmin/tbl_sql.php?db=us_flight_scheme&table=flights_schedule
 Showing rows 0 -  6 (7 total, Query took 0.0080 seconds.)

SELECT origin AS ORIGIN, AVG(Arr_Delay) AS ARRIVAL_DELAY, AVG(Dep_Delay) AS DEPARTURE_DELAY FROM flights_schedule GROUP BY origin ORDER BY origin ASC


RESULT:

ORIGIN	ARRIVAL_DELAY	DEPARTURE_DELAY	
01G	5.6667		12.3333	
01J	25.0000		5.0000	
01M	7.5000		13.0000	
02A	30.0000		0.0000	
02C	13.3333		14.0000	
02G	21.6667		10.6667	
07K	10.0000		15.0000	


EX.3

127.0.0.1/us_flight_scheme/flights_schedule/		http://localhost/phpmyadmin/tbl_sql.php?db=us_flight_scheme&table=flights_schedule
 Showing rows 0 - 15 (16 total, Query took 0.0090 seconds.)

SELECT origin AS ORIGIN, year AS YEAR, month AS MONTH, AVG(Arr_Delay) AS ARRIVAL_DELAY FROM flights_schedule GROUP BY month,year,origin ORDER BY origin ASC


ORIGIN	YEAR	MONTH	ARRIVAL_DELAY	
01G	2004	7	5.0000	
01G	2018	5	12.0000	
01G	1999	5	0.0000	
01J	2002	6	25.0000	
01M	1995	6	20.0000	
01M	2020	5	0.0000	
01M	2015	7	10.0000	
01M	1999	5	0.0000	
02A	2000	4	30.0000	
02C	2018	9	5.0000	
02C	2018	7	5.0000	
02C	2003	7	30.0000	
02G	2020	9	5.0000	
02G	2000	7	30.0000	
02G	2003	7	30.0000	
07K	2019	10	10.0000	


EX.4






