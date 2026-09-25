--Vadym Vitrenko, a22506330, 18/09/2026


--A1 Read
SELECT DB_NAME() AS current_database;
-- A2. Explore a relation
SELECT TOP 5 *
FROM Scott.EMP;

-- A3. Choose columns
SELECT EMPNO, ENAME, JOB, SAL
FROM Scott.EMP;

-- A4. Filter rows
SELECT EMPNO, ENAME, SAL
FROM Scott.EMP
WHERE SAL < 1000;

-- A5. Work with missing values
SELECT EMPNO, ENAME, COMM
FROM Scott.EMP
WHERE COMM IS NULL;

-- B1. Check the identifier
SELECT EMPNO
FROM Scott.EMP
WHERE EMPNO = 6330;

-- B2. Insert a row
INSERT INTO Scott.EMP (EMPNO, ENAME, HIREDATE, SAL)
VALUES (6330, 'Vadym Vitrenko', GETDATE(), 1500);

-- B3. Verify
SELECT EMPNO, ENAME, HIREDATE, SAL
FROM Scott.EMP
WHERE EMPNO = 6330;

-- C2. Delete
DELETE FROM Scott.EMP
WHERE EMPNO = 6330;

-- C3. Verify
SELECT EMPNO
FROM Scott.EMP
WHERE EMPNO = 6330;