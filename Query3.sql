SELECT
    name AS country,
    city_name,
    city_latitude,
    city_longitude,
    AVG(city_latitude) OVER (PARTITION BY name) AS country_avg_lat,
    ABS(city_latitude - AVG(city_latitude) OVER (PARTITION BY name)) AS deviation_from_center
FROM countries_cities_parsed
QUALIFY COUNT(*) OVER (PARTITION BY name) > 5
ORDER BY deviation_from_center DESC


--- the most decentalized cities