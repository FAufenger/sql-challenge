# sql-challenge

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. The first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

This assignment utilises: 
 * ERD skills through QuickDatabaseDiagrams
 * CSV file importing to SQL platform PgAdmin4 with Postgress
    * CSV files found in DATA folder
    * schema to create tables found in schema.sql
 * Querying the CVS data in PgAdmin4 to get sepcific results
    * query listed in query.sql along with corresponding code
 * Juypter notebook for testing if data provided was ficticious material 
    * Using sqlalchemy, matplotlib, pandas and numpy

## ERD used to connect tables

![DBD ERD image](./images/ERD_image.png)

## Sample of Queries in PgAdmin4

![SQL code](./images/sample_code.png)


## Histogram of Salary Range for company

![Histogram](./images/histogram_range_salary.png)

## Bar Graph of Average salary by Title

![Avg Salary by Title](./images/avg_salary_title_graph.png)

## Outcome
Upon reviewing the data, the data is found to be false. 
<br>
In so much that it was fabricated by the company as a test and not actual company records.
<br>
The employee id we were given returned April Foolsday, as shown in the dataframe below

![my_id](./images/my_id_result.png)
