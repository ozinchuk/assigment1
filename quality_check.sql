SUMMARIZE countries_cities_parsed;

SELECT
    name,
    city_name,
    COUNT(*) as repetition_count
FROM countries_cities_parsed
GROUP BY name, city_name
HAVING COUNT(*) > 1
ORDER BY repetition_count DESC;

SELECT city_id, COUNT(*)
FROM countries_cities_parsed
GROUP BY city_id
HAVING COUNT(*) > 1

SELECT
    city_name,
    city_latitude,
    city_longitude,
    COUNT(*)
FROM countries_cities_parsed
GROUP BY ALL
HAVING COUNT(*) > 1;



