This project involved designing and implementing a relational database to store and analyze information related to the 2010 FIFA World Cup tournament.

The database was created using MySQL and the data was populated from various sources in CSV format. The project demonstrates core database skills like:

- Database schema design and normalization
- Creating tables with constraints and relationships
- Importing and cleaning data from external files
- Writing SQL queries to generate insights from data
- Building views and stored procedures for business logic

**Usage**

The create_tables.sql file contains the SQL statements to build the database schema.

import_data.sql has the statement required to populate the tables from CSV files.

queries.sql provides sample SELECT queries to analyze data.

The source data files are under data/ folder in CSV format.

**Sample Queries**

Some examples of insights that can be generated from this database:

- Top goal scorers
- Matches played by each team
- Goals scored in each match
- Ranking and points table for teams
- Player statistics like assists, yellow/red cards

**Future Improvements**

Some ways this database can be enhanced further:

- Add more metadata like match stadium, referee, attendance
- Enhance queries for deeper analytics
- Develop UI front-end to query and visualize data
- Build API access for mobile apps and dashboards
