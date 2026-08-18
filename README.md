# Employee-Table-Schema-with-Data-Integrity-and-Rules
This project focuses on building an Employees Database using SQL Data Definition Language (DDL) commands. The database is designed to store and manage employee information in a structured way, ensuring data integrity and consistency through the use of constraints.

## 📖 Introduction
This project demonstrates SQL concepts using an **Employee Database**.  
It covers **DDL (Data Definition Language)** for table creation and **DML (Data Manipulation Language)** for data insertion, querying, filtering, aggregation, joins, and window functions.  

The goal is to strengthen SQL skills for **data analysis and reporting**.

---

## 🎯 Objectives
- Define relational tables with proper constraints (DDL).  
- Insert and manipulate employee data consistently (DML).  
- Practice SQL clauses (`DISTINCT`, `WHERE`, `ORDER BY`, `LIMIT`).  
- Apply aggregate functions (`SUM`, `MIN`, `MAX`, `AVG`).  
- Use `GROUP BY` and `HAVING` for grouped data filtering.  
- Explore joins (INNER, LEFT, RIGHT, CROSS, SELF).  
- Implement window functions (`RANK`, `DENSE_RANK`, `SUM OVER`).  
- Interpret query results for decision‑making as a Data Analyst.  

---

## 🗂️ Dataset Description

### Departments
- `department_id` – Primary Key  
- `department_name`

### Location
- `location_id` – Primary Key  
- `location_name`

### Employees
- `employee_id` – Primary Key  
- `employee_name`, `gender`, `age`, `hire_date`, `designation`, `salary`  
- `department_id` – Foreign Key referencing `Departments(department_id)`  
- `location_id` – Foreign Key referencing `Location(location_id)`  

---

## ⚡ DDL Commands
```sql
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE Location (
    location_id INT PRIMARY KEY,
    location_name VARCHAR(50)
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    hire_date DATE,
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT,
    location_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);

## 📌 Project Workflow

1. **Database Design (DDL)**  
   - Created tables for Departments, Locations, and Employees.  
   - Defined relationships using **primary keys** and **foreign keys**.  

2. **Data Insertion (DML)**  
   - Populated tables with sample employee records.  
   - Ensured consistency with department and location references.  

3. **Querying & Filtering**  
   - Retrieved distinct values, applied aliases, and filtered records using conditions.  
   - Updated missing values (e.g., filling designation with "Data Scientist").  

4. **Sorting & Aggregation**  
   - Ordered employees by department and salary.  
   - Calculated total salaries, minimum ages, maximum salaries per location, and average salaries for analyst roles.  

5. **Grouping & Conditions**  
   - Used `GROUP BY` with aggregate functions.  
   - Applied `HAVING` to filter grouped results (e.g., departments with fewer than 3 employees).  

6. **Joins**  
   - Connected employees with departments and locations using **INNER, LEFT, RIGHT, CROSS, and SELF joins**.  
   - Demonstrated how joins reveal relationships across tables.  

7. **Window Functions**  
   - Ranked employees by salary overall (`RANK`).  
   - Ranked employees by salary within departments (`DENSE_RANK`).  
   - Calculated running totals of salary by department (`SUM OVER`).  

---

## 📊 Key Learnings
- **DDL ensures structure**: Tables and constraints define the foundation of the database.  
- **DML manipulates data**: Queries and updates allow retrieval, filtering, and analysis.  
- **Joins reveal relationships**: Employees linked to departments and locations show organizational context.  
- **Aggregations and window functions support analytics**: Salary totals, rankings, and averages provide actionable insights.  

---

## ✅ Conclusion
This assignment successfully integrates **DDL for database design** and **DML for data manipulation and analysis**.  
By combining clauses, grouping, joins, and window functions, the Employee Database demonstrates how SQL can be used to ensure **data integrity** and deliver **business insights**.  

This project strengthens the role of SQL as a powerful tool for a **Data Analyst**, bridging the gap between raw data and meaningful decision-making.

---

