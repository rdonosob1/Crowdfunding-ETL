# Crowdfunding-ETL
## Project Overview
Independent Funding is a crowdfunding platform for funding independent projects or ventures. This company has been growing, and therefore, it needs to extract, transform and load data from one large Excel file onto a database. Thus, team will be able to perform analysis and create reports for company stakeholders as well as individuals who donate to projects.

In order to accomplish all that, this project will consist in performing these preliminary tasks:

 * Extracting and transforming the data from the large Excel file into four separate CSV files
 * Creating a PostgreSQL database and tables by using an ERD
 * Loading the CSV files into the database
 * Performing SQL queries to generate reports for stakeholders
 
## Development and Results
As a start point, we are going to create four new CSV files from a crowdfunding Excel file and upload those files into separate tables in a SQL database. Therefore, we'll extract, transform, and load data. Right after that, we'll clean, restructure, format, filter and split the data in order to transform each DataFrame. The result of this will be cleaned datasets as CSV files into a SQL database. It is important to mention that an alternative way to clean and transform the data will be by using Python regular expressions.
   
The next step will consist in moving to load the data into a database. We'll get four CSV files. So, now that we have the data into CSV files it is important to review them to find out the relation between them. In other words we need to know how these CSV files are connected in order to create a map of the database and table schemas by using ERDs (Entity Relationship Diagram). The tool used to perform our ERD will be Quick Database Diagrams (Quick DBD).

After that, we can create a new database in pgAdmin and create the tables by using the schema and right after that we may be able to load the data into database using pgAdmin to import our saved CSV files.  

**Note:** The company has just received a new dataset that contains information about the backers who’ve pledged to the live projects which Independent Funding wants us to be included in order to know how much of the goal to be pledged remains. 
 
Finally, we may be able to perform a data analysis on the database by using SQL queries to further reach their contacts informing them how much of the goal amount is remaining for each campaign they have already pledged.  For visualization purposes we can order our data in descending order by each live campaign. 
