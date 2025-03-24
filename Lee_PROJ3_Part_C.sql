-------------------------------------------------------------------------------
-- Lee, Victoria | CMSC320 | 7/23/2024 | Project 3: Physical Database Design
-------------------------------------------------------------------------------
-- SQL Script of Project 2 Model (ALL QUERIES AND DROPS) (PART C)
-------------------------------------------------------------------------------
-- 5 QUERIES and TESTS
-------------------------------------------------------------------------------
-- *** DO NOT AUTO RUN SCRIPT FILE ***
-- *** RUN STATEMENTS ONLY ***
-------------------------------------------------------------------------------

-- Checking QURIES TESTS
SELECT * FROM Customer;
SELECT * FROM CustomerMovie;
SELECT * FROM Movies;
SELECT * FROM Actors;
SELECT * FROM Actresses;
SELECT * FROM Directors;
SELECT * FROM Awards;
SELECT * FROM DistributorProducer;
SELECT * FROM Media;
SELECT * FROM DVD_Type;
SELECT * FROM VCR_Type;

-------------------------------------------------------------------------------
-- 5 QUERIES for Project 3 [Queries of 1-5]:
-------------------------------------------------------------------------------
-- Query 1:
-- Generic of All Customers in Table
SELECT 
    CustomerID, 
    FirstName, 
    LastName, 
    SUBSTR(Address, 1, INSTR(Address, ',') - 1) AS Street,
    SUBSTR(Address, -5) AS ZipCode
FROM 
    Customer
ORDER BY 
    CustomerID;

-- Detailed version sorting by CustomerID and only have street and zipcode
-- (NOT state or city from Address).
SELECT 
    c.CustomerID, 
    c.FirstName, 
    c.LastName, 
    SUBSTR(Address, 1, INSTR(Address, ',') - 1) AS Street,
    SUBSTR(Address, -5) AS ZipCode,
    c.Phone, 
    c.Email,
    cm.MovieID, 
    m.Title AS MovieTitle, 
    m.Genre, 
    m.DurationTime, 
    m.Rating AS MovieRating, 
    m.Year_n AS MovieYear,
    d.DirectorName,
    a.ActorName,
    ac.ActressName,
    aw.AwardName,
    dp.DistributorName,
    dp.ProducerName,
    dp.CompanyName,
    dp.Country,
    dp.CountryRegionLocks,
    cm.DateOfRental, 
    cm.DateRentalDue, 
    cm.FeesLate, 
    cm.FeesReserve, 
    cm.FeesUnplayableRentals, 
    cm.FeesDamages, 
    cm.FeesRewind, 
    cm.Tax, 
    cm.Rating AS CustomerRating,
    me.FormatType,
    COALESCE(dvd.RentalPrice, vcr.RentalPrice) AS RentalPrice,
    COALESCE(dvd.Quantity, vcr.Quantity) AS Quantity
FROM 
    Customer c
LEFT JOIN 
    CustomerMovie cm ON c.CustomerID = cm.CustomerID
LEFT JOIN 
    Movies m ON cm.MovieID = m.MovieID
LEFT JOIN 
    Directors d ON m.DirectorID = d.DirectorID
LEFT JOIN 
    Actors a ON m.ActorsID = a.ActorsID
LEFT JOIN 
    Actresses ac ON m.ActressesID = ac.ActressesID
LEFT JOIN 
    Awards aw ON m.AwardsID = aw.AwardsID
LEFT JOIN 
    DistributorProducer dp ON m.DistributorProducerID = dp.DistributorProducerID
LEFT JOIN 
    Media me ON m.MediaID = me.MediaID
LEFT JOIN 
    DVD_Type dvd ON me.MediaID = dvd.MediaID
LEFT JOIN 
    VCR_Type vcr ON me.MediaID = vcr.MediaID
ORDER BY 
    c.CustomerID;

-------------------------------------------------------------------------------
-- Query 2:
-- Generic of All videos/movies in the last 30 days
-- Should pop up only 3 movies as the other 4 are not within July
-- This is beucase the other 4 have DateOfRental before the month of July.
SELECT cm.MovieID, m.Title, cm.CustomerID, cm.DateOfRental
FROM CustomerMovie cm
JOIN Movies m ON cm.MovieID = m.MovieID
WHERE cm.DateOfRental >= TO_DATE('2024-07-30', 'YYYY-MM-DD') - 30
ORDER BY cm.DateOfRental;

-- Detailed of All videos/movies in the last 30 days (Movie table data included)
SELECT 
    cm.MovieID, 
    m.Title, 
    m.Genre, 
    m.DurationTime, 
    m.Rating AS MovieRating, 
    m.Year_n AS MovieYear,
    m.MediaID, 
    m.DistributorProducerID, 
    m.ActorsID, 
    m.ActressesID, 
    m.AwardsID, 
    m.DirectorID,
    cm.CustomerID, 
    cm.DateOfRental
FROM 
    CustomerMovie cm
JOIN 
    Movies m ON cm.MovieID = m.MovieID
WHERE 
    cm.DateOfRental >= TO_DATE('2024-07-30', 'YYYY-MM-DD') - 30
ORDER BY 
    cm.DateOfRental;

-- Detialed Version 2 again but instead of ids it is repalced with the names.
-- Without DistributorProducer Names as it also has more items...
SELECT 
    cm.MovieID, 
    m.Title, 
    m.Genre, 
    m.DurationTime, 
    m.Rating AS MovieRating, 
    m.Year_n AS MovieYear,
    m.MediaID, 
    m.DistributorProducerID, 
    a.ActorName, 
    ac.ActressName, 
    m.AwardsID, 
    m.DirectorID,
    cm.CustomerID, 
    cm.DateOfRental
FROM 
    CustomerMovie cm
JOIN 
    Movies m ON cm.MovieID = m.MovieID
LEFT JOIN 
    Actors a ON m.ActorsID = a.ActorsID
LEFT JOIN 
    Actresses ac ON m.ActressesID = ac.ActressesID
LEFT JOIN 
    Directors ac ON m.DirectorID = ac.DirectorID
WHERE 
    cm.DateOfRental >= TO_DATE('2024-07-30', 'YYYY-MM-DD') - 30
ORDER BY 
    cm.DateOfRental;

-------------------------------------------------------------------------------
-- Query 3:
-- Generic of All incormation from the DistributorProducer Table
-- All Sorted by CompanyName
SELECT DistributorProducerID, DistributorID, ProducerID, DistributorName, 
ProducerName, CompanyName, Country, CountryRegionLocks
FROM DistributorProducer
ORDER BY CompanyName;

-- Detailed version sorted by CompanyName and includes 
-- Movies information Table as well.
SELECT 
    dp.DistributorProducerID, 
    dp.DistributorID, 
    dp.ProducerID, 
    dp.DistributorName, 
    dp.ProducerName, 
    dp.CompanyName, 
    dp.Country, 
    dp.CountryRegionLocks,
    m.MovieID, 
    m.Title, 
    m.Genre, 
    m.DurationTime, 
    m.Rating AS MovieRating, 
    m.Year_n AS MovieYear,
    m.MediaID, 
    m.ActorsID, 
    m.ActressesID, 
    m.AwardsID, 
    m.DirectorID
FROM 
    DistributorProducer dp
JOIN 
    Movies m ON dp.DistributorProducerID = m.DistributorProducerID
ORDER BY 
    dp.CompanyName;

-------------------------------------------------------------------------------
-- Query 4:
-- Updating a customer name, choosing a specific row
UPDATE Customer
SET LastName = 'MarriedName'
WHERE CustomerID = 1;

-- To undo the update (Simple version)
ROLLBACK;
-- Alternative: To undo the update (Using the original LastName with UPDATE)
UPDATE Customer
SET LastName = 'Doe'
WHERE CustomerID = 1;

-------------------------------------------------------------------------------
-- Query 5:
-- Deleteing a customer from database, choosing a specific row
-- Step 1: Modify the foreign key constraint to enable cascading delete
ALTER TABLE CustomerMovie
DROP CONSTRAINT CUSTOMERIDCM_FK;
-- Step 2: Run this statement below
ALTER TABLE CustomerMovie
ADD CONSTRAINT CUSTOMERIDCM_FK
FOREIGN KEY (CustomerID)
REFERENCES Customer(CustomerID)
ON DELETE CASCADE;
-- Step 3: Now delete the customer
DELETE FROM Customer
WHERE CustomerID = 1;

-- To undo the update
ROLLBACK;

-------------------------------------------------------------------------------
-- NOTE:  DROP COMMANDS ARE IN "Lee_PROJ3_Part_D_Drop.sql"
-------------------------------------------------------------------------------



