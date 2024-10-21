     /*                                         SQL Queries                                */

--  Write SQL Queries for the following:

-- 1) Display all the records in emp table.
-- query :
select *
from emp;
-- 2) Display all the records in emp table where employee belongs to deptno 10.
--query:
select *
from emp
where deptno = 10;
-- 3) Display all the records in emp table where employee does not belong to deptno 30.
--query:
select *
from emp
where deptno = 10;
-- 4) Display total number of records in Emp table.
--query:
select count(*)
from emp;
-- 5) Display emp table with salary descending order.
--query:
select *
from emp
order by sal desc;
-- 6) Display first five records in employee table.
--query: here we should use a keyword "rownum" if it is in oracle , if it is MySQL use LIMIT and OFFSET 
select *
from emp
where rownum <= 5;
-- 7) Display all the records in emp table order by ascending deptno, descending salary.
--query:
select *
from emp
order by deptno asc,sal desc; 
-- 8) Display all employees those who were joined in year 1981.
--query:
SELECT *
FROM emp
WHERE EXTRACT(YEAR FROM hiredate) = 1981;
-- 9) Display employee information who don’
--query:
 -- this question is not there
-- 10) Display the records in emp table where MGR in 7698,7566 and sal should be greater then 1500
--query:
select *
from emp
where (MGR = 7698 or MGR = 7566) and sal > 1500;
-- 11) Display all employees where their salary is less then the Ford’s salary?
--query:
select *
from emp e1 JOIN emp e2 
ON e1.empno != e2.empno
where e1.salary < e2.salary and e2.empno = 
-- 12) Display all the records in EMP table along with the rowed.
--query:
select rownum,emp.*
from emp;
-- 13) Write a query to display current date.
--query:
SELECT SYSDATE FROM DUAL;
-- for date and time 
SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY HH24:MI:SS') AS CURRENT_DATETIME
FROM DUAL;
/*    The SQL query:

sql
Copy code
SELECT SYSDATE FROM DUAL;
retrieves the current system date and time from the Oracle database. Here’s a detailed explanation of each part of the query:

1. SELECT
This is the SQL keyword used to specify the columns or expressions that you want to retrieve from a table or view. In this case, it’s selecting the function SYSDATE, which returns the current system date and time.
2. SYSDATE
SYSDATE is an Oracle-specific function that returns the current system date and time. The returned value includes both the date and the time (in the format DD-MM-YYYY HH:MI:SS by default).

Example: If today is October 21, 2024, at 2:30 PM, SYSDATE would return something like 21-OCT-2024 14:30:00.

This function does not take any arguments, and it always reflects the database server's date and time, not the client’s local time.

3. FROM DUAL
DUAL is a special dummy table in Oracle used to perform operations that don’t require data from an actual table.

The DUAL table has exactly one row and one column. It's commonly used when you need to perform a function or calculation, but don’t need to query from any real data source.

The query could be written as SELECT SYSDATE in other databases like SQL Server or MySQL, but in Oracle, the FROM DUAL clause is necessary because SELECT statements must always specify a source.*/

-- 14) Display distinct job from emp table.
--query:
SELECT DISTINCT JOB 
FROM EMP
-- 15) Write a query that displays the employee’s names with the first letter capitalized and all other
-- letters lowercase for all employees whose name starts with J, A, or M.
--query:
SELECT INITCAP(ENAME) AS EMPLOYEE_NAME
FROM EMP
WHERE ENAME LIKE 'J%' 
   OR ENAME LIKE 'A%' 
   OR ENAME LIKE 'M%';

-- 16) Write a query to display the employee name, department name of all employees who earn a
-- commission.
-- query:

17) Display the empno, ename, sal, and salary increased by 15%.
18) Display employee names and corresponding manager names.
19) Display all the departments where employee salary greater than average salary of that
department.

20) Display employees where length of ename is 5.
21) Display all employees where ename start with J and ends with S.
22) Display all employees where employee does not belong to 10,20,40.
23) Display all employees where jobs does not belong to PRESIDENT and MANAGER.
24) Display the maximum salary in the emp table.
25) Display average salary for job SALESMAN.
26) Display all ename where first character could be anything, but second character should be L.
27) Display nth highest and nth lowest salary in emp table.
28) Display all the departments where department has 3 employees.
29) Display sum of salary for each department.
30) Display all department with Minimum salary and maximum salary?
31) Display all ename, empno, dname, loc from emp, dept table.
32) Display all the departments where department does not have any employees.
33) Display all the departments where department does have atleast one employee.
34) Display all employees those who are not managers.
35) Display ename, deptno from emp table with format of {ename} belongs to {deptno}.
36) Display all the records in emp table. The ename should be lower case. The job first character
should be upper case and rest of the character in job field should be lower case.

37) Create table emp1 and copy the emp table for deptno 10 while creating the table.
38) Create table emp2 with same structure of emp table. Do not copy the data.
39) Display all the records for deptno which belongs to employee name JAMES.
40) Display all the records in emp table where salary should be less than or equal to ADAMS
salary.

41) Display all subordinate those who are working under BLAKE.
42) Display who is making highest commission.
43) Display ename, sal, grade, dname, loc for each employee.
44) Display all employee whose location is DALLAS.
45) Delete emp records for detpno 10 and 20.
46) Delete all employees those are not getting any commission.
47) Delete the employees where employee salary is greater than average salary of his/her
department.

48) Rename the employee name JONES to ANDY.
49) Increase the salary 5% for employee those who are earning commission less then 1000.
98) Increase 100$ for employee who is making more then averge salary of his department.
99) Increase 1% salary for employee who is making lowest salary in dept 10.
100) Increase commission 10$ for employees those who are located in NEW YORK.
