---> count the number of items with item_category 'Snack' and item_subcategory 'Warm Option'
SELECT COUNT(*) AS snack_warm_option_count
FROM tasty_bytes_sample_data.raw_pos.menu
WHERE item_category = 'Snack' AND item_subcategory = 'Warm Option';