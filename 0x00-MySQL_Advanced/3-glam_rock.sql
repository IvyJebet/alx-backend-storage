-- Make sure the table exists; if not, import it first
-- Assuming metal_bands table has columns: band_name, main_style, formed, split

-- Query to list Glam rock bands ranked by their lifespan
SELECT 
    band_name, 
    CASE 
        WHEN split IS NULL THEN 2022 - formed  -- If split is NULL, the band is still active
        ELSE split - formed                     -- Calculate lifespan as difference between split and formed years
    END AS lifespan
FROM 
    metal_bands
WHERE 
    main_style = 'Glam rock'                   -- Filter for Glam rock bands
ORDER BY 
    lifespan DESC;                            -- Order by lifespan in descending order
