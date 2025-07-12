CREATE TABLE Regions (
    RegionID INT PRIMARY KEY,
    CityName NVARCHAR(50),
    Manager NVARCHAR(50)
);

INSERT INTO Regions (RegionID, CityName, Manager)
VALUES
(1, 'Doha', 'Alice'),
(2, 'Al Rayyan', 'Bob'),
(3, 'Al Wakrah', 'Charlie'),
(4, 'Al Khor', 'David'),
(5, 'Mesaieed', 'Eve'),
(6, 'Umm Salal', 'Frank'),
(7, 'Dukhan', 'Grace'),
(8, 'Al Shamal', 'Hank');

GO

-- Add columns for Department and Business Unit
ALTER TABLE Regions
ADD Department NVARCHAR(50),
    BusinessUnit NVARCHAR(50);

-- Assign corporate metadata
UPDATE Regions
SET 
    Department = 
        CASE 
            WHEN CityName IN ('Doha', 'Al Rayyan') THEN 'Sales'
            WHEN CityName IN ('Al Wakrah', 'Mesaieed') THEN 'Operations'
            ELSE 'Corporate'
        END,
    BusinessUnit = 
        CASE 
            WHEN CityName IN ('Doha', 'Al Khor') THEN 'Consumer Goods'
            ELSE 'Industrial Services'
        END;

