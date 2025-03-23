-------------------------------------------------------------------------------
-- Lee, Victoria | CMSC320 | 7/23/2024 | Project 3: Physical Database Design
-------------------------------------------------------------------------------
-- SQL Script of Project 2 Model (ALL POPULATES) (PART B)
-------------------------------------------------------------------------------
-- Populating Bottom to Top to prevent Errors
-- This is the correct order to Populate All Tables
-------------------------------------------------------------------------------
-- *** YOU MAY AUTO RUN SCRIPT FILE ***
-- *** BOTH AUTO RUN SCRIPT FILE AND RUN STATEMENTS WORK ***
-------------------------------------------------------------------------------

-- Populate Customer Table
INSERT INTO Customer (CustomerID, FirstName, LastName, Address, Phone, Email) VALUES
(1, 'John', 'Doe', '123 Birch St, Falls, MD 45678', '123-891-7832', 'john.doe@example.com');
INSERT INTO Customer (CustomerID, FirstName, LastName, Address, Phone, Email) VALUES
(2, 'Jane', 'Smith', '456 Oak St, Springs, MD 34567', '234-345-5192', 'jane.smith@example.com');
INSERT INTO Customer (CustomerID, FirstName, LastName, Address, Phone, Email) VALUES
(3, 'Negan', 'Smith', '789 Woods St, Pines, CA 12345', '345-678-9011', 'negan.smith@email.com');
INSERT INTO Customer (CustomerID, FirstName, LastName, Address, Phone, Email) VALUES 
(4, 'Nina', 'Williams', '912 Main St, Shield, CA 23456', '456-789-0122', 'nina.williams@email.com');
INSERT INTO Customer (CustomerID, FirstName, LastName, Address, Phone, Email) VALUES 
(5, 'Charlie', 'Davis', '823 Chesnut St, Base, NY 56789', '567-828-8921', 'charlie.davis@example.com');
INSERT INTO Customer (CustomerID, FirstName, LastName, Address, Phone, Email) VALUES 
(6, 'Diana', 'Evans', '734 Cedar St, Falls, NY 67890', '890-524-2345', 'diana.evans@example.com');
INSERT INTO Customer (CustomerID, FirstName, LastName, Address, Phone, Email) VALUES 
(7, 'Eve', 'Foster', '404 Walnut St, Stone, CA 82837', '200-665-8889', 'eve.foster@example.com');

-- Populate Media Table
INSERT INTO Media (MediaID, FormatType) VALUES
(1, 'DVD');
INSERT INTO Media (MediaID, FormatType) VALUES
(2, 'DVD');
INSERT INTO Media (MediaID, FormatType) VALUES
(3, 'DVD');
INSERT INTO Media (MediaID, FormatType) VALUES
(4, 'DVD');
INSERT INTO Media (MediaID, FormatType) VALUES
(5, 'VHS');
INSERT INTO Media (MediaID, FormatType) VALUES
(6, 'VHS');
INSERT INTO Media (MediaID, FormatType) VALUES
(7, 'VHS');

-- Populate DVD_Type Table
INSERT INTO DVD_Type (MediaID, RentalPrice, Quantity, DVD, Blue_Ray, FourK_UHD) VALUES
(1, 3.99, 10, 1, 0, 0);
INSERT INTO DVD_Type (MediaID, RentalPrice, Quantity, DVD, Blue_Ray, FourK_UHD) VALUES
(2, 4.99, 5, 0, 1, 0);
INSERT INTO DVD_Type (MediaID, RentalPrice, Quantity, DVD, Blue_Ray, FourK_UHD) VALUES
(3, 3.99, 10, 1, 0, 0);
INSERT INTO DVD_Type (MediaID, RentalPrice, Quantity, DVD, Blue_Ray, FourK_UHD) VALUES
(4, 4.99, 5, 0, 1, 0);
INSERT INTO DVD_Type (MediaID, RentalPrice, Quantity, DVD, Blue_Ray, FourK_UHD) VALUES
(5, 5.99, 3, 0, 0, 1);
INSERT INTO DVD_Type (MediaID, RentalPrice, Quantity, DVD, Blue_Ray, FourK_UHD) VALUES
(6, 3.99, 8, 1, 0, 0);
INSERT INTO DVD_Type (MediaID, RentalPrice, Quantity, DVD, Blue_Ray, FourK_UHD) VALUES
(7, 4.99, 6, 0, 1, 0);

-- Populate VCR_Table
INSERT INTO VCR_Type (MediaID, RentalPrice, Quantity, VHS_S, VHS_C, S_VHS, S_VHS_C) VALUES
(1, 2.99, 3, 1, 0, 0, 0);
INSERT INTO VCR_Type (MediaID, RentalPrice, Quantity, VHS_S, VHS_C, S_VHS, S_VHS_C) VALUES
(2, 2.99, 2, 0, 1, 0, 0);
INSERT INTO VCR_Type (MediaID, RentalPrice, Quantity, VHS_S, VHS_C, S_VHS, S_VHS_C) VALUES
(3, 2.99, 3, 1, 0, 0, 0);
INSERT INTO VCR_Type (MediaID, RentalPrice, Quantity, VHS_S, VHS_C, S_VHS, S_VHS_C) VALUES
(4, 2.99, 2, 0, 1, 0, 0);
INSERT INTO VCR_Type (MediaID, RentalPrice, Quantity, VHS_S, VHS_C, S_VHS, S_VHS_C) VALUES
(5, 2.99, 4, 1, 0, 0, 0);
INSERT INTO VCR_Type (MediaID, RentalPrice, Quantity, VHS_S, VHS_C, S_VHS, S_VHS_C) VALUES
(6, 2.99, 5, 0, 1, 0, 0);
INSERT INTO VCR_Type (MediaID, RentalPrice, Quantity, VHS_S, VHS_C, S_VHS, S_VHS_C) VALUES
(7, 2.99, 6, 1, 0, 0, 0);

-- Populate DistributorProducer
INSERT INTO DistributorProducer (DistributorProducerID, DistributorID, ProducerID, DistributorName, ProducerName, CompanyName, Country, CountryRegionLocks) VALUES
(1, 1, 1, 'Warner Bros', 'Emma Thomas', 'Syncopy', 'USA', 'None');
INSERT INTO DistributorProducer (DistributorProducerID, DistributorID, ProducerID, DistributorName, ProducerName, CompanyName, Country, CountryRegionLocks) VALUES
(2, 2, 2, 'Warner Bros', 'Joel Silver', 'Silver Pictures', 'USA', 'None');
INSERT INTO DistributorProducer (DistributorProducerID, DistributorID, ProducerID, DistributorName, ProducerName, CompanyName, Country, CountryRegionLocks) VALUES
(3, 3, 3, 'Warner Bros', 'Charles Roven', 'Syncopy', 'USA', 'None');
INSERT INTO DistributorProducer (DistributorProducerID, DistributorID, ProducerID, DistributorName, ProducerName, CompanyName, Country, CountryRegionLocks) VALUES
(4, 4, 4, 'Paramount Pictures', 'Emma Thomas', 'Syncopy', 'USA', 'None');
INSERT INTO DistributorProducer (DistributorProducerID, DistributorID, ProducerID, DistributorName, ProducerName, CompanyName, Country, CountryRegionLocks) VALUES
(5, 5, 5, 'Paramount Pictures', 'Albert S. Ruddy', 'Paramount', 'USA', 'None');
INSERT INTO DistributorProducer (DistributorProducerID, DistributorID, ProducerID, DistributorName, ProducerName, CompanyName, Country, CountryRegionLocks) VALUES
(6, 6, 6, 'Miramax', 'Lawrence Bender', 'A Band Apart', 'USA', 'None');
INSERT INTO DistributorProducer (DistributorProducerID, DistributorID, ProducerID, DistributorName, ProducerName, CompanyName, Country, CountryRegionLocks) VALUES
(7, 7, 7, '20th Century Fox', 'Art Linson', 'Regency Enterprises', 'USA', 'None');


-- Populate Actors
INSERT INTO Actors (ActorsID, ActorName) VALUES
(1, 'Leonardo DiCaprio');
INSERT INTO Actors (ActorsID, ActorName) VALUES
(2, 'Keanu Reeves');
INSERT INTO Actors (ActorsID, ActorName) VALUES
(3, 'Christian Bale');
INSERT INTO Actors (ActorsID, ActorName) VALUES
(4, 'Matthew McConaughey');
INSERT INTO Actors (ActorsID, ActorName) VALUES
(5, 'Marlon Brando');
INSERT INTO Actors (ActorsID, ActorName) VALUES
(6, 'John Travolta');
INSERT INTO Actors (ActorsID, ActorName) VALUES
(7, 'Brad Pitt');

-- Populate Actresses
INSERT INTO Actresses (ActressesID, ActressName) VALUES
(1, 'Ellen Page');
INSERT INTO Actresses (ActressesID, ActressName) VALUES
(2, 'Carrie-Anne Moss');
INSERT INTO Actresses (ActressesID, ActressName) VALUES
(3, 'Maggie Gyllenhaal');
INSERT INTO Actresses (ActressesID, ActressName) VALUES
(4, 'Anne Hathaway');
INSERT INTO Actresses (ActressesID, ActressName) VALUES
(5, 'Diane Keaton');
INSERT INTO Actresses (ActressesID, ActressName) VALUES
(6, 'Uma Thurman');
INSERT INTO Actresses (ActressesID, ActressName) VALUES
(7, 'Helena Bonham Carter');

-- Populate Directors
INSERT INTO Directors (DirectorID, DirectorName) VALUES
(1, 'Christopher Nolan');
INSERT INTO Directors (DirectorID, DirectorName) VALUES
(2, 'Lana Wachowski');
INSERT INTO Directors (DirectorID, DirectorName) VALUES
(3, 'Christopher Nolan');
INSERT INTO Directors (DirectorID, DirectorName) VALUES
(4, 'Christopher Nolan');
INSERT INTO Directors (DirectorID, DirectorName) VALUES
(5, 'Francis Ford Coppola');
INSERT INTO Directors (DirectorID, DirectorName) VALUES
(6, 'Quentin Tarantino');
INSERT INTO Directors (DirectorID, DirectorName) VALUES
(7, 'David Fincher');

-- Populate Awards
INSERT INTO Awards (AwardsID, ActorsID, ActressesID, DirectorID, AwardName, AwardYear, AwardQuantity) VALUES
(1, 1, 1, 1, 'Best Picture', TO_DATE('2010-03-07', 'YYYY-MM-DD'), 1);
INSERT INTO Awards (AwardsID, ActorsID, ActressesID, DirectorID, AwardName, AwardYear, AwardQuantity) VALUES
(2, 2, 2, 2, 'Best Director', TO_DATE('1999-03-21', 'YYYY-MM-DD'), 1);
INSERT INTO Awards (AwardsID, ActorsID, ActressesID, DirectorID, AwardName, AwardYear, AwardQuantity) VALUES
(3, 3, 3, 3, 'Best Supporting Actor', TO_DATE('2008-02-24', 'YYYY-MM-DD'), 1);
INSERT INTO Awards (AwardsID, ActorsID, ActressesID, DirectorID, AwardName, AwardYear, AwardQuantity) VALUES
(4, 4, 4, 4, 'Best Visual Effects', TO_DATE('2014-02-22', 'YYYY-MM-DD'), 1);
INSERT INTO Awards (AwardsID, ActorsID, ActressesID, DirectorID, AwardName, AwardYear, AwardQuantity) VALUES
(5, 5, 5, 5, 'Best Picture', TO_DATE('1972-03-27', 'YYYY-MM-DD'), 1);
INSERT INTO Awards (AwardsID, ActorsID, ActressesID, DirectorID, AwardName, AwardYear, AwardQuantity) VALUES
(6, 6, 6, 6, 'Best Original Screenplay', TO_DATE('1994-03-27', 'YYYY-MM-DD'), 1);
INSERT INTO Awards (AwardsID, ActorsID, ActressesID, DirectorID, AwardName, AwardYear, AwardQuantity) VALUES
(7, 7, 7, 7, 'Best Sound Editing', TO_DATE('1999-03-21', 'YYYY-MM-DD'), 1);

-- Populate Movies Table
INSERT INTO Movies (MovieID, Title, Genre, DurationTime, Rating, Year_n, MediaID, DistributorProducerID, ActorsID, ActressesID, AwardsID, DirectorID) VALUES
(1, 'Inception', 'Sci-Fi', 148, 8.8, 2010, 1, 1, 1, 1, 1, 1);
INSERT INTO Movies (MovieID, Title, Genre, DurationTime, Rating, Year_n, MediaID, DistributorProducerID, ActorsID, ActressesID, AwardsID, DirectorID) VALUES
(2, 'The Matrix', 'Action', 136, 8.7, 1999, 2, 2, 2, 2, 2, 2);
INSERT INTO Movies (MovieID, Title, Genre, DurationTime, Rating, Year_n, MediaID, DistributorProducerID, ActorsID, ActressesID, AwardsID, DirectorID) VALUES
(3, 'The Dark Knight', 'Action', 152, 9.0, 2008, 3, 3, 3, 3, 3, 3);
INSERT INTO Movies (MovieID, Title, Genre, DurationTime, Rating, Year_n, MediaID, DistributorProducerID, ActorsID, ActressesID, AwardsID, DirectorID) VALUES
(4, 'Interstellar', 'Sci-Fi', 169, 8.6, 2014, 4, 4, 4, 4, 4, 4);
INSERT INTO Movies (MovieID, Title, Genre, DurationTime, Rating, Year_n, MediaID, DistributorProducerID, ActorsID, ActressesID, AwardsID, DirectorID) VALUES
(5, 'The Godfather', 'Crime', 175, 9.2, 1972, 5, 5, 5, 5, 5, 5);
INSERT INTO Movies (MovieID, Title, Genre, DurationTime, Rating, Year_n, MediaID, DistributorProducerID, ActorsID, ActressesID, AwardsID, DirectorID) VALUES
(6, 'Pulp Fiction', 'Crime', 154, 8.9, 1994, 6, 6, 6, 6, 6, 6);
INSERT INTO Movies (MovieID, Title, Genre, DurationTime, Rating, Year_n, MediaID, DistributorProducerID, ActorsID, ActressesID, AwardsID, DirectorID) VALUES
(7, 'Fight Club', 'Drama', 139, 8.8, 1999, 7, 7, 7, 7, 7, 7);

-- Populate CustomerMovie
INSERT INTO CustomerMovie (CustomerID, MovieID, DateRentalDue, DateOfRental, FeesLate, FeesReserve, FeesUnplayableRentals, FeesDamages, FeesRewind, Tax, Rating) VALUES
(1, 1, TO_DATE('2024-07-29', 'YYYY-MM-DD'), TO_DATE('2024-07-22', 'YYYY-MM-DD'), 0.5, 0, 0, 0, 0, 1.5, 5);
INSERT INTO CustomerMovie (CustomerID, MovieID, DateRentalDue, DateOfRental, FeesLate, FeesReserve, FeesUnplayableRentals, FeesDamages, FeesRewind, Tax, Rating) VALUES
(2, 2, TO_DATE('2024-07-30', 'YYYY-MM-DD'), TO_DATE('2024-07-23', 'YYYY-MM-DD'), 0, 4.99, 0, 0, 0, 1.5, 4);
INSERT INTO CustomerMovie (CustomerID, MovieID, DateRentalDue, DateOfRental, FeesLate, FeesReserve, FeesUnplayableRentals, FeesDamages, FeesRewind, Tax, Rating) VALUES
(3, 3, TO_DATE('2024-08-01', 'YYYY-MM-DD'), TO_DATE('2024-07-25', 'YYYY-MM-DD'), 0.5, 0, 0, 0, 0, 1.5, 5);
INSERT INTO CustomerMovie (CustomerID, MovieID, DateRentalDue, DateOfRental, FeesLate, FeesReserve, FeesUnplayableRentals, FeesDamages, FeesRewind, Tax, Rating) VALUES
(4, 4, TO_DATE('2024-03-26', 'YYYY-MM-DD'), TO_DATE('2024-03-02', 'YYYY-MM-DD'), 0, 0, 0, 4.99, 0, 1.5, 4);
INSERT INTO CustomerMovie (CustomerID, MovieID, DateRentalDue, DateOfRental, FeesLate, FeesReserve, FeesUnplayableRentals, FeesDamages, FeesRewind, Tax, Rating) VALUES
(5, 5, TO_DATE('2024-06-27', 'YYYY-MM-DD'), TO_DATE('2024-06-03', 'YYYY-MM-DD'), 0.5, 0, 0, 0, 2.50, 1.5, 5);
INSERT INTO CustomerMovie (CustomerID, MovieID, DateRentalDue, DateOfRental, FeesLate, FeesReserve, FeesUnplayableRentals, FeesDamages, FeesRewind, Tax, Rating) VALUES
(6, 6, TO_DATE('2024-05-28', 'YYYY-MM-DD'), TO_DATE('2024-05-04', 'YYYY-MM-DD'), 0, 0, 2.99, 0, 0, 1.5, 4);
INSERT INTO CustomerMovie (CustomerID, MovieID, DateRentalDue, DateOfRental, FeesLate, FeesReserve, FeesUnplayableRentals, FeesDamages, FeesRewind, Tax, Rating) VALUES
(7, 7, TO_DATE('2024-04-29', 'YYYY-MM-DD'), TO_DATE('2024-04-05', 'YYYY-MM-DD'), 0, 0, 0, 0, 0, 1.5, 5);


