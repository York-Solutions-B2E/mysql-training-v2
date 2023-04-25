# York Solutions B2E MySQL Training

This MySQL training course is designed to introduce new users to the fundamental concepts of SQL and MySQL. The course
provides an overview of SQL and its use in data management, including data retrieval, manipulation, and modification.
Participants will learn how to use SQL commands to perform queries, insert data, update and delete records, and create
tables and databases.

The training course is designed to be hands-on and interactive. Participants will learn how to use SQL to solve common
data management challenges. The course is also designed to be accessible to users with little or no prior experience
with SQL or databases.

Throughout the course, participants will learn how to use MySQL, one of the most widely used relational database
management systems. They will gain an understanding of how MySQL works and how to interact with it using SQL. By the end
of the course, participants will have a solid foundation in SQL and MySQL and will be able to apply their knowledge to
real-world data management tasks.

## System Requirements
1. NodeJS + NPM 
   - https://nodejs.org/en/download
2. Docker Desktop
   - https://www.docker.com/products/docker-desktop/
3. DataGrip (this software is not free but they do provide a 30 day free trial)
   - https://www.jetbrains.com/datagrip/

## Local Database Startup

1. Open a terminal and `CD` into the project folder.
2. Run the following command to install the required dependencies.
   - `npm install`
3. Run the following command to start the mysql docker container.
   - `npm start db`

## UI Access via Adminer
After running startup commands visit...
http://localhost:8080

## SQL GUI Connection Info
    host:        localhost:3306
    username:    root
    password:    root

