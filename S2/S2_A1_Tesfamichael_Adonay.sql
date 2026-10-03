-- Task 2 Create database by Adonay tesfamichael
DROP DATABASE IF EXISTS FITNESS_COMPANY_AT;
CREATE DATABASE FITNESS_COMPANY_AT;
USE FITNESS_COMPANY_AT;
SHOW DATABASES;

-- Task 3 - Create table by Adonay Tesfamichael
SHOW TABLES;

CREATE TABLE TRAINER_AT(
ID_AT INT PRIMARY KEY NOT NULL,
LAST_NAME_AT VARCHAR(21) NOT NULL,
FIRST_NAME_AT VARCHAR(21) NOT NULL,
PHONE_AT CHAR(12) NOT NULL,
HIRED_YEAR_AT DECIMAL(4, 0) NULL
);
SHOW TABLES;

CREATE TABLE CUSTOMER_AT (
ID_AT INT PRIMARY KEY NOT NULL,
LAST_NAME_AT VARCHAR(21) NOT NULL,
FIRST_NAME_AT VARCHAR(21) NOT NULL,
PHONE_AT CHAR(12) NOT NULL,
YEAR_OF_BIRTH_AT DECIMAL(4,0) NULL,
GOAL_AT VARCHAR(50) NOT NULL,
TRAINER_AT_ID_AT INT, 
FOREIGN KEY (TRAINER_AT_ID_AT) REFERENCES TRAINER_AT(ID_AT)
);
SHOW TABLES;

SELECT * FROM TRAINER_AT,CUSTOMER_AT; 
DESCRIBE TRAINER_AT;
DESCRIBE CUSTOMER_AT;


-- Task 4 - Add data by Adonay Tesfamichael 
INSERT INTO TRAINER_AT VALUES
(1, 'Jones', 'William', '175-221-9988', 2019),
(2, 'John', 'Tomus', '222-489-1234', 2014),
(3, 'Fillap', 'Ben', '175-223-9998', 2012),
(4, 'John', 'Mike', '175-672-8912', 2020),
(5, 'Cindy', 'Timms', '175-098-2678', NULL);

INSERT INTO CUSTOMER_AT VALUES
(1, 'Garcia', 'Robert', '175-751-8822', 1988, 'Building endurance', 1),
(2, 'John','Sue','827-738-9823', 2000, 'Loss weight', 3),
(3, 'Son','Woo','175-898-0902', 1974, 'Run faster', 5 ),
(4, 'Rodus','Sue','175-123-4566', 2004, 'Look her best, but not come a lot', 2),
(5, 'John','Bills','175-272-7272', NULL, 'Get bigger', 3);

SELECT * FROM TRAINER_AT;
SELECT * FROM CUSTOMER_AT;


-- Task 5 - Query the data by Adonay Tesfamichael

-- For each assignment, list the first and last names for both the trainer and the customer. Use suggestive names for the columns in the result.
SELECT T.FIRST_NAME_AT AS 'TRAINERS FIRST NAME',
	   T.LAST_NAME_AT AS 'TRAINERS LAST NAME',
       C.FIRST_NAME_AT AS 'CUSTOMER FIRST NAME', 
       C.LAST_NAME_AT AS 'CUSTOMER LAST NAME'
FROM CUSTOMER_AT C, TRAINER_AT T
WHERE C.TRAINER_AT_ID_AT = T.ID_AT;

-- Pick the ID for the third trainer you defined in the database. List the full names (FIRST SPACE LAST) for all the customers of the selected trainer (in one column named "Customer").
SELECT CONCAT(FIRST_NAME_AT,' ', LAST_NAME_AT) AS 'FULL NAME'
FROM CUSTOMER_AT
WHERE TRAINER_AT_ID_AT = 3;

-- List the full names (FIRST SPACE LAST)for the trainer and customers (in two columns named "Trainer" and "Customer"), for which the customer first name is "Sue"
SELECT CONCAT(T.FIRST_NAME_AT,' ', T.LAST_NAME_AT) AS 'Trainer',
       CONCAT(C.FIRST_NAME_AT,' ', C.LAST_NAME_AT) AS 'Customer'
FROM CUSTOMER_AT C
JOIN TRAINER_AT T ON C.TRAINER_AT_ID_AT= T.ID_AT
WHERE C.FIRST_NAME_AT = 'SUE';

-- List the names for the trainers in the format (LAST COMMA SPACE FIRST) hired after 2015 and the full names of their customers. Show the result in two columns named "Trainer" and "Customer".
SELECT CONCAT(T.LAST_NAME_AT,', ',T.FIRST_NAME_AT) AS 'Trainer',
       CONCAT(C.LAST_NAME_AT,' ',C.FIRST_NAME_AT) AS 'Customer'
FROM CUSTOMER_AT C
JOIN TRAINER_AT T ON C.TRAINER_AT_ID_AT= T.ID_AT
WHERE T.HIRED_YEAR_AT > 2015;


