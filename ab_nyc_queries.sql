-- AIRBNB NYC 2019 ANALYSIS
-- AUTHOR: ANDREA GRASSETTI

SELECT * 
FROM ab_nyc_2019
LIMIT 10;

-- AVERAGE PRICE OF LISTING BY BOROUGH --
SELECT neighbourhood_group, AVG(price) AS avg_price
FROM ab_nyc_2019
GROUP BY neighbourhood_group;

-- COUNT OF LISTING BY ROOM TYPE --
SELECT room_type, COUNT(*) AS total_listings
FROM ab_nyc_2019
GROUP BY room_type;

-- MOST EXPENSIVE LISTING --
SELECT name, neighbourhood_group, price
FROM ab_nyc_2019
ORDER BY price DESC
LIMIT 10;

-- LISTING WITH HIGH MINIMUM NIGHTS --
SELECT name, minimum_nights
FROM ab_nyc_2019
ORDER BY minimum_nights DESC
LIMIT 10;

-- AVERAGE REVIEW PER MONTH BY NEIGHBORHOOD --
SELECT neighbourhood, AVG(reviews_per_month) AS avg_reviews
FROM ab_nyc_2019
GROUP BY neighbourhood
ORDER BY avg_reviews DESC
LIMIT 10;

-- TOTAL LISTING PER HOST --
SELECT host_name, COUNT(*) AS total_listing
FROM ab_nyc_2019
GROUP BY host_name
ORDER BY total_listing DESC
LIMIT 10;

-- WHICH NEIGHBORHOOD GROUP HAS THE MOST LISTING? --
SELECT neighbourhood_group, COUNT(*) AS most_listing
FROM ab_nyc_2019
GROUP BY neighbourhood_group
ORDER BY most_listing DESC
LIMIT 10;

-- WHICH ROOM TYPE IS THE MOST COMMON? --
SELECT room_type, COUNT(*) AS most_common
FROM ab_nyc_2019
GROUP BY room_type
ORDER BY most_common DESC
LIMIT 10;

-- ARE THERE LISTING WITH UNREALISTIC PRICES? --
SELECT name, neighbourhood_group, price
FROM ab_nyc_2019
WHERE price < 20 AND price > 10000
ORDER BY price DESC
LIMIT 10;