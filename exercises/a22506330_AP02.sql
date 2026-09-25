--Vadym Vitrenko, a22506330, 25/09/2026

USE ULHT_DB26;
GO

--exercicio 1
-- A1. Formal name
SELECT 
    EMPLOYEE_ID,
    CONCAT(UPPER(LAST_NAME), ', ', LOWER(FIRST_NAME)) AS formal_name
FROM HR.EMPLOYEES;

-- exercicio 2
SELECT 
    EMPLOYEE_ID,
    CONCAT(LOWER(EMAIL), '@example.org') AS email_address
FROM HR.EMPLOYEES;

--exercicio 3
-- A3. Name length
SELECT 
    LAST_NAME,
    LEN(LAST_NAME) AS last_name_length
FROM HR.EMPLOYEES
ORDER BY 
    last_name_length DESC, 
    LAST_NAME ASC;

--exercicio 4
SELECT TOP 5
    EMPLOYEE_ID, 
    SALARY, 
    SALARY * 3 AS quarter_salary, 
    SALARY * 14 AS annual_salary
FROM 
    HR.EMPLOYEES;

--exercicio 5
SELECT TOP 5
    EMPLOYEE_ID,
    HIRE_DATE,
    DATEADD(month, 6, HIRE_DATE) AS review_date
FROM
    HR.EMPLOYEES;