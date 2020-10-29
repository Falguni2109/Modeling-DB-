
SQL EXERCISES QUERIES AND RESULTS:

EX.1

127.0.0.1/us_flight_scheme/flights_schedule/		http://localhost/phpmyadmin/tbl_sql.php?db=us_flight_scheme&table=flights_schedule
Your SQL query has been executed successfully.

SELECT COUNT(Flight_code) AS TOTAL FROM flights_schedule

RESULT:

TOTAL
27	



EX.2

127.0.0.1/us_flight_scheme/flights_schedule/		http://localhost/phpmyadmin/tbl_sql.php?db=us_flight_scheme&table=flights_schedule
 Showing rows 0 -  8 (9 total, Query took 0.0090 seconds.)

SELECT origin AS ORIGIN, AVG(Arr_Delay) AS ARRIVAL_DELAY, AVG(Dep_Delay) AS DEPARTURE_DELAY FROM flights_schedule GROUP BY origin 

ORDER BY origin ASC

RESULT:

ORIGIN		ARRIVAL_DELAY	DEPARTURE_DELAY	
01G		7.8333		9.5000	
01J		25.0000		5.0000	
01M		7.8333		12.8333	
02A		17.5000		5.0000	
02C		12.4000		13.4000	
02G		21.6667		10.6667	
05U		5.0000		10.0000	
07F		8.5000		20.0000	
07K		10.0000		15.0000	

 


EX.3

127.0.0.1/us_flight_scheme/flights_schedule/		http://localhost/phpmyadmin/tbl_sql.php?db=us_flight_scheme&table=flights_schedule
 Showing rows 0 - 24 (25 total, Query took 0.0120 seconds.)

SELECT origin AS ORIGIN, year AS YEAR, month AS MONTH, AVG(Arr_Delay) AS ARRIVAL_DELAY FROM flights_schedule GROUP BY 

month,year,origin ORDER BY origin ASC

RESULT:


ORIGIN	YEAR	MONTH	ARRIVAL_DELAY	
01G	1999	5	0.0000	
01G	2019	5	10.0000	
01G	2004	7	5.0000	
01G	2018	5	12.0000	
01G	2019	10	10.0000	
01J	2002	6	25.0000	
01M	2020	7	5.0000	
01M	1995	6	20.0000	
01M	2020	5	0.0000	
01M	2015	7	10.0000	
01M	1999	5	0.0000	
01M	2002	6	12.0000	
02A	2000	4	30.0000	
02A	2020	5	5.0000	
02C	2003	7	30.0000	
02C	2018	9	5.0000	
02C	2018	7	5.0000	
02C	2020	2	11.0000	
02G	2020	9	5.0000	
02G	2000	7	30.0000	
02G	2003	7	30.0000	
05U	2020	7	5.0000	
07F	2020	7	5.0000	
07F	2020	10	12.0000	
07K	2019	10	10.0000	




EX.4

127.0.0.1/us_flight_scheme/flights_schedule/		http://localhost/phpmyadmin/tbl_sql.php?db=us_flight_scheme&table=flights_schedule
 Showing rows 0 - 24 (25 total, Query took 0.0170 seconds.)

SELECT airports.city AS CITY, flights_schedule.year AS YEAR, flights_schedule.month AS MONTH, AVG(flights_schedule.Arr_Delay) AS 

ARRIVAL_DELAY FROM flights_schedule LEFT JOIN airports ON flights_schedule.origin = airports.iata GROUP BY flights_schedule.month, 

flights_schedule.year, flights_schedule.origin ORDER BY airports.city ASC

RESULT:


CITY		YEAR	MONTH	ARRIVAL_DELAY	
Belmont		2002	6	12.0000	
Belmont		2015	7	10.0000	
Belmont		1999	5	0.0000	
Belmont		2020	5	0.0000	
Belmont		2020	7	5.0000	
Belmont		1995	6	20.0000	
Brookfield	2003	7	30.0000	
Brookfield	2020	2	11.0000	
Brookfield	2018	9	5.0000	
Brookfield	2018	7	5.0000	
Central City	2019	10	10.0000	
Clanton		2000	4	30.0000	
Clanton		2020	5	5.0000	
East Liverpool	2000	7	30.0000	
East Liverpool	2003	7	30.0000	
East Liverpool	2020	9	5.0000	
Eureka		2020	7	5.0000	
Gladewater	2020	10	12.0000	
Gladewater	2020	7	5.0000	
Hilliard	2002	6	25.0000	
Perry		1999	5	0.0000	
Perry		2019	5	10.0000	
Perry		2019	10	10.0000	
Perry		2018	5	12.0000	
Perry		2004	7	5.0000	




EX.5

127.0.0.1/us_flight_scheme/flights_schedule/		http://localhost/phpmyadmin/tbl_sql.php?db=us_flight_scheme&table=flights_schedule
 Showing rows 0 -  3 (4 total, Query took 0.0110 seconds.)

SELECT carrier_Code AS UniqueCarrierCode, year AS YEAR, month AS MONTH, COUNT(Cancelled) as Total_Cancelled FROM flights_schedule 

WHERE Cancelled = '1' GROUP BY month, year ORDER by COUNT(Cancelled) DESC

RESULT:

UniqueCarrierCode	YEAR	MONTH	Total_Cancelled	
	04Q		2002	6	2	
	09Q		2003	7	1	
	0CQ		2018	7	1	
	0CQ		2020	9	1	



EX.6

127.0.0.1/us_flight_scheme/flights_schedule/		http://localhost/phpmyadmin/tbl_sql.php?db=us_flight_scheme&table=flights_schedule
 Showing rows 0 -  9 (10 total, Query took 0.0060 seconds.)

SELECT Tail_No AS TailNo, MAX(distance) AS TotalDistance FROM `flights_schedule` GROUP BY Tail_No ORDER BY MAX(distance) DESC
LIMIT 10

RESULT:


TailNo	TotalDistance	
N11106	5623	
N11121	5000	
N109UW	4523	
N11137	4507	
N11140	4500	
N11150	4205	
N10156	99	
N104UA	71	
N102UW	70	
N103US	60

EX.7

127.0.0.1/us_flight_scheme/flights_schedule/		http://localhost/phpmyadmin/tbl_sql.php?db=us_flight_scheme&table=flights_schedule
 Showing rows 0 -  6 (7 total, Query took 0.0070 seconds.)

SELECT carrier_Code as UniqueCarrier, AVG(Arr_Delay) AS avgDelay FROM flights_schedule WHERE Arr_Delay>10 GROUP BY carrier_Code ORDER by Arr_Delay DESC

RESULT:

UniqueCarrier	avgDelay	
	06Q	30.0000	
	09Q	30.0000	
	0CQ	21.0000	
	04Q	18.5000	
	05Q	20.0000	
	0BQ	12.0000	
	2O	12.0000	
	








