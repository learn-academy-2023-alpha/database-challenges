WHERE

# What is the population of the US? (HINT: 278357000)
SELECT name, population
FROM country
WHERE name = 'United States'
278357000

# What is the area of the US? (HINT: 9.36352e+06)
SELECT name, surfacearea
FROM country
WHERE name = 'United States'
9.36352e+06

# Which countries gained their independence before 1963?
SELECT name, indepyear
FROM country
WHERE indepyear < 1963
121 Countries

# List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
select name, population, lifeexpectancy 
from country
WHERE population < 30000000
AND lifeexpectancy > 45
AND continent = 'Africa'
37 countries


# Which countries are something like a republic? (HINT: Are there 122 or 143?)
SELECT name, headofstate , governmentform
FROM country
WHERE governmentform
LIKE '%Republic'
143 countries


# Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
SELECT *
FROM country
WHERE governmentform
LIKE '%Republic'
AND indepyear > 1945
92 countries


# Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
SELECT name, governmentform
FROM country
WHERE governmentform
NOT LIKE '%Republic'
and indepyear > 1945
27 countries


## ORDER BY

# Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
ELECT name, lifeexpectancy
FROM country
ORDER BY lifeexpectancy asc 
LIMIT 15

"Zambia"
"Mozambique"
"Malawi"
"Zimbabwe"
"Angola"
"Botswana"
"Rwanda"
"Swaziland"
"Niger"
"Namibia"
"Uganda"
"Central African Republic"
"Cï¿½te dï¿½Ivoire"
"Ethiopia"
"Sierra Leone"


# Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy is not null
ORDER BY lifeexpectancy desc 
LIMIT 15


"Andorra"
"Macao"
"San Marino"
"Japan"
"Singapore"
"Australia"
"Switzerland"
"Sweden"
"Hong Kong"
"Canada"
"Iceland"
"Gibraltar"
"Italy"
"Cayman Islands"
"Spain"


# Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)

SELECT name, population, surfacearea,
population / surfacearea as density
FROM country
WHERE population != 0
ORDER BY density asc
LIMIT 5

"Greenland"
"Svalbard and Jan Mayen"
"Falkland Islands"
"Pitcairn"
"Western Sahara"




# Which countries have the highest population density?(HINT: starts with Macao)
SELECT name, population, surfacearea,
population / surfacearea as density
FROM country
WHERE population != 0
ORDER BY density desc
LIMIT 5

"Macao"
"Monaco"
"Hong Kong"
"Singapore"
"Gibraltar"


# Which is the smallest country by area? (HINT: .4)

SELECT *
FROM country
ORDER BY surfacearea asc
LIMIT 5

"Holy See (Vatican City State)"


# Which is the smallest country by population? (HINT: 50)?

SELECT name, population
FROM country
WHERE population != 0
ORDER BY population asc
LIMIT 5

"Pitcairn"

# Which is the biggest country by area? (HINT: 1.70754e+07)

SELECT name, population, surfacearea
FROM country
WHERE population != 0
ORDER BY surfacearea desc
LIMIT 5

"Russian Federation"	146934000	1.70754e+07


# Which is the biggest country by population? (HINT: 1277558000)

SELECT name, population, surfacearea
FROM country
WHERE population != 0
ORDER BY population desc
LIMIT 5

"China"	1277558000



# Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
SELECT name, population, surfacearea, headofstate
FROM country
WHERE population != 0
ORDER BY population desc
LIMIT 5

"China"	1277558000	9.5729e+06	"Jiang Zemin"


## Subqueries: WITH

# Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
WITH populated_countries AS (
	SELECT name, population, gnp
	FROM country
	WHERE population > 0
	AND gnp > 0
	ORDER BY gnp desc
	LIMIT 10
	)
SELECT name, population, gnp
FROM populated_countries
ORDER BY population asc
LIMIT 10

"Canada"	31147000	598862.00

# Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)
WITH leastpopulated_countries AS (
	SELECT name, population, surfacearea
	FROM country
	WHERE population > 0
	ORDER BY population asc
	LIMIT 10
	)
SELECT name, population, surfacearea
FROM leastpopulated_countries
ORDER BY surfacearea desc
LIMIT 10

"Svalbard and Jan Mayen"	3200	62422

## Aggregate Functions: GROUP BY

# Which region has the highest average gnp? (HINT: North America)

SELECT region, avg(gnp)
FROM country
GROUP BY region
ORDER BY avg(gnp) desc

"North America"


# Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)

SELECT headofstate, sum(surfacearea)
FROM country
GROUP BY headofstate
ORDER BY sum(surfacearea) desc

"Elisabeth II"


# What is the average life expectancy for all continents?


What are the most common forms of government? (HINT: use count(*))
How many countries are in North America?
What is the total population of all continents?
Stretch Challenges

Which countries have the letter ‘z’ in the name? How many?
Of the smallest 10 countries by area, which has the biggest gnp? (HINT: Macao)
Of the smallest 10 countries by population, which has the biggest per capita gnp?
Of the biggest 10 countries by area, which has the biggest gnp?
Of the biggest 10 countries by population, which has the biggest per capita gnp?
What is the sum of surface area of the 10 biggest countries in the world? The 10 smallest?
What year is this country database from? Cross reference various pieces of information to determine the age of this database.