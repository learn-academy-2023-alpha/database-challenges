# Challenges: SQL Country Database
Save your queries in a file if you want to keep them for posterity.

## WHERE
* What is the population of the US? (HINT: 278357000)

SELECT name, population
FROM country
WHERE name = 'United States'

* What is the area of the US? (HINT: 9.36352e+06)

SELECT name, surfacearea
FROM country
WHERE name = 'United States'

* Which countries gained their independence before 1963?

SELECT name, indepyear
FROM country
WHERE indepyear < 1963

"name"	"indepyear"
"Afghanistan"	1919
"Netherlands"	1581
"Albania"	1912
"Algeria"	1962
"Andorra"	1278
"Argentina"	1816
"Australia"	1901
"Belgium"	1830
"Benin"	1960
"Bhutan"	1910
"Bolivia"	1825
"Brazil"	1822
"United Kingdom"	1066
"Bulgaria"	1908
"Burkina Faso"	1960
"Burundi"	1962
"Chile"	1810
"Costa Rica"	1821
"Dominican Republic"	1844
"Ecuador"	1822
"Egypt"	1922
"El Salvador"	1841
"Spain"	1492
"South Africa"	1910
"Ethiopia"	-1000
"Philippines"	1946
"Gabon"	1960
"Ghana"	1957
"Guatemala"	1821
"Guinea"	1958
"Haiti"	1804
"Honduras"	1838
"Indonesia"	1945
"India"	1947
"Iraq"	1932
"Iran"	1906
"Ireland"	1921
"Iceland"	1944
"Israel"	1948
"Italy"	1861
"Austria"	1918
"Jamaica"	1962
"Japan"	-660
"Yemen"	1918
"Jordan"	1946
"Yugoslavia"	1918
"Cambodia"	1953
"Cameroon"	1960
"Canada"	1867
"Central African Republic"	1960
"China"	-1523
"Colombia"	1810
"Congo"	1960
"Congo, The Democratic Republic of the"	1960
"North Korea"	1948
"South Korea"	1948
"Greece"	1830
"Cuba"	1902
"Kuwait"	1961
"Cyprus"	1960
"Laos"	1953
"Lebanon"	1941
"Liberia"	1847
"Libyan Arab Jamahiriya"	1951
"Liechtenstein"	1806
"Luxembourg"	1867
"Madagascar"	1960
"Malaysia"	1957
"Mali"	1960
"Morocco"	1956
"Mauritania"	1960
"Mexico"	1810
"Monaco"	1861
"Mongolia"	1921
"Myanmar"	1948
"Nepal"	1769
"Nicaragua"	1838
"Niger"	1960
"Nigeria"	1960
"Norway"	1905
"Cï¿½te dï¿½Ivoire"	1960
"Oman"	1951
"Pakistan"	1947
"Panama"	1903
"Paraguay"	1811
"Peru"	1821
"Portugal"	1143
"Poland"	1918
"France"	843
"Romania"	1878
"Rwanda"	1962
"Sweden"	836
"Germany"	1955
"Samoa"	1962
"San Marino"	885
"Saudi Arabia"	1932
"Senegal"	1960
"Sierra Leone"	1961
"Somalia"	1960
"Sri Lanka"	1948
"Sudan"	1956
"Finland"	1917
"Switzerland"	1499
"Syria"	1941
"Taiwan"	1945
"Tanzania"	1961
"Denmark"	800
"Thailand"	1350
"Togo"	1960
"Trinidad and Tobago"	1962
"Chad"	1960
"Tunisia"	1956
"Turkey"	1923
"Uganda"	1962
"Hungary"	1918
"Uruguay"	1828
"New Zealand"	1907
"Holy See (Vatican City State)"	1929
"Venezuela"	1811
"Vietnam"	1945
"United States"	1776

* List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)

SELECT name, continent, lifeexpectancy, population
FROM country
WHERE continent = 'Africa' AND population < 3e7 AND lifeexpectancy > 45

* Which countries are something like a republic? (HINT: Are there 122 or 143?)

SELECT *
FROM country
WHERE governmentform LIKE '%epublic%'

* Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)

SELECT *
FROM country
WHERE governmentform LIKE '%epublic%' AND indepyear > 1945

* Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)

SELECT *
FROM country
WHERE governmentform
NOT LIKE '%epublic%'
AND indepyear > 1945

## ORDER BY
* Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

SELECT *
FROM country
ORDER BY lifeexpectancy
LIMIT 15


* Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)

SELECT *
FROM country
WHERE lifeexpectancy IS NOT null
ORDER BY lifeexpectancy DESC
LIMIT 15

* Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)

SELECT *
FROM country
WHERE population > 0
ORDER BY population / surfacearea
LIMIT 5

* Which countries have the highest population density?(HINT: starts with Macao)

SELECT *
FROM country
WHERE population > 0
ORDER BY population / surfacearea DESC
LIMIT 5

* Which is the smallest country by area? (HINT: .4)

SELECT *
FROM country
ORDER BY surfacearea
LIMIT 1

* Which is the smallest country by population? (HINT: 50)?

SELECT *
FROM country
WHERE population > 0
ORDER BY population
LIMIT 1

* Which is the biggest country by area? (HINT: 1.70754e+07)

SELECT *
FROM country
ORDER BY surfacearea DESC
LIMIT 1

* Which is the biggest country by population? (HINT: 1277558000)

SELECT *
FROM country
ORDER BY population DESC
LIMIT 1

* Who is the most influential head of state measured by population? (HINT: Jiang Zemin)

SELECT headofstate
FROM country
ORDER BY population DESC
LIMIT 1

## Subqueries: WITH
* Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)

WITH populated_countries AS(
	SELECT *
	FROM country
	WHERE population > 0
	ORDER BY gnp DESC
	LIMIT 10)

SELECT *
FROM populated_countries
ORDER BY population

* Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)

WITH populated_countries AS(
	SELECT *
	FROM country
	WHERE population > 0
	ORDER BY population
	LIMIT 10)

SELECT *
FROM populated_countries
ORDER BY surfacearea DESC

## Aggregate Functions: GROUP BY
* Which region has the highest average gnp? (HINT: North America)

SELECT AVG(gnp), region
FROM country
GROUP BY region
ORDER BY AVG(gnp) DESC

* Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)

SELECT headofstate, SUM(surfacearea)
FROM country
GROUP BY headofstate
ORDER BY SUM(surfacearea) DESC

* What is the average life expectancy for all continents?

SELECT AVG(lifeexpectancy), region
FROM country
GROUP BY region
ORDER BY AVG(lifeexpectancy)

* What are the most common forms of government? (HINT: use count(*))

SELECT COUNT(governmentform), governmentform
FROM country
GROUP BY governmentform
ORDER BY COUNT(governmentform) DESC

* How many countries are in North America?

SELECT COUNT(name)
FROM country
WHERE continent='North America'
GROUP BY continent

* What is the total population of all continents?

SELECT SUM(population)
FROM country

## Stretch Challenges
* Which countries have the letter ‘z’ in the name? How many?

SELECT COUNT(name)
FROM country
WHERE name
LIKE '%z%'

* Of the smallest 10 countries by area, which has the biggest gnp? (HINT: Macao)

WITH sparse_countries AS(
	SELECT *
	FROM country
	WHERE population > 0
	ORDER BY surfacearea
	LIMIT 10
)

SELECT *
FROM sparse_countries
ORDER BY gnp DESC

* Of the smallest 10 countries by population, which has the biggest per capita gnp?

WITH small_pop AS(
	SELECT *
	FROM country
	WHERE population > 0
	ORDER BY population
	LIMIT 10
)

SELECT *
FROM small_pop
ORDER BY gnp / population DESC

* Of the biggest 10 countries by area, which has the biggest gnp?

WITH big_area AS(
	SELECT *
	FROM country
	WHERE population > 0
	ORDER BY surfacearea DESC
	LIMIT 10
)

SELECT *
FROM big_area
ORDER BY gnp DESC

* Of the biggest 10 countries by population, which has the biggest per capita gnp?

WITH big_pop AS(
	SELECT *
	FROM country
	ORDER BY population DESC
	LIMIT 10
)

SELECT *
FROM big_pop
ORDER BY gnp / population DESC

* What is the sum of surface area of the 10 biggest countries in the world? The 10 smallest?

WITH big_area AS(
	SELECT *
	FROM country
	ORDER BY surfacearea DESC
	LIMIT 10
)

SELECT SUM(surfacearea)
FROM big_area

WITH big_area AS(
	SELECT *
	FROM country
	ORDER BY surfacearea
	LIMIT 10
)

SELECT SUM(surfacearea)
FROM big_area

* What year is this country database from? Cross reference various pieces of information to determine the age of this database.

SELECT *
FROM country
WHERE indepyear IS NOT null
ORDER BY indepyear DESC
LIMIT 10

* Youngest country in database is Palau, which gained independence in 1994.
* East Timor gained independence in 2002