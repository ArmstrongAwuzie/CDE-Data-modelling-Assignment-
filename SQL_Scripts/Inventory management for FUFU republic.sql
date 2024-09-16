
--Historical Trend of Inventory Levels
SELECT
    t.date,
    b.branch_name,
    i.item_name,
    inv.beginning_inventory,
    inv.ending_inventory
FROM
    Inventory_Fact inv
    JOIN Time_Dimension t ON inv.time_id = t.time_id
    JOIN Branch_Dimension b ON inv.branch_id = b.branch_id
    JOIN Menu_Item_Dimension i ON inv.item_id = i.item_id
ORDER BY
    t.date, b.branch_name, i.item_name;

--Inventory Adjustments and Sales Correlation
SELECT
    b.branch_name,
    i.item_name,
    SUM(inv.stock_adjustments) AS total_adjustments,
    SUM(inv.sales_quantity) AS total_sales
FROM
    Inventory_Fact inv
    JOIN Branch_Dimension b ON inv.branch_id = b.branch_id
    JOIN Menu_Item_Dimension i ON inv.item_id = i.item_id
GROUP BY
    b.branch_name, i.item_name;
