--Department with the most employee
--SELECT Dept_name, COUNT(Dept_name) As Employee_Count
--FROM Employees_NewData
--GROUP BY Dept_name

--BASIC INFORMATION
--What is the total number of employees in the organization?
SELECT COUNT(Employee_ID)
FROM Employees_NewData

--How many departments are there in the company?
SELECT Dept_name, COUNT(Dept_name)
FROM Department
GROUP BY Dept_name

--Employee Details:
--What is the average age of employees?
SELECT AVG(Age)
FROM Employees_NewData

--Who is the oldest/youngest employee in the organization?
SELECT First_name, Last_Name, MAX(Age) AS OLDEST
FROM Employees_NewData
GROUP BY First_name, Last_Name
ORDER BY OLDEST DESC

--What is the distribution of employees by gender?
SELECT Gender, COUNT(Gender)
FROM Employees_NewData
GROUP BY Gender

--How many employees hold each job title?
SELECT Job_Role, COUNT(Job_Role) AS Job_role_Count
FROM Employees_NewData
GROUP BY Job_Role

--Salary Insights:
--What is the average salary in the company?
SELECT AVG(Salary)
FROM Employees_NewData

--Which department has the highest average salary?
SELECT Dept_name, AVG(Salary) AS Dept_Avg_Salary
FROM Employees_NewData
GROUP BY Dept_name
ORDER BY Dept_Avg_Salary

--Identify the top earners in the organization.
SELECT First_name, Last_Name, MAX(Salary) AS TopEarners
FROM Employees_NewData
GROUP BY First_name, Last_Name
ORDER BY TopEarners DESC

--Employee and Department Relationships:
--Which employees belong to a specific department?
SELECT First_name, Last_Name, DPT.Dept_name
FROM Employees_NewData AS EMP
JOIN Department AS DPT
ON EMP.Dept_name = DPT.Dept_name
GROUP BY First_name, Last_Name, DPT.Dept_name
ORDER BY DPT.Dept_name

--What is the average age and salary of employees in each department?
--Find the department with the highest total salary.
SELECT SUM(Salary) AS DeptWithHighestTotalPay, DPT.Dept_name
FROM Employees_NewData AS EMP
JOIN Department AS DPT
ON EMP.Dept_name = DPT.Dept_name
GROUP BY DPT.Dept_name
ORDER BY DeptWithHighestTotalPay DESC