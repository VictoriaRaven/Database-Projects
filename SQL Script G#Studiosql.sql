-- SQL Script of G#Studio (Guitar Studio)
------------------------------------------

-- Customers
CREATE TABLE Customers (
    CustomerUserID NUMBER PRIMARY KEY,
    FirstName VARCHAR2(50) NOT NULL,
    LastName VARCHAR2(50) NOT NULL,
    Dob VARCHAR2(10) NOT NULL,
    Email VARCHAR2(50) UNIQUE,
    Phone VARCHAR2(20) NOT NULL,
    Address VARCHAR2(100) NOT NULL,
    MemberType VARCHAR2(15) NOT NULL
);

-- Populate Customers Table
INSERT INTO Customers (CustomerUserID, FirstName, LastName, Dob, Email, Phone, Address, MemberType) VALUES
(1, 'Katarina', 'Alves', '01/01/1997', 'katarinaalves@email.com', '123-456-7890', '1234 Spring Street, Hills, CA 12345', 'PremiumMember');
INSERT INTO Customers (CustomerUserID, FirstName, LastName, Dob, Email, Phone, Address, MemberType) VALUES
(2, 'Linda', 'Sobieska', '02/02/1995', 'lindasobieska@email.com', '234-567-8900', '2345 Summer Street, Palms, CA 23456', 'StandardMember');
INSERT INTO Customers (CustomerUserID, FirstName, LastName, Dob, Email, Phone, Address, MemberType) VALUES
(3, 'Negan', 'Smith', '03/03/1980', 'negansmith@email.com', '345-678-9011', '3456 Fall Street, Pines, CA 34567', 'PremiumMember');
INSERT INTO Customers (CustomerUserID, FirstName, LastName, Dob, Email, Phone, Address, MemberType) VALUES
(4, 'Nina', 'Williams' , '04/04/1994', 'ninawilliams@email.com', '456-789-0122', '4567 Winter Street, Woods, CA 45678', 'StandardMember');

-- Staffs
CREATE TABLE  Staffs (
    StaffUserID NUMBER PRIMARY KEY,
    StaffName VARCHAR2(100) NOT NULL,
    StaffType VARCHAR2(50),
    StaffExperience NUMBER,
    StaffRating NUMBER,
    StaffAvalibility VARCHAR2(25)
);

-- Populate Staffs Table
INSERT INTO Staffs (StaffUserID, StaffName, StaffType, StaffExperience, StaffRating, StaffAvalibility) VALUES
(1, 'Emillie de Rochefort', 'COO', 5, 9, 'M, W');
INSERT INTO Staffs (StaffUserID, StaffName, StaffType, StaffExperience, StaffRating, StaffAvalibility) VALUES
(2, 'Julia Chang', 'CTO', 7, 8, 'W, F');
INSERT INTO Staffs (StaffUserID, StaffName, StaffType, StaffExperience, StaffRating, StaffAvalibility) VALUES
(3, 'Sergei Dragunov', 'CFO', 3, 8, 'T, F');
INSERT INTO Staffs (StaffUserID, StaffName, StaffType, StaffExperience, StaffRating, StaffAvalibility) VALUES
(4, 'Robert Richards', 'Instructor', 7, 9, 'M, TH, F');
INSERT INTO Staffs (StaffUserID, StaffName, StaffType, StaffExperience, StaffRating, StaffAvalibility) VALUES
(5, 'Alisa Bosconovitch', 'Financial Manager', 7, 8, 'W, THR, F');
INSERT INTO Staffs (StaffUserID, StaffName, StaffType, StaffExperience, StaffRating, StaffAvalibility) VALUES
(6, 'Marshall Law', 'Product/Sales Manager', 7, 7, 'W, THR, F');
INSERT INTO Staffs (StaffUserID, StaffName, StaffType, StaffExperience, StaffRating, StaffAvalibility) VALUES
(7, 'Leroy Smith', 'Instructor', 3, 9, 'T, W, F');
INSERT INTO Staffs (StaffUserID, StaffName, StaffType, StaffExperience, StaffRating, StaffAvalibility) VALUES
(8, 'Eliza', 'Instructor', 3, 7, 'T, TH');

-- Premium Services
CREATE TABLE PremiumServices (
    AppointmentNumber NUMBER PRIMARY KEY,
    ServiceType VARCHAR2(255),
    CustomerUserID NUMBER,
    StaffUserID NUMBER,
    AppointmentInfo VARCHAR2(255)
);

-- LocalProducts
CREATE TABLE LocalProducts (
    BrandProducts VARCHAR2(255),
    GuitarType VARCHAR2(255),
    AccessoryType VARCHAR2(255),
    PricingType VARCHAR2(255),
    QuantityAmountL NUMBER,
    LocalProductID NUMBER PRIMARY KEY
);

-- CustomProducts
CREATE TABLE CustomProducts (
    PrcingTypeCustom VARCHAR2(255),
    GuitarShapeType VARCHAR2(255),
    ModifiersAdded VARCHAR2(255),
    ColorType VARCHAR2(255),
    BassGuitars VARCHAR2(255),
    ElectricGuitars VARCHAR2(255),
    AcousticGuitars VARCHAR2(255),
    QuantityAmountC NUMBER,
    CustomProductID NUMBER PRIMARY KEY
);

-- WebsiteProducts
CREATE TABLE WebsiteProducts (
    RatingProducts VARCHAR2(255),
    PricingProducts VARCHAR2(255),
    AccessoryType VARCHAR2(255),
    GuitarProducts VARCHAR2(255),
    AccessoryProducts VARCHAR2(255),
    ProductSubLabels VARCHAR2(255),
    GuitarTypes VARCHAR2(255),
    QuantityAmountW NUMBER,
    WebsiteProductID  NUMBER PRIMARY KEY
);