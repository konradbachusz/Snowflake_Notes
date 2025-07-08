SELECT 
    item_subcategory,
    MAX(sale_price_usd) AS max_sale_price
FROM tasty_bytes_sample_data.raw_pos.menu
WHERE item_subcategory IN ('Hot Option', 'Warm Option', 'Cold Option')
GROUP BY item_subcategory
ORDER BY max_sale_price DESC;
