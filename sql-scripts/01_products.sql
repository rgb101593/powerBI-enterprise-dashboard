CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(50),
    ProductCategory NVARCHAR(50)  -- Added column
);
GO

BEGIN TRANSACTION;

-- Electronics (1-10)
INSERT INTO Products (ProductID, ProductName, ProductCategory)
VALUES
(1, 'Smartphone X', 'Electronics'),
(2, 'Laptop Pro', 'Electronics'),
(3, 'Tablet Air', 'Electronics'),
(4, 'Headphones Pro', 'Electronics'),
(5, 'Smartwatch V2', 'Electronics'),
(6, 'Monitor 4K', 'Electronics'),
(7, 'Printer XYZ', 'Electronics'),
(8, 'Router Giga', 'Electronics'),
(9, 'Keyboard Pro', 'Electronics'),
(10, 'Mouse Ergo', 'Electronics');

-- Appliances (11-20)
INSERT INTO Products (ProductID, ProductName, ProductCategory)
VALUES
(11, 'Refrigerator X', 'Appliances'),
(12, 'Washing Machine Pro', 'Appliances'),
(13, 'Microwave Oven', 'Appliances'),
(14, 'Air Conditioner V2', 'Appliances'),
(15, 'Blender Pro', 'Appliances'),
(16, 'Toaster Premium', 'Appliances'),
(17, 'Coffee Maker', 'Appliances'),
(18, 'Vacuum Cleaner', 'Appliances'),
(19, 'Air Purifier', 'Appliances'),
(20, 'Electric Grill', 'Appliances');

-- Furniture (21-30)
INSERT INTO Products (ProductID, ProductName, ProductCategory)
VALUES
(21, 'Office Chair Pro', 'Furniture'),
(22, 'Desk Ergo', 'Furniture'),
(23, 'Sofa Deluxe', 'Furniture'),
(24, 'Bookshelf Modern', 'Furniture'),
(25, 'Dining Table', 'Furniture'),
(26, 'File Cabinet', 'Furniture'),
(27, 'Conference Table', 'Furniture'),
(28, 'Lounge Chair', 'Furniture'),
(29, 'Storage Rack', 'Furniture'),
(30, 'TV Stand', 'Furniture');

-- Clothing (31-40)
INSERT INTO Products (ProductID, ProductName, ProductCategory)
VALUES
(31, 'Business Suit', 'Clothing'),
(32, 'Winter Coat', 'Clothing'),
(33, 'Running Shoes', 'Clothing'),
(34, 'Jeans Premium', 'Clothing'),
(35, 'T-Shirt Basic', 'Clothing'),
(36, 'Dress Formal', 'Clothing'),
(37, 'Sweater Wool', 'Clothing'),
(38, 'Hiking Boots', 'Clothing'),
(39, 'Shorts Casual', 'Clothing'),
(40, 'Jacket Leather', 'Clothing');

-- Miscellaneous (41-50)
INSERT INTO Products (ProductID, ProductName, ProductCategory)
VALUES
(41, 'Backpack Pro', 'Miscellaneous'),
(42, 'Water Bottle', 'Miscellaneous'),
(43, 'Notebook Premium', 'Miscellaneous'),
(44, 'Pen Set', 'Miscellaneous'),
(45, 'Desk Organizer', 'Miscellaneous'),
(46, 'Travel Adapter', 'Miscellaneous'),
(47, 'Umbrella Compact', 'Miscellaneous'),
(48, 'Phone Case', 'Miscellaneous'),
(49, 'Headphone Case', 'Miscellaneous'),
(50, 'Laptop Sleeve', 'Miscellaneous');

COMMIT TRANSACTION;
GO

-- Recreate index
CREATE INDEX idx_product_category ON Products (ProductCategory);
GO