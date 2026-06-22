CREATE TABLE crop_yield_data (
    crop VARCHAR(100),
    crop_year INT,
    season VARCHAR(50),
    state VARCHAR(100),
    area NUMERIC,
    production NUMERIC,
    annual_rainfall NUMERIC,
    fertilizer NUMERIC,
    pesticide NUMERIC,
    yield NUMERIC,
    avg_temperature NUMERIC,
    max_temperature NUMERIC,
    min_temperature NUMERIC
);


-- Count total records in the crop yield dataset
SELECT COUNT(*) AS total_records
FROM crop_yield_data;


-- Which are the Top 10 crops contributing the highest total production?
SELECT
    crop,
    SUM(production) AS total_production
FROM crop_yield_data
GROUP BY crop
ORDER BY total_production DESC
LIMIT 10;


-- Which crops have the highest average yield?
SELECT
    crop,
    ROUND(AVG(yield)::numeric, 2) AS avg_yield
FROM crop_yield_data
GROUP BY crop
ORDER BY avg_yield DESC
LIMIT 15;


-- Which states achieve the highest average crop yield?
SELECT
    state,
    ROUND(AVG(yield)::numeric, 2) AS avg_yield
FROM crop_yield_data
GROUP BY state
ORDER BY avg_yield DESC
LIMIT 15;


-- Which seasons produce the highest average crop yield?
SELECT
    season,
    ROUND(AVG(yield)::numeric, 2) AS avg_yield,
    COUNT(*) AS total_records
FROM crop_yield_data
GROUP BY season
ORDER BY avg_yield DESC;


-- Which states receive the highest average annual rainfall?
SELECT
    state,
    ROUND(AVG(annual_rainfall)::numeric, 2) AS avg_rainfall
FROM crop_yield_data
GROUP BY state
ORDER BY avg_rainfall DESC
LIMIT 10;



-- Which State + Crop combinations achieve the highest average yield?
SELECT
    state,
    crop,
    ROUND(AVG(yield)::numeric, 2) AS avg_yield
FROM crop_yield_data
GROUP BY state, crop
ORDER BY avg_yield DESC
LIMIT 15;


-- How has average crop yield changed over the years?
SELECT
    crop_year,
    ROUND(AVG(yield)::numeric, 2) AS avg_yield,
    ROUND(AVG(annual_rainfall)::numeric, 2) AS avg_rainfall
FROM crop_yield_data
GROUP BY crop_year
ORDER BY crop_year;





-- Which crops achieve the highest average yield while requiring the least rainfall?
SELECT
    crop,
    ROUND(AVG(yield)::numeric, 2) AS avg_yield,
    ROUND(AVG(annual_rainfall)::numeric, 2) AS avg_rainfall,
    ROUND((AVG(yield)/AVG(annual_rainfall))::numeric, 4) AS yield_per_rainfall
FROM crop_yield_data
GROUP BY crop
HAVING AVG(yield) > 1
ORDER BY yield_per_rainfall DESC
LIMIT 15;


-- Which states achieve high crop yield with relatively lower fertilizer usage?
SELECT
    state,
    ROUND(AVG(yield)::numeric, 2) AS avg_yield,
    ROUND(AVG(fertilizer)::numeric, 2) AS avg_fertilizer,
    ROUND((AVG(yield)/NULLIF(AVG(fertilizer),0))::numeric, 8) AS yield_per_fertilizer
FROM crop_yield_data
GROUP BY state
ORDER BY yield_per_fertilizer DESC
LIMIT 15


-- Which crops achieve the highest agricultural productivity
-- measured as Production per Unit Area?
SELECT
    crop,
    ROUND(AVG(production)::numeric,2) AS avg_production,
    ROUND(AVG(area)::numeric,2) AS avg_area,
    ROUND((AVG(production)/NULLIF(AVG(area),0))::numeric,2) AS productivity_per_area
FROM crop_yield_data
GROUP BY crop
ORDER BY productivity_per_area DESC
LIMIT 15;



