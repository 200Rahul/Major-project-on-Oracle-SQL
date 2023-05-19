REM   Script: STATION
REM   MAJOR ASSIGNMENT

create table Station 
(ID Number, 
CITY CHAR(20), 
STATE CHAR(2), 
LAT_N Number, 
LONG_W Number 
);

INSERT INTO Station (ID, CITY, STATE, LAT_N, LONG_W) VALUES (13,'PHOENIX', 'AZ', 13, 112);

INSERT INTO Station (ID, CITY, STATE, LAT_N, LONG_W) VALUES (44,'DENVER', 'CO', 40, 105);

INSERT INTO Station (ID, CITY, STATE, LAT_N, LONG_W) VALUES (66,'CARIBOU', 'ME', 47, 68);

  select * from Station;

SELECT * FROM Station;

SELECT * FROM Station 
where LAT_N > 39.7;

drop table "STATION" cascade constraints;

CREATE TABLE STATION 
(ID INTEGER PRIMARY KEY, 
CITY CHAR(20), 
STATE CHAR(2), 
LAT_N REAL, 
LONG_W REAL);

INSERT INTO STATION VALUES (13, 'Phoenix', 'AZ', 33, 112);

INSERT INTO STATION VALUES (44, 'Denver', 'CO', 40, 105);

INSERT INTO STATION VALUES (66, 'Caribou', 'ME', 47, 68);

SELECT * FROM STATION;

SELECT * FROM STATION 
WHERE LAT_N > 39.7;

CREATE TABLE STATS ( 
             ID INTEGER REFERENCES STATION(ID), 
             MONTH INTEGER CHECK (MONTH BETWEEN 1 AND 12), 
             TEMP_F REAL CHECK (TEMP_F BETWEEN -80 AND 150), 
             RAIN_I REAL CHECK (RAIN_I BETWEEN 0 AND 100), 
             PRIMARY KEY (ID, MONTH) 
             );

INSERT INTO STATS VALUES (13, 1, 57.4, 0.31);

INSERT INTO STATS VALUES (13, 7, 91.7, 5.15);

INSERT INTO STATS VALUES (44, 1, 27.3, 0.18);

INSERT INTO STATS VALUES (44, 7, 74.8, 2.11);

INSERT INTO STATS VALUES (66, 1, 6.7, 2.10);

INSERT INTO STATS VALUES (66, 7, 65.8, 4.52);

SELECT * FROM STATION, STATS 
WHERE TEMP_F = CITY;

SELECT * FROM STATION, STATS 
WHERE TEMP_F = CITY;

SELECT * FROM STATION, STATS 
JOIN TEMP_F.ID = CITY.ID;

SELECT * FROM STATION, STATS 
JOIN TEMPERATURE.ID = CITY.ID;

SELECT * FROM STATION, STATS, 
JOIN TEMPERATURE.ID = CITY.ID;

SELECT * FROM STATION, STATS 
JOIN  
TEMPERATURE.ID = CITY.ID;

SELECT * FROM STATION, STATS 
WHERE 
TEMPERATURE.ID = CITY.ID;

SELECT * FROM STATION, STATS 
WHERE 
TEMPERATURE.ID = CITY.MONTH;

SELECT * FROM STATION, STATS 
WHERE 
TEMPERATURE.ID = CITY;

SELECT * FROM STATION, STATS 
WHERE 
TEMPERATURE = CITY;

SELECT * FROM STATION, STATS 
WHERE 
TEMP_F = CITY;

SELECT * FROM STATION, STATS 
WHERE 
TEMP_F.MONTH = CITY.MONTH;

SELECT * FROM STATION, STATS 
JOIN 
TEMP_F.MONTH = CITY.MONTH;

SELECT * FROM STATION, STATS 
WHERE STSTION.ID = STATS.ID;

SELECT * FROM STATION, STATS 
WHERE STATION.ID = STATS.ID;

SELECT MONTH, ID, RAIN_I, TEMP_F 
FROM STATS 
ORDER BY MONTH, RAIN_I DESC;

SELECT MONTH, ID, RAIN_I, TEMP_F, CITY 
FROM STATS 
ORDER BY MONTH, RAIN_I DESC;

SELECT MONTH, ID, RAIN_I, TEMP_F 
FROM STATS 
ORDER BY MONTH, RAIN_I, CITY DESC;

SELECT MONTH, ID, RAIN_I, TEMP_F, CITY 
FROM STATS 
ORDER BY MONTH, RAIN_I, CITY DESC;

SELECT MONTH, ID, RAIN_I, TEMP_F 
FROM STATS 
ORDER BY MONTH, RAIN_I DESC;

SELECT MONTH, ID, RAIN_I, TEMP_F, CITY 
FROM STATS, STATION 
ORDER BY MONTH, RAIN_I, CITY DESC;

SELECT MONTH, ID, RAIN_I, TEMP_F, CITY 
FROM STATION, STATS 
ORDER BY MONTH, RAIN_I, CITY DESC;

SELECT MONTH, ID, RAIN_I, TEMP_F 
FROM STATION, STATS 
ORDER BY MONTH, RAIN_I, CITY DESC;

SELECT MONTH, ID, RAIN_I, TEMP_F, CITY 
FROM STATION, STATS 
ORDER BY MONTH, RAIN_I DESC;

SELECT MONTH, ID, RAIN_I, TEMP_F, CITY 
FROM STATS 
ORDER BY MONTH, RAIN_I DESC;

SELECT MONTH, ID, RAIN_I, TEMP_F, 'CITY' 
FROM STATS 
ORDER BY MONTH, RAIN_I DESC;

SELECT MONTH, ID, RAIN_I, TEMP_F, CITY 
FROM STATS 
ORDER BY MONTH, RAIN_I DESC;

SELECT CITY, MONTH, ID, RAIN_I, TEMP_F, CITY 
FROM STATS 
ORDER BY MONTH, RAIN_I DESC;

SELECT CITY, MONTH, ID, RAIN_I, TEMP_F 
FROM STATS 
ORDER BY MONTH, RAIN_I DESC;

SELECT 'CITY', MONTH, ID, RAIN_I, TEMP_F 
FROM STATS 
ORDER BY MONTH, RAIN_I DESC;

SELECT MONTH, ID, RAIN_I, TEMP_F 
FROM STATS 
ORDER BY MONTH, RAIN_I DESC;

SELECT CITY, MONTH, ID, RAIN_I, TEMP_F 
FROM STATION, STATS 
ORDER BY MONTH, RAIN_I DESC;

SELECT CITY, MONTH, ID, RAIN_I, TEMP_F 
FROM STATION, STATS 
ORDER BY MONTH, RAIN_I, CITY DESC;

