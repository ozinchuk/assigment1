CREATE OR REPLACE TABLE countries_cities_parsed AS
SELECT
    t.* EXCLUDE (cities, city, timezones, translations),
    city.id AS city_id,
    city.name AS city_name,
    TRY_CAST(city.latitude AS DOUBLE) AS city_latitude,
    TRY_CAST(city.longitude AS DOUBLE) AS city_longitude
FROM (SELECT
        *,
        UNNEST(cities::STRUCT(id BIGINT, name VARCHAR, latitude VARCHAR, longitude VARCHAR)[]) AS city
      FROM countries_cities
     ) t;

