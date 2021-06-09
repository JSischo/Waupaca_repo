# Waupaca County Humane Society Grant Data Research

## Rationale for Project Selection
To help control the pet homelessness crisis and to prevent unnecessary euthanasia of healthy animals, locally in Waupaca County, using historical data analysis to assist in obtaining grant funding to cover some costs for spay and neuter procedures of low income family pets and free roaming cats.

### Humane Society of Waupaca County
The Humane Society of Waupaca County is located in the city of Waupaca in Waupaca County, Wisconsin.

*
*
*

As is typical in most animal adoptions across the nation, HSWC charges an adoption fee that covers the costs associated with animal care such as spaying and neutering.  Animals
must be spayed or neutered either before adoptions or as a condition of adoption in order to reduce homeless pet populations.  However, in some cases, animal owners obtain
their pets through sources other than animal shelters such that the pets have not yet been altered.  The cost of obtaining spay and neutering services through a veterinarian can
be prohibitive for low income families.  To assist with this need, the HSWC offers spay and neuter services to low-income families through their clinic program. (in addition to
vaccinations and microchipping)

### Question to Answer
What is the need for future spay and neuter funding for the Waupaca County Humane Society?
The answer to this question will be used by the Waupaca County Humane Society to request grant funding for future spay and neuter surgical procedures.

### Outline of the Project
> **Data and Database**
* See Data Section of this document for more details on data preparation and how this data is used 
* See resource folder to view data

> **Technologies**

> **Machine Learning Model**
  * Chosen machine learning model is the ARIMA (AutoRegressive Integrated Moving Average) Model 
  * Analyzes and forecasts time series data
  * Data was originally cleaned in Excel to create row data
  * Data further cleaned with Python to get down to one dimensional data source (requirement of ARIMA model)
  * Data checked for stationary status with AdFuller and Rolling Mean visualization graph
  * Data split into 75% Train and 25% Test samples before fitting to the ARIMA model
  * Model tested with RMSE analysis
  * Seasonal decomposition used to seperate time series data into core components to check for any potential trends, seasonality effect, and random residuals
  * Prediction was run within the ARIMA model for a 3 year projection
  * Visualizations of the process can be viewed in the Resources folder

> **Connections**
* postgres://postgres:{db_password}@waupacahumane.cjxaaswzhpwh.us-east-2.rds.amazonaws.com
/Waupaca_Humane

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

* The Medical Table is not related to the other tables in this database and it incldues the following features: 
   * animal_type
   * record_no
   * status
   * date
   * record_type
   * record_sub_type

### Background Information
Some conclusions can be made from looking at an analysis of intake data.  The following numbers can be retrieved from our dashboard, which covers data from 2018-2020.

#### TOTAL INTAKE	
While the total number of dogs and cats is close to being equal at intake, with dogs being about 7% higher, the type of intake varies between dogs and cats greatly.

 * Dogs approx 53%
 * Cats approx 45.8%
 * Other 1.2%
 
#### OWNER SURRENDER
For dogs, Owner Surrender is by far the largest percentage of type of Intake.  For cats, Owner Surrender is close to the same percentage as are brought in as Strays.  

 * Dogs 73%
 * Cats 38.8% 

#### STRAYS
Over three times as many strays taken in at HSWC are cats compared to dogs. (Stray reclaims have been eliminated from the calculation.)

 * Dogs 9.7%
 * Cats 36.3%

#### ACO/POLICE AND PUBLIC DROP OFF OF STRAYS
As a percentage of all strays brought in by the public or by an Animal Control Officer/Police, cats make up nearly three quarters of the total number of strays.  (1.5%
of cats and dogs combined represent animals that were abandoned at the facility.)

 * Dogs 22.9%
 * Cats 71.1% (with an additional 4% born in care)

#### CONCLUSIONS FROM INTAKE DATA 
These statistics bear out the need to focus some funding on Free Roaming Cats (FRC) for funding spay/neuter programs.

#### Spay and Neuter Analysis
Percent of Total Surgical Procedures Done for Clinic Customers(low income)



Percent of Spay/Neuter of total cats surgeries 

 * Cat 35% Spay
 * Cat 37% Neuter
 
Percent of Spay/Neuter of total  dogs surgeries 
 * dog 17% Spay
 * dog 12% Neuter

Average number of surgery by months over the course of three years
 
 * Jan 8.3%
 * Feb 6%
 * Mar 10%
 * Apr 5.0%
 * May 8%
 * Jun 8.3%
 * Jul 10%
 * Aug 9.1%
 * Sept 8.2%
 * Oct 9.0%
 * Nov 10.6%
 * Dec 7.7%

#### MACHINE LEARNING MODEL FOR FORECASTING NEED FOR SPAY AND NEUTER PROCEDURES AT HSWC
> ARIMA model predicted a continued need for spay and neuter services at the current 3 year historical rate with a potential slight increase over the next 3 years.

### Google Slides Presentation

Final Presentation Slide deck: 
https://docs.google.com/presentation/d/190bVfUhZyXly3JJzEVZvdOMScOxi0F_Oy7oLk574IXA/edit?usp=sharing

### Project Dashboard

Dashboard in Tableau Public:
https://public.tableau.com/app/profile/carolyn.shaffer/viz/HSWC-final-presentation-dashboard/LandingPage

### Recommendations
<b>For funders:</b> Waupaca County Humane Society is clearly very effective, hard working and a champion of animal welfare in central WI.  They consistently have a high rate of
live release and successfully place hundreds of surrendered and stray animals in adoptive homes every year.  To futher their effective operations, funding for spay and neuter 
surgeries for low-income family pets and free-roaming cats would provide additional benefit.

For the HSWC: Although our experience studying animal shelter data is limited, we can see that your operations are truly beneficial to everyone, pets and people, in central
Wisconsin.  HSWC stands as an example of excellence in animal welfare services.  

We also realize the limitations of data collection and recording of data in animal shelters across the country.  With further study, it may be possible to determine other
factors that affect additional positive outcomes such as retaining records of spay/neuter dates, examination of seasonal influences on provision of clinic spay/neuter surgeries
and possible promotion of spay/neuter services in low-income areas.

On behalf of our Bootcamp group, we want to thank you for the opportunity to review your operations and hopefully have added convincing testimony to this and future grant
opporunities.


