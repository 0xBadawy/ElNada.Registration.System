
-- Create tables
CREATE TABLE `Degree` (
    `Degree_ID` INT AUTO_INCREMENT NOT NULL,
    `Degree_Name` VARCHAR(20) NULL,
    PRIMARY KEY (`Degree_ID`)
) ENGINE=InnoDB;

CREATE TABLE `Education_Level` (
    `Level_ID` INT AUTO_INCREMENT NOT NULL,
    `Level_Name` VARCHAR(20) NULL,
    PRIMARY KEY (`Level_ID`)
) ENGINE=InnoDB;

CREATE TABLE `Family_Relation` (
    `Relation_ID` INT AUTO_INCREMENT NOT NULL,
    `Relation_Name` VARCHAR(20) NULL,
    PRIMARY KEY (`Relation_ID`)
) ENGINE=InnoDB;

CREATE TABLE `Health_Status` (
    `Health_ID` INT AUTO_INCREMENT NOT NULL,
    `Health_Name` VARCHAR(20) NULL,
    PRIMARY KEY (`Health_ID`)
) ENGINE=InnoDB;

CREATE TABLE `Location` (
    `Location_ID` INT AUTO_INCREMENT NOT NULL,
    `Location_Name` VARCHAR(20) NULL,
    PRIMARY KEY (`Location_ID`)
) ENGINE=InnoDB;

CREATE TABLE `Researcher_Degree` (
    `Degree_ID` INT AUTO_INCREMENT NOT NULL,
    `Degree_Name` VARCHAR(20) NULL,
    PRIMARY KEY (`Degree_ID`)
) ENGINE=InnoDB;

CREATE TABLE `Social_Status` (
    `Status_ID` INT AUTO_INCREMENT NOT NULL,
    `Status_Name` VARCHAR(20) NULL,
    PRIMARY KEY (`Status_ID`)
) ENGINE=InnoDB;

CREATE TABLE `State` (
    `State_ID` INT AUTO_INCREMENT NOT NULL,
    `State_Name` VARCHAR(20) NULL,
    PRIMARY KEY (`State_ID`)
) ENGINE=InnoDB;

CREATE TABLE `SystemUsers` (
    `User_ID` INT AUTO_INCREMENT NOT NULL,
    `User_Name` VARCHAR(50) NULL,
    `User_Password` VARCHAR(50) NULL,
    `User_Type` VARCHAR(20) NULL,
    PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB;

CREATE TABLE `TB_Catageory` (
    `Catageory_ID` INT AUTO_INCREMENT NOT NULL,
    `Catageory_Name` VARCHAR(20) NULL,
    `Catageory_Details` VARCHAR(50) NULL,
    `Catageory_Supplier` VARCHAR(50) NULL,
    `Catageory_Date` DATE NULL,
    PRIMARY KEY (`Catageory_ID`)
) ENGINE=InnoDB;

CREATE TABLE `TB_Customer_Family_Members` (
    `Family_ID` INT AUTO_INCREMENT NOT NULL,
    `Member_Name` VARCHAR(50) NULL,
    `Relation` INT NULL,
    `SSN` VARCHAR(14) NULL,
    `Age` INT NULL,
    `Date_of_Birth` DATE NULL,
    `Social_Status` INT NULL,
    `Education_Level` INT NULL,
    `Health_Status` INT NULL,
    `Health_Details` VARCHAR(50) NULL,
    `Person_ID` INT NULL,
    PRIMARY KEY (`Family_ID`)
) ENGINE=InnoDB;

CREATE TABLE `TB_Customer_Files` (
    `File_ID` INT AUTO_INCREMENT NOT NULL,
    `Front_Image` LONGBLOB NULL,
    `Back_Image` LONGBLOB NULL,
    `Location` LONGBLOB NULL,
    `File_Type` VARCHAR(10) NULL,
    `File_Name` VARCHAR(100) NULL,
    `Person_ID` INT NULL,
    PRIMARY KEY (`File_ID`)
) ENGINE=InnoDB;

CREATE TABLE `TB_Customer_Homes` (
    `Home_ID` INT AUTO_INCREMENT NOT NULL,
    `Ownership` VARCHAR(6) NULL,
    `Room_Number` INT NULL,
    `Floor_Number` INT NULL,
    `Structure_Type` VARCHAR(15) NULL,
    `Floor_Type` VARCHAR(15) NULL,
    `Ceiling_Type` VARCHAR(15) NULL,
    `Electricity` TINYINT(1) NULL,
    `Water` TINYINT(1) NULL,
    `WC` TINYINT(1) NULL,
    `Gas` TINYINT(1) NULL,
    `Fridge` TINYINT(1) NULL,
    `Cooler` TINYINT(1) NULL,
    `Washing_Machine` TINYINT(1) NULL,
    `Stove` TINYINT(1) NULL,
    `AC` TINYINT(1) NULL,
    `TV` TINYINT(1) NULL,
    `Cooker` TINYINT(1) NULL,
    `More_Info` VARCHAR(50) NULL,
    `Person_ID` INT NULL,
    `Location_ID` INT NULL,
    `Location_Details` VARCHAR(60) NULL,
    PRIMARY KEY (`Home_ID`)
) ENGINE=InnoDB;

CREATE TABLE `TB_Customer_Husband` (
    `Husband_ID` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NULL,
    `SSN` VARCHAR(50) NULL,
    `Education_Level` INT NULL,
    `Date_of_Birth` DATE NULL,
    `Age` INT NULL,
    `Health_Status` INT NULL,
    `Health_Details` VARCHAR(50) NULL,
    `Phone_Number` VARCHAR(12) NULL,
    `Person_ID` INT NULL,
    `more_info` VARCHAR(50) NULL,
    PRIMARY KEY (`Husband_ID`)
) ENGINE=InnoDB;

CREATE TABLE `TB_Customer_Incomes` (
    `Income_ID` INT AUTO_INCREMENT NOT NULL,
    `Owner` VARCHAR(50) NULL,
    `State` VARCHAR(20) NULL,
    `Type` VARCHAR(50) NULL,
    `Name` VARCHAR(150) NULL,
    `Value` FLOAT NULL,
    `Person_ID` INT NULL,
    PRIMARY KEY (`Income_ID`)
) ENGINE=InnoDB;

CREATE TABLE `TB_Customer_Needs` (
    `Need_ID` INT AUTO_INCREMENT NOT NULL,
    `Type` INT NULL,
    `Type_Details` VARCHAR(150) NULL,
    `Person_ID` INT NULL,
    PRIMARY KEY (`Need_ID`)
) ENGINE=InnoDB;

CREATE TABLE `TB_Customer_Persons` (
    `Person_ID` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NULL,
    `SSN` VARCHAR(14) NULL,
    `Social_Status` INT NULL,
    `Gender` VARCHAR(5) NULL,
    `Education_Level` INT NULL,
    `Date_of_Birth` DATE NULL,
    `Age` INT NULL,
    `Health_Status` INT NULL,
    `Health_Details` VARCHAR(50) NULL,
    `Phone_Number_1` VARCHAR(12) NULL,
    `Phone_Number_2` VARCHAR(12) NULL,
    `more_info` VARCHAR(50) NULL,
    `Front_Image` LONGBLOB NULL,
    `Back_Image` LONGBLOB NULL,
    PRIMARY KEY (`Person_ID`)
) ENGINE=InnoDB;

CREATE TABLE `TB_Customer_Properties` (
    `Property_ID` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NULL,
    `Value` FLOAT NULL,
    `Details` VARCHAR(50) NULL,
    `Person_ID` INT NULL,
    PRIMARY KEY (`Property_ID`)
) ENGINE=InnoDB;

CREATE TABLE `TB_Customer_Researchers` (
    `Researcher_ID` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NULL,
    `Date` DATE NULL,
    `Support` VARCHAR(50) NULL,
    `Direction` VARCHAR(50) NULL,
    `Degree` INT NULL,
    `State` INT NULL,
    `Opinion` VARCHAR(150) NULL,
    `Person_ID` INT NULL,
    PRIMARY KEY (`Researcher_ID`)
) ENGINE=InnoDB;

CREATE TABLE `TB_Receipts` (
    `Receipt_ID` INT AUTO_INCREMENT NOT NULL,
    `Receipt_Reciver_Name` VARCHAR(50) NULL,
    `Receipt_Reciver_ID` INT NULL,
    `Receipt_Catageory` INT NULL,
    `Receipt_Date` DATE NULL,
    `Receipt_Details` VARCHAR(100) NULL,
    PRIMARY KEY (`Receipt_ID`)
) ENGINE=InnoDB;

-- Foreign Key Constraints
ALTER TABLE `TB_Customer_Family_Members` 
ADD CONSTRAINT `FK_Family_Members_Education_Level` FOREIGN KEY (`Education_Level`) REFERENCES `Education_Level` (`Level_ID`);

ALTER TABLE `TB_Customer_Family_Members` 
ADD CONSTRAINT `FK_Family_Members_Health_Status` FOREIGN KEY (`Health_Status`) REFERENCES `Health_Status` (`Health_ID`);

ALTER TABLE `TB_Customer_Family_Members` 
ADD CONSTRAINT `FK_Family_Members_Social_Status` FOREIGN KEY (`Social_Status`) REFERENCES `Social_Status` (`Status_ID`);

ALTER TABLE `TB_Customer_Family_Members` 
ADD CONSTRAINT `FK_Family_Members_Family_Relation` FOREIGN KEY (`Relation`) REFERENCES `Family_Relation` (`Relation_ID`);

ALTER TABLE `TB_Customer_Homes` 
ADD CONSTRAINT `FK_Customer_Homes_Location` FOREIGN KEY (`Location_ID`) REFERENCES `Location` (`Location_ID`);

ALTER TABLE `TB_Customer_Husband` 
ADD CONSTRAINT `FK_Customer_Husband_Education_Level` FOREIGN KEY (`Education_Level`) REFERENCES `Education_Level` (`Level_ID`);

ALTER TABLE `TB_Customer_Husband` 
ADD CONSTRAINT `FK_Customer_Husband_Health_Status` FOREIGN KEY (`Health_Status`) REFERENCES `Health_Status` (`Health_ID`);

ALTER TABLE `TB_Customer_Incomes` 
ADD CONSTRAINT `FK_Customer_Incomes_State` FOREIGN KEY (`State`) REFERENCES `State` (`State_ID`);

ALTER TABLE `TB_Customer_Needs` 
ADD CONSTRAINT `FK_Customer_Needs_Type` FOREIGN KEY (`Type`) REFERENCES `TB_Catageory` (`Catageory_ID`);

ALTER TABLE `TB_Customer_Persons` 
ADD CONSTRAINT `FK_Customer_Persons_Education_Level` FOREIGN KEY (`Education_Level`) REFERENCES `Education_Level` (`Level_ID`);

ALTER TABLE `TB_Customer_Persons` 
ADD CONSTRAINT `FK_Customer_Persons_Health_Status` FOREIGN KEY (`Health_Status`) REFERENCES `Health_Status` (`Health_ID`);

ALTER TABLE `TB_Customer_Researchers` 
ADD CONSTRAINT `FK_Customer_Researchers_Degree` FOREIGN KEY (`Degree`) REFERENCES `Researcher_Degree` (`Degree_ID`);

ALTER TABLE `TB_Customer_Researchers` 
ADD CONSTRAINT `FK_Customer_Researchers_State` FOREIGN KEY (`State`) REFERENCES `State` (`State_ID`);
