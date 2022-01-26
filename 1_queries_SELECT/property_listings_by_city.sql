SELECT properties.id, title, cost_per_night, avg(rating) as average_rating
FROM properties
JOIN property_reviews
ON properties.id = property_reviews.property_id
WHERE city LIKE '%Vancouver' AND rating >= 4
GROUP BY properties.id
ORDER BY cost_per_night
LIMIT 10;