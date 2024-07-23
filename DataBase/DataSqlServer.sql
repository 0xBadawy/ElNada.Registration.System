CREATE TABLE TB_Customer_Persons (
    Person_ID INT IDENTITY(1,1) NOT NULL,
    Name VARCHAR(50) NULL,
    SSN VARCHAR(14) NULL,
    Social_Status INT NULL,
    Gender VARCHAR(5) NULL,
    Education_Level INT NULL,
    Date_of_Birth DATE NULL,
    Age INT NULL,
    Health_Status INT NULL,
    Health_Details VARCHAR(50) NULL,
    Phone_Number_1 VARCHAR(12) NULL,
    Phone_Number_2 VARCHAR(12) NULL,
    more_info VARCHAR(50) NULL,
    Front_Image VARBINARY(MAX) NULL,
    Back_Image VARBINARY(MAX) NULL,
    PRIMARY KEY (Person_ID)
);

CREATE TABLE TB_Customer_Husband (
    Husband_ID INT IDENTITY(1,1) NOT NULL,
    Name VARCHAR(50) NULL,
    SSN VARCHAR(50) NULL,
    Education_Level INT NULL,
    Date_of_Birth DATE NULL,
    Age INT NULL,
    Health_Status INT NULL,
    Health_Details VARCHAR(50) NULL,
    Phone_Number VARCHAR(12) NULL,
    Person_ID INT NULL,
    more_info VARCHAR(50) NULL,
    PRIMARY KEY (Husband_ID)
);

CREATE TABLE TB_Customer_Family_Members (
    Family_ID INT IDENTITY(1,1) NOT NULL,
    Member_Name VARCHAR(50) NULL,
    Relation VARCHAR(8) NULL,
    SSN VARCHAR(14) NULL,
    Age INT NULL,
    Date_of_Birth DATE NULL,
    Social_Status INT NULL,
    Education_Level INT NULL,
    Health_Status INT NULL,
    Health_Details VARCHAR(50) NULL,
    Person_ID INT NULL,
    PRIMARY KEY (Family_ID)
);

CREATE TABLE TB_Customer_Files (
    File_ID INT IDENTITY(1,1) NOT NULL,
    Front_Image VARBINARY(MAX) NULL,
    Back_Image VARBINARY(MAX) NULL,
    Location VARBINARY(MAX) NULL,
    File_Type VARCHAR(10) NULL,
    File_Name NVARCHAR(100) NULL,
    Person_ID INT NULL,
    PRIMARY KEY (File_ID)
);

CREATE TABLE TB_Customer_Homes (
    Home_ID INT IDENTITY(1,1) NOT NULL,
    Ownership NVARCHAR(6) NULL,
    Room_Number INT NULL,
    Floor_Number INT NULL,
    Structure_Type NVARCHAR(15) NULL,
    Floor_Type NVARCHAR(15) NULL,
    Ceiling_Type NVARCHAR(15) NULL,
    Electricity BIT NULL,
    Water BIT NULL,
    WC BIT NULL,
    Gas BIT NULL,
    Fridge BIT NULL,
    Cooler BIT NULL,
    Washing_Machine BIT NULL,
    Stove BIT NULL,
    AC BIT NULL,
    TV BIT NULL,
    Cooker BIT NULL,
    More_Info NVARCHAR(50) NULL,
    Person_ID INT NULL,
    Location_ID INT NULL,
    Location_Details NVARCHAR(60) NULL,
    PRIMARY KEY (Home_ID)
);

CREATE TABLE TB_Customer_Incomes (
    Income_ID INT IDENTITY(1,1) NOT NULL,
    Owner NVARCHAR(50) NULL,
    State NVARCHAR(20) NULL,
    Type NVARCHAR(50) NULL,
    Name NVARCHAR(150) NULL,
    Value FLOAT NULL,
    Person_ID INT NULL,
    PRIMARY KEY (Income_ID)
);

CREATE TABLE TB_Customer_Needs (
    Need_ID INT IDENTITY(1,1) NOT NULL,
    Type INT NULL,
    Type_Details NVARCHAR(150) NULL,
    Person_ID INT NULL,
    PRIMARY KEY (Need_ID)
);

CREATE TABLE TB_Customer_Properties (
    Property_ID INT IDENTITY(1,1) NOT NULL,
    Name NVARCHAR(50) NULL,
    Value FLOAT NULL,
    Details NVARCHAR(50) NULL,
    Person_ID INT NULL,
    PRIMARY KEY (Property_ID)
);

CREATE TABLE TB_Customer_Researchers (
    Researcher_ID INT IDENTITY(1,1) NOT NULL,
    Name NVARCHAR(50) NULL,
    Date DATE NULL,
    Support INT NULL,
    Direction NVARCHAR(50) NULL,
    Degree INT NULL,
    State INT NULL,
    Opinion NVARCHAR(150) NULL,
    Person_ID INT NULL,
    PRIMARY KEY (Researcher_ID)
);
