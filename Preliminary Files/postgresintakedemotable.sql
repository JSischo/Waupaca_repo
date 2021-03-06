--Create demo table for HSWC-database

CREATE TABLE Intake_Demo_Table (
	Animal_Type VARCHAR(40),
 	Species INT,
 	Primary_Breed VARCHAR(40),
 	Secondary_Breed VARCHAR(40),
 	Gender INT,
 	Altered INT,
 	Age_in_Months_Intake INT,
 	Age_Group VARCHAR(40),
 	Intake_Condition VARCHAR(40),
 	Intake_Date DATE,
 	Intake_Type VARCHAR(40),
 	Intake_Subtype VARCHAR(40),
 	Found_Address VARCHAR(40),
 	Found_Zip_Code VARCHAR(10),
 	Reason VARCHAR(40),
 	Agency_Name VARCHAR(40),
 	Age_in_Months_Current INT,
 	Outcome_Date DATE,
 	Release_Date DATE,
 	Outcome_Type VARCHAR(40),
 	Outcome_Subtype VARCHAR(40),
 	Outcome_Reason VARCHAR(40),
 	Out_Street_Address VARCHAR(40),
 	Out_City VARCHAR(40),
 	Out_Province VARCHAR(40),
 	Out_Postal_Code VARCHAR(10),
 	Outcome_Agency_Name VARCHAR(40)
);