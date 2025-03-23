-------------------------------------------------------------------------------
-- Lee, Victoria | CMSC320 | 7/23/2024 | Project 3: Physical Database Design
-------------------------------------------------------------------------------
-- SQL Script of Project 2 Model (ALL TABLES) (PART A)
-------------------------------------------------------------------------------
-- This is the correct order to Run All Tables
-------------------------------------------------------------------------------
-- *** YOU MAY AUTO RUN SCRIPT FILE ***
-- *** BOTH AUTO RUN SCRIPT FILE AND RUN STATEMENTS WORK ***
-------------------------------------------------------------------------------

-- Customer Table
CREATE TABLE Customer (
    CustomerID NUMBER PRIMARY KEY,
    FirstName VARCHAR2(50) NOT NULL,
    LastName VARCHAR2(50) NOT NULL,
    Address VARCHAR2(100) NOT NULL,
    Phone VARCHAR2(20) NOT NULL,
    Email VARCHAR2(50) UNIQUE NOT NULL
);

-- Media Table
CREATE TABLE Media (
    MediaID NUMBER PRIMARY KEY,
    FormatType VARCHAR2(3) NOT NULL
);

-- DVD_Type Table
CREATE TABLE DVD_Type (
    MediaID NUMBER PRIMARY KEY,
    RentalPrice NUMBER NOT NULL,
    Quantity NUMBER NOT NULL,
    DVD NUMBER(1) NOT NULL,
    Blue_Ray NUMBER(1) NOT NULL,
    FourK_UHD NUMBER(1) NOT NULL,
    CONSTRAINT MediaIDdvd_FK FOREIGN KEY (MediaID) REFERENCES Media(MediaID),
    CONSTRAINT DVD_Check_1_or_0 CHECK (DVD IN (0, 1)),
    CONSTRAINT Blue_Ray_Check_1_or_0 CHECK (Blue_Ray IN (0, 1)),
    CONSTRAINT FourK_UHD_Check_1_or_0 CHECK (FourK_UHD IN (0, 1))
);

-- VCR_Type Table
CREATE TABLE VCR_Type (
    MediaID NUMBER PRIMARY KEY,
    RentalPrice NUMBER NOT NULL,
    Quantity NUMBER NOT NULL,
    VHS_S NUMBER(1) NOT NULL,
    VHS_C NUMBER(1) NOT NULL,
    S_VHS NUMBER(1) NOT NULL,
    S_VHS_C NUMBER(1) NOT NULL,
    CONSTRAINT MediaIDvhs_FK FOREIGN KEY (MediaID) REFERENCES Media(MediaID),
    CONSTRAINT VHS_S_Check_1_or_0 CHECK (VHS_S IN (0, 1)),
    CONSTRAINT VHS_C_Check_1_or_0 CHECK (VHS_C IN (0, 1)),
    CONSTRAINT S_VHS_Check_1_or_0 CHECK (S_VHS IN (0, 1)),
    CONSTRAINT S_VHS_C_Check_1_or_0 CHECK (S_VHS_C IN (0, 1))
);

-- DistributorProducer
CREATE TABLE DistributorProducer (
    DistributorProducerID NUMBER PRIMARY KEY,
    DistributorID NUMBER NOT NULL,
    ProducerID NUMBER NOT NULL,
    DistributorName VARCHAR2(100) NOT NULL,
    ProducerName VARCHAR2(100) NOT NULL,
    CompanyName VARCHAR2(100) NOT NULL,
    Country VARCHAR2(100) NOT NULL,
    CountryRegionLocks VARCHAR2(100) NOT NULL
);

-- Actors Table
CREATE TABLE Actors (
    ActorsID NUMBER PRIMARY KEY,
    ActorName VARCHAR2(100) NOT NULL
);

-- Actresses Table
CREATE TABLE Actresses (
    ActressesID NUMBER PRIMARY KEY,
    ActressName VARCHAR2(100) NOT NULL
);

-- Director Table
CREATE TABLE Directors (
    DirectorID NUMBER PRIMARY KEY,
    DirectorName VARCHAR2(100) NOT NULL
);

-- Awards Table
CREATE TABLE Awards (
    AwardsID NUMBER PRIMARY KEY,
    ActorsID NUMBER NOT NULL,
    ActressesID NUMBER NOT NULL,
    DirectorID NUMBER NOT NULL,
    AwardName VARCHAR2(100) NOT NULL,
    AwardYear DATE NOT NULL,
    AwardQuantity NUMBER NOT NULL,
    CONSTRAINT ActorsIDaw_FK FOREIGN KEY (ActorsID) REFERENCES Actors(ActorsID),
    CONSTRAINT ActressesIDaw_FK FOREIGN KEY (ActressesID) REFERENCES Actresses(ActressesID),
    CONSTRAINT DirectorIDaw_FK FOREIGN KEY (DirectorID) REFERENCES Directors(DirectorID)
);

-- Movies Table
-- Removed Videos Table due to repeating of Movies Table.
-- Videos Table is Movies Table; vice versa
CREATE TABLE Movies (
    MovieID NUMBER PRIMARY KEY,
    Title VARCHAR2(100) NOT NULL,
    Genre VARCHAR2(100) NOT NULL,
    DurationTime NUMBER NOT NULL,
    Rating NUMBER NOT NULL,
    Year_n NUMBER NOT NULL,
    MediaID NUMBER NOT NULL,
    DistributorProducerID NUMBER NOT NULL,
    ActorsID NUMBER NOT NULL,
    ActressesID NUMBER NOT NULL,
    AwardsID NUMBER NOT NULL,
    DirectorID NUMBER NOT NULL,
    CONSTRAINT MediaIDm_FK FOREIGN KEY (MediaID) REFERENCES Media(MediaID),
    CONSTRAINT DistributorProducerID_FK FOREIGN KEY (DistributorProducerID) REFERENCES DistributorProducer(DistributorProducerID),
    CONSTRAINT ActorsIDm_FK FOREIGN KEY (ActorsID) REFERENCES Actors(ActorsID),
    CONSTRAINT ActressesIDm_FK FOREIGN KEY (ActressesID) REFERENCES Actresses(ActressesID),
    CONSTRAINT AwardsIDm_FK FOREIGN KEY (AwardsID) REFERENCES Awards(AwardsID),
    CONSTRAINT DirectorIDm_FK FOREIGN KEY (DirectorID) REFERENCES Directors(DirectorID)
);

-- CustomerMovie Table
CREATE TABLE CustomerMovie (
    CustomerID NUMBER PRIMARY KEY,
    MovieID NUMBER NOT NULL,
    DateRentalDue DATE NOT NULL,
    DateOfRental DATE NOT NULL,
    FeesLate NUMBER NOT NULL,
    FeesReserve NUMBER NOT NULL,
    FeesUnplayableRentals NUMBER NOT NULL,
    FeesDamages NUMBER NOT NULL,
    FeesRewind NUMBER NOT NULL,
    Tax NUMBER NOT NULL,
    Rating NUMBER NOT NULL,
    CONSTRAINT MovieIDcm_FK FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    CONSTRAINT CustomerIDcm_FK FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);


