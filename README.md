# Waupaca County Humane Society Grant Data Research

## Rationale for Project Selection
> To help control the pet homelessness crisis and to prevent unnecessary euthanasia of healthy animals, locally in Waupaca County, by historical data analysis to assist in obtaining grant funding to help cover the cost for spay and neuter procedures of low income family pets and free roaming cats.

### Source Data
* 6 .csv files for 2018, 2019 and 2020 obtained from the Waupaca County Humane Society.
  * 3 files with spay and neuter data for each year
  * 3 files with stray and surrender details for each year

* Data is stored in a AWS RDS database
* Data was cleaned in python dropping sesative information 
* The Orginal CSVs were stored into two tables 
* Two additional tables new table was created to store latitudes and longitueds for stray and adopted animals inplace of storing addresses
* The Final tables are Intake, Found_location, Adopted_location, Medical
* The Intake table includes the following features:  
  * Animal #
  * Species
  * Primary Breed
  * Secondary Breed
  * Gender
  * Altered
  * Age in Months
  * Age Group
  * Intake Condition
  * Intake Date
  * Intake Type
  * Intake Subtype
  * Reason
  * Agency Name
  * Outcome Date
  * Release Date
  * Outcome Type
  * Outcome Subtype
  * Outcome Reson
  * Outcome Agency Name

* The Found location is related to the Intake table on Animal # and includes the following features: 
  * Animal # 
  * Found zip
  * found_lat
  * found_long
  
* The Adopted location is related to the Intake table on Animal # and includes the following features: 
  * Animal # 
  * Out City 
  * Out Postal Code
  * Adopted_lat
  * Adopted_long

The Medical Table is not related to the other tables in this database and it incldues the following features: 
  * animal_type
  * record_no
  * status
  * date
  * record_type
  * record_sub_type

### Questions to Answer
> What is the need for future spay and neuter funding for the Waupaca County Humane Society?

> The answer to this question will be used by the Waupaca County Humane Society to request grant funding for future spay and neuter surgical procedures.

### Outline of the Project
> Data and Database

> Tools and Technologies

> Machine Learning Model

> Connections
 

### Google Slides Presentation
Preliminary Slide Deck: 
https://docs.google.com/presentation/d/1emPdqSAiMH3Ub7QUCO1gWlcjvGJTe60-7JYsucfBBII/edit?usp=sharing
Final Presentation Slide deck: 
https://docs.google.com/presentation/d/190bVfUhZyXly3JJzEVZvdOMScOxi0F_Oy7oLk574IXA/edit?usp=sharing
