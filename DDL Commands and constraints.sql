
create database employee;

use employee;

--- Departments table

create table Departments (department_id int,
    department_name VARCHAR(100)
    );
    
desc Departments;

--- Location Table

create table location (location_id int,
location_name varchar(30)
);

desc location;


-- employee table

create table employee (employee_id int,
 employee_name varchar(50),
 gender enum('M','F'),
 age int,
 hire_date date,
 designation varchar(100),
 departnment_id int,
 location_id int,
 salary decimal (10,2)
 );
 
 desc employee;
 
 
 show databases;
 
 show tables;


--- Table Alteration (ALTER)
-- Add new column email


alter table employee 
add email varchar(100);

 desc employee;
 
 -- Modify designation to support wider values
 
 alter table employee 
 modify designation varchar(100);
 
 alter table employee 
 modify designation varchar(200);
 
  desc employee;
 
 -- Drop age column
 
 alter table employee
 drop column age;
 
  desc employee;
  
  
  
  
  --- Rename hire_date to date_of_joining
  
  
  alter table employee
  rename column hire_date to date_of_joining;
  
  desc employee;
  
  
 --- Table Renaming (RENAME)
 
 rename table departments to departments_info;
 
 
 --- rename location table

rename table location to locations;

--- Table Truncation (TRUNCATE)

truncate table employee;

--- Database & Table Dropping (DROP)

drop table employee;

drop database employee;


 --- Constraints  

-- 1. Database Recreation

DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;

-- 2. Departments Table

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) UNIQUE NOT NULL
);

use employee;
desc departments;


-- 3. Location Table

CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(100) UNIQUE NOT NULL
);


desc location;

select * from location;


CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);


USE employee;
SHOW CREATE TABLE employees;
 
 
  