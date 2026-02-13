SELECT
    RANK() OVER (PARTITION BY name ORDER BY city_latitude DESC) AS rn,
    name AS country,
    city_name,
    city_latitude,
    city_longitude
FROM countries_cities_parsed
QUALIFY rn <= 3
ORDER BY country

--- Top 3 Westest cities in each country

