

What is the population of the US? (HINT: 278357000)
```sql
SELECT code, population
FROM country
WHERE code = 'USA'
```
What is the area of the US? SELECT code, surfacearea
```sql
FROM country
WHERE code = 'USA'(HINT: 9.36352e+06)
```
Which countries gained their independence before 1963?
```sql
SELECT indepyear, name
FROM country
WHERE indepyear < 1963
```
List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
```sql
SELECT population, name, continent
FROM country
WHERE continent = 'Africa' AND population < 30e6 AND lifeexpectancy > 45
```
Which countries are something like a republic? (HINT: Are there 122 or 143?)
```sql
SELECT name, governmentform
FROM country
WHERE governmentform
LIKE 'Republic'
```
Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
```sql
SELECT name, governmentform, indepyear
FROM country
WHERE indepyear > 1945 AND governmentform
LIKE '%epublic'
```
Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
```sql
SELECT name, governmentform
FROM country
WHERE indepyear > 1945 AND governmentform
NOT LIKE '%epublic'
```
ORDER BY
Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
```sql
SELECT name
FROM country
ORDER BY lifeexpectancy
LIMIT 15
```
Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
```sql
SELECT name
FROM country
ORDER BY lifeexpectancy DESC nulls LAST
LIMIT 15;
```
Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
```sql
SELECT name,
population / surfacearea AS population_density
FROM country
WHERE population !=0
ORDER BY population_density
LIMIT 5
```
Which countries have the highest population density?(HINT: starts with Macao)
```sql
SELECT name,
population / surfacearea AS population_density
FROM country
WHERE population !=0
ORDER BY population_density DESC
```
Which is the smallest country by area? (HINT: .4)
```sql
SELECT name, surfacearea
FROM country
ORDER BY surfacearea
LIMIT 1
```
Which is the smallest country by population? (HINT: 50)?
```sql
SELECT name, population
FROM country
WHERE population !=0
ORDER BY population
LIMIT 1
```
Which is the biggest country by area? (HINT: 1.70754e+07)
```sql
SELECT name, surfacearea
FROM country
ORDER BY surfacearea DESC
LIMIT 1
```
Which is the biggest country by population? (HINT: 1277558000)
```sql
SELECT name, population
FROM country
ORDER BY population DESC
LIMIT 1
```
Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
```sql
SELECT headofstate
FROM country
ORDER BY population DESC
LIMIT 1
```


