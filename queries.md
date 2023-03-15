What is the population of the US? (HINT: 278357000)
```sql
SELECT population, country
From country
WHERE name = 'United States'
```
What is the area of the US? (HINT: 9.36352e+06)
```sql
SELECT country, surfacearea
From country
WHERE name = 'United States'
```
Which countries gained their independence before 1963?
```sql
SELECT name, region, indepyear
FROM country
ORDER BY indepyear
LIMIT 10
OUTPUT: 121
```
List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
```sql
SELECT name, population, lifeexpectancy, continent
FROM country
WHERE population < 30e6
AND continent = 'Africa'
AND lifeexpectancy > 45
Outpu: 37
```
Which countries are something like a republic? (HINT: Are there 122 or 143?)
```sql
SELECT name, population, governmentform
FROM country
WHERE governmentform LIKE '%Republic'
OUTPUT: 143
```
Which countries are some kind of republic and achieved independence after 1945? 
(HINT: 92 entries)
```sql
SELECT name, population, governmentform, indepyear
FROM country
WHERE governmentform LIKE '%Republic'
AND indepyear > 1945
OUTPUT: 92
```
Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
```sql
SELECT name, population, governmentform, indepyear
FROM country
WHERE governmentform NOT LIKE  '%Republic'
AND indepyear > 1945
OUTPUT: 27
```
ORDER BY
Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia,
ends with Sierra Leonne)
```sql
SELECT name, lifeexpectancy
FROM country
ORDER BY lifeexpectancy
LIMIT 15
```
Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
```sql
SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy IS NOT null
ORDER BY lifeexpectancy DESC
LIMIT 15
```
Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
```sql
SELECT name, population, surfacearea,
population / surfacearea AS density
FROM country
WHERE population != 0
ORDER BY density
LIMIT 5
```
Which countries have the highest population density?(HINT: starts with Macao)
```sql
SELECT name, population, surfacearea,
population / surfacearea AS density
FROM country
ORDER BY density DESC
LIMIT 5
```
Which is the smallest country by area? (HINT: .4)
```sql
SELECT name, population, surfacearea
FROM country
ORDER BY surfacearea
LIMIT 1
```
Which is the smallest country by population? (HINT: 50)?
```sql
SELECT name, population
FROM country
WHERE population != 0
ORDER BY population
LIMIT 2
```
Which is the biggest country by area? (HINT: 1.70754e+07)
```sql
SELECT name, surfacearea
FROM country
ORDER BY surfacearea desc
LIMIT 1
```
Which is the biggest country by population? (HINT: 1277558000)
```sql
SELECT name, population
FROM country
ORDER BY population desc
LIMIT 1
```
Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
```sql
SELECT name, headofstate
FROM country
ORDER BY population desc
LIMIT 1
```

Subqueries: WITH

Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
```sql

```
Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)