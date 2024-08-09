-- Make sure the table exists; if not, you might need to import it first
-- For demonstration purposes, let's assume it has already been imported

-- Query to rank country origins by the number of fans
SELECT 
    origin AS country, 
    SUM(nb_fans) AS total_fans
FROM 
    metal_bands
GROUP BY 
    origin
ORDER BY 
    total_fans DESC;
