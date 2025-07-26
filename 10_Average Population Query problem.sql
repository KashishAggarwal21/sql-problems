--  Query the average population for all cities in CITY, rounded down to the nearest integer
SELECT 
    co.Continent,
    FLOOR(AVG(ci.Population)) AS Avg_City_Population
FROM 
    City ci
JOIN 
    Country co
    ON ci.CountryCode = co.Code
GROUP BY 
    co.Continent;