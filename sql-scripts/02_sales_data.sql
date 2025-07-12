-- Create SalesData table with ProductCategory
CREATE TABLE SalesData (
    OrderID INT PRIMARY KEY,
    ProductID INT,
    ProductName NVARCHAR(50),
    ProductCategory NVARCHAR(50),  -- Added column
    Region NVARCHAR(50),
    Sales DECIMAL(18, 2),
    UnitCost DECIMAL(18, 2),
    Quantity INT,
    CustomerSegment NVARCHAR(50),
    OrderDate DATE
);
GO


-- Insert 100+ rows of sample data
BEGIN TRANSACTION;

-- Batch 1: 20 rows (Electronics)
INSERT INTO SalesData (OrderID, ProductID, ProductName, ProductCategory, Region, Sales, UnitCost, Quantity, CustomerSegment, OrderDate)
VALUES
(1001, 1, 'Smartphone X', 'Electronics', 'North', 1200.00, 450.00, 2, 'Retail', '2023-01-15'),
(1002, 1, 'Smartphone X', 'Electronics', 'South', 1200.00, 450.00, 1, 'Corporate', '2023-01-16'),
(1003, 2, 'Laptop Pro', 'Electronics', 'East', 1800.00, 700.00, 3, 'Wholesale', '2023-01-17'),
(1004, 3, 'Tablet Air', 'Electronics', 'West', 800.00, 300.00, 4, 'Government', '2023-01-18'),
(1005, 4, 'Headphones Pro', 'Electronics', 'Global', 200.00, 50.00, 10, 'Retail', '2023-01-19'),
(1006, 1, 'Smartphone X', 'Electronics', 'North', 1200.00, 450.00, 5, 'Corporate', '2023-01-20'),
(1007, 2, 'Laptop Pro', 'Electronics', 'South', 1800.00, 700.00, 2, 'Wholesale', '2023-01-21'),
(1008, 3, 'Tablet Air', 'Electronics', 'East', 800.00, 300.00, 8, 'Government', '2023-01-22'),
(1009, 4, 'Headphones Pro', 'Electronics', 'West', 200.00, 50.00, 15, 'Retail', '2023-01-23'),
(1010, 5, 'Smartwatch V2', 'Electronics', 'Global', 300.00, 100.00, 20, 'Corporate', '2023-01-24'),
(1011, 6, 'Monitor 4K', 'Electronics', 'North', 500.00, 200.00, 10, 'Wholesale', '2023-01-25'),
(1012, 7, 'Printer XYZ', 'Electronics', 'South', 400.00, 150.00, 5, 'Government', '2023-01-26'),
(1013, 8, 'Router Giga', 'Electronics', 'East', 150.00, 50.00, 30, 'Retail', '2023-01-27'),
(1014, 9, 'Keyboard Pro', 'Electronics', 'West', 75.00, 25.00, 40, 'Corporate', '2023-01-28'),
(1015, 10, 'Mouse Ergo', 'Electronics', 'Global', 50.00, 15.00, 50, 'Wholesale', '2023-01-29'),
(1016, 1, 'Smartphone X', 'Electronics', 'North', 1200.00, 450.00, 1, 'Government', '2023-01-30'),
(1017, 2, 'Laptop Pro', 'Electronics', 'South', 1800.00, 700.00, 4, 'Retail', '2023-01-31'),
(1018, 3, 'Tablet Air', 'Electronics', 'East', 800.00, 300.00, 6, 'Corporate', '2023-02-01'),
(1019, 4, 'Headphones Pro', 'Electronics', 'West', 200.00, 50.00, 12, 'Wholesale', '2023-02-02'),
(1020, 5, 'Smartwatch V2', 'Electronics', 'Global', 300.00, 100.00, 25, 'Government', '2023-02-03');

-- Batch 2: 20 rows (Appliances)
INSERT INTO SalesData (OrderID, ProductID, ProductName, ProductCategory, Region, Sales, UnitCost, Quantity, CustomerSegment, OrderDate)
VALUES
(1021, 11, 'Refrigerator X', 'Appliances', 'North', 1500.00, 600.00, 2, 'Retail', '2023-02-04'),
(1022, 12, 'Washing Machine Pro', 'Appliances', 'South', 1200.00, 500.00, 3, 'Corporate', '2023-02-05'),
(1023, 13, 'Microwave Oven', 'Appliances', 'East', 300.00, 100.00, 10, 'Wholesale', '2023-02-06'),
(1024, 14, 'Air Conditioner V2', 'Appliances', 'West', 900.00, 400.00, 5, 'Government', '2023-02-07'),
(1025, 15, 'Blender Pro', 'Appliances', 'Global', 150.00, 50.00, 20, 'Retail', '2023-02-08'),
(1026, 11, 'Refrigerator X', 'Appliances', 'North', 1500.00, 600.00, 1, 'Corporate', '2023-02-09'),
(1027, 12, 'Washing Machine Pro', 'Appliances', 'South', 1200.00, 500.00, 4, 'Wholesale', '2023-02-10'),
(1028, 13, 'Microwave Oven', 'Appliances', 'East', 300.00, 100.00, 8, 'Government', '2023-02-11'),
(1029, 14, 'Air Conditioner V2', 'Appliances', 'West', 900.00, 400.00, 3, 'Retail', '2023-02-12'),
(1030, 15, 'Blender Pro', 'Appliances', 'Global', 150.00, 50.00, 15, 'Corporate', '2023-02-13'),
(1031, 16, 'Toaster Premium', 'Appliances', 'North', 100.00, 40.00, 25, 'Wholesale', '2023-02-14'),
(1032, 17, 'Coffee Maker', 'Appliances', 'South', 200.00, 80.00, 10, 'Government', '2023-02-15'),
(1033, 18, 'Vacuum Cleaner', 'Appliances', 'East', 400.00, 150.00, 5, 'Retail', '2023-02-16'),
(1034, 19, 'Air Purifier', 'Appliances', 'West', 600.00, 250.00, 2, 'Corporate', '2023-02-17'),
(1035, 20, 'Electric Grill', 'Appliances', 'Global', 250.00, 100.00, 12, 'Wholesale', '2023-02-18'),
(1036, 11, 'Refrigerator X', 'Appliances', 'North', 1500.00, 600.00, 3, 'Government', '2023-02-19'),
(1037, 12, 'Washing Machine Pro', 'Appliances', 'South', 1200.00, 500.00, 2, 'Retail', '2023-02-20'),
(1038, 13, 'Microwave Oven', 'Appliances', 'East', 300.00, 100.00, 5, 'Corporate', '2023-02-21'),
(1039, 14, 'Air Conditioner V2', 'Appliances', 'West', 900.00, 400.00, 4, 'Wholesale', '2023-02-22'),
(1040, 15, 'Blender Pro', 'Appliances', 'Global', 150.00, 50.00, 18, 'Government', '2023-02-23');

-- Batch 3: 20 rows (Furniture)
INSERT INTO SalesData (OrderID, ProductID, ProductName, ProductCategory, Region, Sales, UnitCost, Quantity, CustomerSegment, OrderDate)
VALUES
(1041, 21, 'Office Chair Pro', 'Furniture', 'North', 450.00, 200.00, 10, 'Corporate', '2023-02-24'),
(1042, 22, 'Desk Ergo', 'Furniture', 'South', 600.00, 250.00, 8, 'Wholesale', '2023-02-25'),
(1043, 23, 'Sofa Deluxe', 'Furniture', 'East', 1200.00, 500.00, 2, 'Retail', '2023-02-26'),
(1044, 24, 'Bookshelf Modern', 'Furniture', 'West', 300.00, 120.00, 5, 'Government', '2023-02-27'),
(1045, 25, 'Dining Table', 'Furniture', 'Global', 900.00, 400.00, 3, 'Corporate', '2023-02-28'),
(1046, 21, 'Office Chair Pro', 'Furniture', 'North', 450.00, 200.00, 5, 'Wholesale', '2023-03-01'),
(1047, 22, 'Desk Ergo', 'Furniture', 'South', 600.00, 250.00, 3, 'Retail', '2023-03-02'),
(1048, 23, 'Sofa Deluxe', 'Furniture', 'East', 1200.00, 500.00, 1, 'Government', '2023-03-03'),
(1049, 24, 'Bookshelf Modern', 'Furniture', 'West', 300.00, 120.00, 10, 'Corporate', '2023-03-04'),
(1050, 25, 'Dining Table', 'Furniture', 'Global', 900.00, 400.00, 2, 'Wholesale', '2023-03-05'),
(1051, 26, 'File Cabinet', 'Furniture', 'North', 200.00, 80.00, 15, 'Retail', '2023-03-06'),
(1052, 27, 'Conference Table', 'Furniture', 'South', 1500.00, 600.00, 2, 'Government', '2023-03-07'),
(1053, 28, 'Lounge Chair', 'Furniture', 'East', 300.00, 120.00, 8, 'Corporate', '2023-03-08'),
(1054, 29, 'Storage Rack', 'Furniture', 'West', 400.00, 160.00, 5, 'Wholesale', '2023-03-09'),
(1055, 30, 'TV Stand', 'Furniture', 'Global', 250.00, 100.00, 10, 'Retail', '2023-03-10'),
(1056, 21, 'Office Chair Pro', 'Furniture', 'North', 450.00, 200.00, 7, 'Government', '2023-03-11'),
(1057, 22, 'Desk Ergo', 'Furniture', 'South', 600.00, 250.00, 4, 'Corporate', '2023-03-12'),
(1058, 23, 'Sofa Deluxe', 'Furniture', 'East', 1200.00, 500.00, 3, 'Wholesale', '2023-03-13'),
(1059, 24, 'Bookshelf Modern', 'Furniture', 'West', 300.00, 120.00, 6, 'Retail', '2023-03-14'),
(1060, 25, 'Dining Table', 'Furniture', 'Global', 900.00, 400.00, 1, 'Government', '2023-03-15');

-- Batch 4: 20 rows (Clothing)
INSERT INTO SalesData (OrderID, ProductID, ProductName, ProductCategory, Region, Sales, UnitCost, Quantity, CustomerSegment, OrderDate)
VALUES
(1061, 31, 'Business Suit', 'Clothing', 'North', 300.00, 120.00, 20, 'Retail', '2023-03-16'),
(1062, 32, 'Winter Coat', 'Clothing', 'South', 250.00, 100.00, 15, 'Corporate', '2023-03-17'),
(1063, 33, 'Running Shoes', 'Clothing', 'East', 150.00, 60.00, 30, 'Wholesale', '2023-03-18'),
(1064, 34, 'Jeans Premium', 'Clothing', 'West', 80.00, 30.00, 50, 'Government', '2023-03-19'),
(1065, 35, 'T-Shirt Basic', 'Clothing', 'Global', 20.00, 8.00, 100, 'Retail', '2023-03-20'),
(1066, 31, 'Business Suit', 'Clothing', 'North', 300.00, 120.00, 10, 'Corporate', '2023-03-21'),
(1067, 32, 'Winter Coat', 'Clothing', 'South', 250.00, 100.00, 8, 'Wholesale', '2023-03-22'),
(1068, 33, 'Running Shoes', 'Clothing', 'East', 150.00, 60.00, 25, 'Government', '2023-03-23'),
(1069, 34, 'Jeans Premium', 'Clothing', 'West', 80.00, 30.00, 40, 'Retail', '2023-03-24'),
(1070, 35, 'T-Shirt Basic', 'Clothing', 'Global', 20.00, 8.00, 80, 'Corporate', '2023-03-25'),
(1071, 36, 'Dress Formal', 'Clothing', 'North', 400.00, 160.00, 12, 'Wholesale', '2023-03-26'),
(1072, 37, 'Sweater Wool', 'Clothing', 'South', 180.00, 70.00, 18, 'Government', '2023-03-27'),
(1073, 38, 'Hiking Boots', 'Clothing', 'East', 200.00, 80.00, 20, 'Retail', '2023-03-28'),
(1074, 39, 'Shorts Casual', 'Clothing', 'West', 50.00, 20.00, 60, 'Corporate', '2023-03-29'),
(1075, 40, 'Jacket Leather', 'Clothing', 'Global', 600.00, 250.00, 5, 'Wholesale', '2023-03-30'),
(1076, 31, 'Business Suit', 'Clothing', 'North', 300.00, 120.00, 15, 'Government', '2023-03-31'),
(1077, 32, 'Winter Coat', 'Clothing', 'South', 250.00, 100.00, 12, 'Retail', '2023-04-01'),
(1078, 33, 'Running Shoes', 'Clothing', 'East', 150.00, 60.00, 35, 'Corporate', '2023-04-02'),
(1079, 34, 'Jeans Premium', 'Clothing', 'West', 80.00, 30.00, 45, 'Wholesale', '2023-04-03'),
(1080, 35, 'T-Shirt Basic', 'Clothing', 'Global', 20.00, 8.00, 90, 'Government', '2023-04-04');

-- Batch 5: 20 rows (Miscellaneous)
INSERT INTO SalesData (OrderID, ProductID, ProductName, ProductCategory, Region, Sales, UnitCost, Quantity, CustomerSegment, OrderDate)
VALUES
(1081, 41, 'Backpack Pro', 'Miscellaneous', 'North', 100.00, 40.00, 25, 'Retail', '2023-04-05'),
(1082, 42, 'Water Bottle', 'Miscellaneous', 'South', 25.00, 10.00, 100, 'Corporate', '2023-04-06'),
(1083, 43, 'Notebook Premium', 'Miscellaneous', 'East', 15.00, 5.00, 200, 'Wholesale', '2023-04-07'),
(1084, 44, 'Pen Set', 'Miscellaneous', 'West', 10.00, 3.00, 300, 'Government', '2023-04-08'),
(1085, 45, 'Desk Organizer', 'Miscellaneous', 'Global', 40.00, 15.00, 50, 'Retail', '2023-04-09'),
(1086, 41, 'Backpack Pro', 'Miscellaneous', 'North', 100.00, 40.00, 15, 'Corporate', '2023-04-10'),
(1087, 42, 'Water Bottle', 'Miscellaneous', 'South', 25.00, 10.00, 80, 'Wholesale', '2023-04-11'),
(1088, 43, 'Notebook Premium', 'Miscellaneous', 'East', 15.00, 5.00, 150, 'Government', '2023-04-12'),
(1089, 44, 'Pen Set', 'Miscellaneous', 'West', 10.00, 3.00, 250, 'Retail', '2023-04-13'),
(1090, 45, 'Desk Organizer', 'Miscellaneous', 'Global', 40.00, 15.00, 30, 'Corporate', '2023-04-14'),
(1091, 46, 'Travel Adapter', 'Miscellaneous', 'North', 30.00, 12.00, 40, 'Wholesale', '2023-04-15'),
(1092, 47, 'Umbrella Compact', 'Miscellaneous', 'South', 20.00, 8.00, 60, 'Government', '2023-04-16'),
(1093, 48, 'Phone Case', 'Miscellaneous', 'East', 15.00, 5.00, 100, 'Retail', '2023-04-17'),
(1094, 49, 'Headphone Case', 'Miscellaneous', 'West', 25.00, 10.00, 50, 'Corporate', '2023-04-18'),
(1095, 50, 'Laptop Sleeve', 'Miscellaneous', 'Global', 50.00, 20.00, 20, 'Wholesale', '2023-04-19'),
(1096, 41, 'Backpack Pro', 'Miscellaneous', 'North', 100.00, 40.00, 10, 'Government', '2023-04-20'),
(1097, 42, 'Water Bottle', 'Miscellaneous', 'South', 25.00, 10.00, 70, 'Retail', '2023-04-21'),
(1098, 43, 'Notebook Premium', 'Miscellaneous', 'East', 15.00, 5.00, 120, 'Corporate', '2023-04-22'),
(1099, 44, 'Pen Set', 'Miscellaneous', 'West', 10.00, 3.00, 200, 'Wholesale', '2023-04-23'),
(1100, 45, 'Desk Organizer', 'Miscellaneous', 'Global', 40.00, 15.00, 40, 'Government', '2023-04-24');



-- Update SalesData.Region to Qatar cities
UPDATE SalesData
SET Region = 
    CASE 
        WHEN Region = 'North' THEN 'Al Rayyan'
        WHEN Region = 'South' THEN 'Al Wakrah'
        WHEN Region = 'East' THEN 'Al Khor'
        WHEN Region = 'West' THEN 'Mesaieed'
        WHEN Region = 'Global' THEN 'Doha'
        ELSE Region -- Keep existing valid entries
    END;

-- Verify updates
SELECT DISTINCT Region FROM SalesData;

COMMIT TRANSACTION;

-- Add indexes for performance (Power BI integration)
CREATE INDEX idx_product ON SalesData (ProductCategory);
CREATE INDEX idx_region ON SalesData (Region);
CREATE INDEX idx_date ON SalesData (OrderDate);