
--All codes are written under MySQL.

/*
Revising the Select Query I
https://www.hackerrank.com/challenges/revising-the-select-query/problem
Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
*/

SELECT * FROM CITY
    WHERE COUNTRYCODE = 'USA'
    AND POPULATION > 100000;


/*
Revising the Select Query II
https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
*/

SELECT NAME FROM CITY
    WHERE COUNTRYCODE = 'USA'
    AND POPULATION > 120000;


/*
Select All
https://www.hackerrank.com/challenges/select-all-sql/problem
Query all columns (attributes) for every row in the CITY table.
*/

SELECT * FROM CITY;


/*
Select By ID
https://www.hackerrank.com/challenges/select-by-id/problem
Query all columns for a city in CITY with the ID 1661.
*/

SELECT * FROM CITY
    WHERE ID = 1661;


/*
Japanese Cities' Attributes
https://www.hackerrank.com/challenges/japanese-cities-attributes/problem
Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
*/

SELECT * FROM CITY
    WHERE COUNTRYCODE = 'JPN';


/*
Japanese Cities' Names
https://www.hackerrank.com/challenges/japanese-cities-name/problem
Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
*/

SELECT NAME FROM CITY
    WHERE COUNTRYCODE = 'JPN';


/*
Weather Observation Station 1
https://www.hackerrank.com/challenges/weather-observation-station-1/problem
Query a list of CITY and STATE from the STATION table.
*/

SELECT CITY, STATE FROM STATION;


/*
Weather Observation Station 3
https://www.hackerrank.com/challenges/weather-observation-station-3/problem
Query a list of CITY names from STATION for cities that have an even ID number. 
Print the results in any order, but exclude duplicates from the answer.
*/

SELECT DISTINCT CITY FROM STATION
    WHERE ID % 2 = 0;


/*
Weather Observation Station 4
https://www.hackerrank.com/challenges/weather-observation-station-4/problem
Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
*/

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;


/*
Weather Observation Station 5
https://www.hackerrank.com/challenges/weather-observation-station-5/problem
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
*/

SELECT CITY, LENGTH(CITY) FROM STATION
    ORDER BY LENGTH(CITY), CITY
    LIMIT 1;
    
SELECT CITY, LENGTH(CITY) FROM STATION
    ORDER BY LENGTH(CITY) DESC, CITY
    LIMIT 1;


/*
Weather Observation Station 6
https://www.hackerrank.com/challenges/weather-observation-station-6/problem
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
*/

SELECT DISTINCT CITY FROM STATION
    WHERE CITY REGEXP '^[aeiou].*';


/*
Weather Observation Station 7
https://www.hackerrank.com/challenges/weather-observation-station-7/problem
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
*/

SELECT DISTINCT CITY FROM STATION
    WHERE RIGHT(CITY, 1) REGEXP '^[aeiou]';


/*
Weather Observation Station 8
https://www.hackerrank.com/challenges/weather-observation-station-8/problem
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. 
Your result cannot contain duplicates.
*/

SELECT DISTINCT CITY FROM STATION
    WHERE RIGHT(CITY, 1) REGEXP '^[aeiou]'
    AND LEFT(CITY, 1) REGEXP '^[aeiou]'


/*
Weather Observation Station 9
https://www.hackerrank.com/challenges/weather-observation-station-9/problem
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
*/

SELECT DISTINCT CITY FROM STATION
    WHERE LEFT(CITY, 1) REGEXP '^[^aeiou].*';


/*
Weather Observation Station 10
https://www.hackerrank.com/challenges/weather-observation-station-10/problem
Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
*/

SELECT DISTINCT CITY FROM STATION
    WHERE RIGHT(CITY, 1) REGEXP '^[^aeiou]';


/*
Weather Observation Station 11
https://www.hackerrank.com/challenges/weather-observation-station-11/problem
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
*/

SELECT DISTINCT CITY FROM STATION
    WHERE LEFT(CITY, 1) REGEXP '^[^aeiou]'
    OR RIGHT(CITY, 1) REGEXP '^[^aeiou]';


/*
Weather Observation Station 12
https://www.hackerrank.com/challenges/weather-observation-station-12/problem
Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
*/

SELECT DISTINCT CITY FROM STATION
    WHERE LEFT(CITY, 1) REGEXP '^[^aeiou]'
    AND RIGHT(CITY, 1) REGEXP '^[^aeiou]';


/*
Higher Than 75 Marks
https://www.hackerrank.com/challenges/more-than-75-marks/problem
Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
*/

SELECT Name FROM STUDENTS
    WHERE Marks > 75
    ORDER BY RIGHT(Name, 3), ID ASC;


/*
Employee Names
https://www.hackerrank.com/challenges/name-of-employees/problem
Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
*/

SELECT name FROM Employee
    ORDER BY name;


/*
Employee Salaries
https://www.hackerrank.com/challenges/salary-of-employees/problem
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary 
greater than 10 per month who have been employees for less than  months. Sort your result by ascending employee_id.
*/

SELECT name FROM Employee
    WHERE salary > 2000
    AND months < 10
    ORDER BY employee_id;

