# Waupaca County Humane Society Grant Data Research

## Rationale for Project Selection
To help control the pet homelessness crisis and to prevent unnecessary euthanasia of healthy animals, locally in Waupaca County, using historical data analysis to assist in
obtaining grant funding to cover some costs for spay and neuter procedures of low income family pets and free roaming cats.

### Source Data
* 6 .csv files for 2018, 2019 and 2020 obtained from the Waupaca County Humane Society.
  * 3 files with spay and neuter data for each year
  * 3 files with stray and surrender details for each year

* Data is stored in a AWS RDS database
* Data was cleaned in python dropping sensitive information 
* The Orginal CSVs were stored into two tables 
* Three additional tables were created to store latitudes and longitudes for stray and adopted animals inplace of storing addresses
* The Final tables are Intake, Found_location, Adopted_location, Medical, combined_clinic_addresses_all
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

* The combined Clinic addresses is a subset of Adopted addresses and includes the following features:
 * Animal #
 * Species
 * Intake_Type (equal to Clinic only)
 * Intake_Subtype (equal to spay or neuter)
 * clinic_lat
 * clinic_long

The Medical Table is not related to the other tables in this database and it incldues the following features: 
  * animal_type
  * record_no
  * status
  * date
  * record_type
  * record_sub_type


### Questions to Answer
What is the need for future spay and neuter funding for the Waupaca County Humane Society?
The answer to this question will be used by the Waupaca County Humane Society to request grant funding for future spay and neuter surgical procedures.

### Outline of the Project
> Data and Database

> Technologies

> Machine Learning Model
> The machine learning model that we chose to use is the ARIMA (AutoRegressive Integrated Moving Average) Model. This is a model that analyzes and forecasts time series data

> Tools used in this model are:
   * Seasonal decomposition - we used this in our model to seperate time series data into core component; those include potental trend, seasonality, and the
     remaining random residual.
     
   * ARIMA - we used this model to predict future point in the series and ot also better understand the data.

   * Adfuller - the adfuller test was used to detect whether a time series is stationary or not.

> Connections
 

### Google Slides Presentation
Preliminary Slide Deck: 
https://docs.google.com/presentation/d/1emPdqSAiMH3Ub7QUCO1gWlcjvGJTe60-7JYsucfBBII/edit?usp=sharing
Final Presentation Slide deck: 
https://docs.google.com/presentation/d/190bVfUhZyXly3JJzEVZvdOMScOxi0F_Oy7oLk574IXA/edit?usp=sharing


### Background Information to Help Answer The Question of Need for Spay and Neuter Funding
Some conclusions can be made from looking at an analysis of intake data.  The following numbers can be retrieved from our dashboard, which covers data from 2018-2020.

#### TOTAL INTAKE	
While the total number of dogs and cats is close to being equal at intake, with dogs being about 7% higher, the type of intake varies between dogs and cats greatly.

 * Dogs approx 53%
 * Cats approx 45.8%
 * Other 1.2%
 * 
#### OWNER SURRENDER
For dogs, Owner Surrender is by far the largest percentage of type of Intake.  For cats, Owner Surrender is close to the same percentage as are brought in as Strays.  

 * Dogs 73%
 * Cats 38.8% 

#### STRAYS
Over three times as many strays taken in at HSWC are cats compared to dogs. (Stray reclaims have been eliminated from the calculation.)

 * Dogs 9.7%
 * Cats 36.3%

#### ACO/POLICE AND PUBLIC DROP OFF OF STRAYS
As percenta of all strays brought in by the public or by an Animal Control Officer or Police, cats make up nearly three quarters of the total number of strays.  1.5%
of cats and dogs combined represent animals that were abandoned at the facility.

 * Dogs 22.9%
 * Cats 71.1% (with an additional 4% born in care)

#### CONCLUSION 
These statistics bear out the need to focus on Free Roaming Cats (FRC) for funding spay/neuter programs.

#### SPAY AND NEUTER STATISTICAL ANALYSIS
Percent of Total Surgical Procedures Done for Clinic Customers
Percent of Spay/Neuter by Cat/Dog of Total Surgeries

#### MACHINE LEARNING MODEL FOR FORECASTING NEED FOR SPAY AND NEUTER PROCEDURES AT HSWC


