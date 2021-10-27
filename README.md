# Group-6-ETL-Project

Project 2: ETL Challenge

This project was completed by Group 6 which consists of Sam, Serena, Vignesh and Nicklas.

The Jupyter notebook will create a database with information about volcanic eruptions since the 1800s.
Four csv files from two different sources have been used to create the final database in PostgreSQL.
The following steps were taken to load the data and take it through the clean-up process:
1.	The data was then extracted from the websites in the form of csv files.
2.	Each csv file was then added to a Jupyter notebook to start the cleaning process with pandas.
3.	Once the cleaning process was finished a schema was created using quickdatabasediagrams.com.
4.	The schema was then exported as an .sql file.
5.	Once the database was finished the engineered tables were loaded into the final Postgres database.

EXTRACT
The following data sources were used for the process:
1.	eruptions.csv - source https://data.world/jessymorgan25/volcanoeruptions
2.	volcanos.csv - source: https://data.world/jessymorgan25/volcanoeruptions
3.	events.csv - source: https://data.world/jessymorgan25/volcanoeruptions
4.	damage.csv - source: https://data.cerdi.uca.fr/erup-vol/
These sources can be found in the resources folder of the repository.


TRANSFORM
1.	eruptions.csv:
•	Firstly, the null values in the year columns were dropped.

•	The null values then remaining in the day and month columns where then replaced with 1 to allow for datetime conversion.

•	Data of volcanoes from before the year 1800 were dropped.

•	Using lambda and .astype functions were used to convert the date columns from floats to string and then concatenated to form a valid datetime format which was appended to new columns in the data frame.

•	The newly created date columns were then transformed to datetime using pandas to_date function.

•	Unnecessary columns were then dropped to finalise the data frame.

2.	volcano.csv:
•	

3.	events.csv:
•	

4.	damages.csv:
•	

LOAD
Once the transformation has been completed the tables were created from the schema created in quickdatabasediagrams.com.
A database was created within PostgreSQL to which the schema was uploaded.
Once the schema was uploaded to the database the final importing of data can occur. Take note that the data should only be uploaded once to avoid any errors with the primary keys.
