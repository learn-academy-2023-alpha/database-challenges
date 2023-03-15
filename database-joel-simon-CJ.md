<!-- Save your queries in a file if you want to keep them for posterity.

WHERE
What is the population of the US? (HINT: 278357000)
<!-- SELECT name, population
FROM country
WHERE continent = 'North America'
 -->

<!-- What is the area of the US? (HINT: 9.36352e+06) -->

<!-- SELECT name, surfacearea
FROM country
WHERE name = 'United States'
 -->

List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)

<!-- SELECT name, population, lifeexpectancy, continent
FROM country
WHERE population <= 30000000 AND lifeexpectancy >45 AND continent ='Africa' -->

Which countries are something like a republic? (HINT: Are there 122 or 143?)

<!-- SELECT name, governmentform
FROM country
WHERE governmentform
LIKE '%epublic' -->

Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)

<!-- SELECT name, governmentform, indepyear
FROM country
WHERE governmentform LIKE '%epublic' AND indepyear >1945 -->

Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries) -->

<!-- SELECT name, governmentform, indepyear
FROM country
WHERE indepyear >1945 AND governmentform NOT LIKE '%epublic' -->

<!-- ORDER BY
Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

SELECT name, lifeexpectancy
FROM country
ORDER BY lifeexpectancy
LIMIT 15

Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)

SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy IS NOT null
ORDER BY lifeexpectancy DESC
LIMIT 15

Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)

SELECT name, population, surfacearea,
population / surfacearea AS population_density
FROM country
WHERE population != 0
ORDER BY population_density ASC
LIMIT 5

Which countries have the highest population density?(HINT: starts with Macao)

SELECT name, population, surfacearea,
population / surfacearea AS population_density
FROM country
WHERE population != 0
ORDER BY population_density DESC
LIMIT 5


Which is the smallest country by area? (HINT: .4)

SELECT name, surfacearea
FROM country
ORDER BY surfacearea ASC
LIMIT 1

Which is the smallest country by population? (HINT: 50)?
(didnt need the extra crap, but saving time)

SELECT name, population, surfacearea,
population / surfacearea AS population_density
FROM country
WHERE population != 0
ORDER BY population ASC
LIMIT 5

Which is the biggest country by area? (HINT: 1.70754e+07)

SELECT name, population, surfacearea,
population / surfacearea AS population_density
FROM country
WHERE population != 0
ORDER BY surfacearea DESC
LIMIT 5

Which is the biggest country by population? (HINT: 1277558000)

SELECT name, population, surfacearea,
population / surfacearea AS population_density
FROM country
WHERE population != 0
ORDER BY population DESC
LIMIT 5

Who is the most influential head of state measured by population? (HINT: Jiang Zemin) -->

<!-- SELECT name, population, headofstate,
population / surfacearea AS population_density
FROM country
WHERE population != 0
ORDER BY population DESC
LIMIT 5 -->

<!-- Subqueries: WITH

    Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
    Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen) -->
    
<!--     
WITH highest_gnp AS (
	SELECT name, population, gnp
	FROM country
	ORDER BY gnp DESC
	LIMIT 10
)
SELECT name, population, gnp
FROM highest_gnp
ORDER BY population DESC; -->
