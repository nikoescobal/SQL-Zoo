-- 1
SELECT name FROM world WHERE population > (SELECT population FROM world WHERE name='Russia')
-- 2
SELECT name FROM world WHERE gdp/population > (SELECT gdp/population FROM world WHERE name = 'United Kingdom') AND continent = 'Europe'
-- 3
SELECT name, continent FROM world WHERE continent IN (SELECT continent FROM world WHERE name IN ('Argentina','Australia')) ORDER BY name
-- 4
SELECT name, population FROM world WHERE population >(SELECT population FROM world WHERE name = 'Canada') AND population< (SELECT population FROM world WHERE name = 'Poland')
-- 5
SELECT name, CONCAT(ROUND(population/(SELECT population FROM world WHERE name = 'Germany')*100),'%') FROM world WHERE continent = 'Europe'
-- 6
SELECT name FROM world WHERE gdp > ALL(SELECT gdp from world WHERE continent = 'Europe' and gdp NOT LIKE 'null')
-- 7
SELECT continent, name, area FROM world WHERE area >= ALL(SELECT area FROM world y WHERE y.continent=x.continent
-- 8
SELECT continent, name FROM world x WHERE name =(SELECT name FROM world y WHERE y.continent=x.continent ORDER BY name limit 1)
-- 9

-- 10