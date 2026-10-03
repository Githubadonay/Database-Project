# MySQL Database Projects

This repository contains a collection of database design and SQL projects completed as part of my database programming coursework. The projects demonstrate my progression from basic relational database concepts to designing and querying larger relational database systems using **MySQL** and **MySQL Workbench**.

## Technologies Used

- MySQL
- MySQL Workbench
- SQL
- Relational Database Design
- Entity Relationship Modeling
- Database Normalization

## Skills Demonstrated

Throughout these projects, I worked with:

- Database creation and management
- Table creation
- Primary keys
- Foreign keys
- One-to-many relationships
- Many-to-many relationships
- Data types and constraints
- `INSERT` statements
- `SELECT` statements
- `WHERE` conditions
- `ORDER BY`
- `GROUP BY`
- `COUNT()`
- `MAX()`
- `CONCAT()` and `CONCAT_WS()`
- Inner joins
- Left joins
- Subqueries
- Aggregate queries
- Relational database modeling
- Entity Relationship Diagrams (ERDs)

---

## Project Structure

### D1 – D5: Database Design

The `D1` through `D5` folders contain database design assignments created using **MySQL Workbench**.

These projects focus on topics such as:

- Entity identification
- Attributes
- Primary keys
- Relationships
- Cardinality
- Database modeling
- ER diagrams
- Supertype/subtype relationships
- Disjoint and overlapping relationships
- Partial and total specialization

The folders include MySQL Workbench `.mwb` models along with supporting documentation.

---

### S1 – Basic SQL and Employee Database

The first SQL project introduces database creation and basic SQL operations.

The project creates an employee database and demonstrates:

- Creating a database
- Creating tables
- Defining primary keys
- Inserting employee records
- Retrieving records
- Filtering records using `WHERE`

Example concepts:

```sql
CREATE DATABASE HR_AT;

CREATE TABLE EMPLOYEE_AT (...);

INSERT INTO EMPLOYEE_AT VALUES (...);

SELECT * FROM EMPLOYEE_AT;

SELECT *
FROM EMPLOYEE_AT
WHERE LAST_NAME_AT = 'Doe';
```

---

### S2 – Fitness Company Database

This project expands the relational model by creating a fitness company database containing:

- Trainers
- Customers
- Trainer-to-customer relationships

The database introduces **foreign keys and joins**.

Skills demonstrated include:

```sql
FOREIGN KEY
JOIN
CONCAT()
WHERE
```

Queries retrieve information such as:

- Customers assigned to trainers
- Trainer and customer names
- Customers with specific names
- Trainers hired after a certain year

---

### S3 – Soccer Registration Database

This project introduces a larger relational database for managing a soccer organization.

The database contains:

- Seasons
- Divisions
- Clubs
- Teams
- Team registrations

Relationships are created using multiple foreign keys.

Example database relationships:

```text
Season
   |
Division
   |
Registered
   |
Team
   |
Club
```

The project demonstrates multi-table joins across several related entities.

Queries include:

- Finding teams registered during a specific season
- Finding divisions associated with teams
- Retrieving teams belonging to specific clubs
- Filtering teams based on age divisions

---

### S4 – Expanded Soccer Registration System

The soccer registration database is expanded to include additional entities:

- Coaches
- Players
- Teams
- Clubs
- Seasons
- Divisions
- Registrations

The database structure becomes:

```text
Club
  |
 Team ---- Coach
  |
 Player

 Team
  |
Registered
  |
Division
  |
Season
```

This project introduces more advanced queries including:

- `COUNT()`
- `MAX()`
- Subqueries
- Multi-table joins

Examples include finding:

- Number of players registered for a season
- Number of coaches
- Player with the highest jersey number
- Least experienced coaches

---

### S5 – Soccer Scheduling Database

This project further expands the soccer database by adding a game scheduling system.

A new `SCHEDULED_GAME_AT` table manages:

- Game codes
- Game dates and times
- Cities
- Divisions
- Competing teams

The project demonstrates aggregate SQL queries such as:

```sql
SELECT CITY_AT, COUNT(*)
FROM SCHEDULED_GAME_AT
GROUP BY CITY_AT;
```

Additional queries calculate:

- Number of games in each city
- Number of coaches associated with each club
- Number of clubs within divisions
- Number of players assigned to each coach

---

### P1 – P2

These projects contain larger database modeling exercises created with **MySQL Workbench**.

They include:

- Database models
- ER diagrams
- Project documentation
- Database relationship design

These projects helped develop the database structures later implemented using SQL.

---

### P3 – Happy Learning Database

The `P3` project is one of the larger database systems in this repository.

It models a school/daycare management system called **Happy Learning**.

The database contains:

- Teachers
- Classes
- Students
- Parents
- Teacher assignments
- Parent/student relationships
- Lunch orders
- Lunch items
- Order items

Example relationships:

```text
Teacher
   |
Assignment
   |
 Class
   |
Student
   |
Relationship
   |
Parent
```

The lunch ordering portion includes:

```text
Student
   |
Lunch Order
   |
Order Item
   |
Lunch Item
```

The project demonstrates complex multi-table queries for retrieving information such as:

- Students and their teachers
- Students grouped by class
- Parents and their children
- Teachers connected to students and parents
- Student class information
- Lunch ordering information

---

## Example SQL

An example of a multi-table query used in the projects:

```sql
SELECT
    CONCAT_WS(' ',
        STUDENT_AT.FIRST_NAME_AT,
        STUDENT_AT.MIDDLE_NAME_AT,
        STUDENT_AT.LAST_NAME_AT
    ) AS Student,

    CLASS_AT.AGE_LEVEL_AT AS Level,
    CLASS_AT.COLOR_AT AS Color,

    CONCAT_WS(' ',
        TEACHER_AT.FIRST_NAME_AT,
        TEACHER_AT.MIDDLE_NAME_AT,
        TEACHER_AT.LAST_NAME_AT
    ) AS Teacher

FROM STUDENT_AT
JOIN CLASS_AT
    ON STUDENT_AT.CLASS_AT_CODE_AT = CLASS_AT.CODE_AT
JOIN ASSIGNMENT_AT
    ON CLASS_AT.CODE_AT = ASSIGNMENT_AT.CLASS_AT_CODE_AT
JOIN TEACHER_AT
    ON ASSIGNMENT_AT.TEACHER_AT_ID_AT = TEACHER_AT.ID_AT

ORDER BY Student ASC;
```

This query demonstrates how multiple related tables can be combined to retrieve meaningful information from a relational database.

---

## Repository Organization

```text
Database-Project/
│
├── D1/
├── D2/
├── D3/
├── D4/
├── D5/
│
├── DB1/
│
├── P1/
├── P2/
├── p3/
│
├── S1/
├── S2/
├── S3/
├── S4/
└── S5/
```

Most folders contain combinations of:

```text
.sql   → SQL scripts
.mwb   → MySQL Workbench database models
.pdf   → Project documentation
.docx  → Assignment documentation
.png   → ER diagrams/screenshots
```

---

## What I Learned

These projects helped me develop practical experience with relational databases and SQL, including how to:

- Design databases before implementation
- Convert requirements into tables and relationships
- Maintain relationships using primary and foreign keys
- Build normalized relational database structures
- Insert and manage relational data
- Write queries across multiple tables
- Use joins and subqueries to retrieve connected information
- Use aggregate functions to analyze stored data
- Create database models using MySQL Workbench

## Author

**Adonay Tesfamichael**

Information Technology  
George Mason University

GitHub: [Githubadonay](https://github.com/Githubadonay)
