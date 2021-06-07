SELECT sum(c.population)
FROM city c 
JOIN country b
ON c.countrycode = b.code
WHERE b.continent = 'Asia'
