CREATE DATABASE employee;
USE employee;

ALTER TABLE emp_attrition
RENAME COLUMN ï»¿Age TO age;


-- ATTRITION RATE BY AGE:
SELECT age, COUNT(*) AS number_of_employees, Attrition
FROM emp_attrition
GROUP BY age,Attrition
ORDER BY age ASC;

-- ATTRITION RATE BY GENDER:
SELECT Gender, COUNT(*) AS number_of_employees, Attrition
FROM emp_attrition
GROUP BY Gender,Attrition;

-- ATTRITION RATE BY JobRole:
SELECT JobRole, COUNT(*) AS number_of_employees, Attrition
FROM emp_attrition
GROUP BY JobRole,Attrition;

-- ATTRITION RATE BY BusinessTravel:
SELECT BusinessTravel, COUNT(*) AS number_of_employees, Attrition
FROM emp_attrition
GROUP BY BusinessTravel,Attrition;


-- ATTRITION RATE BY JobSatisfaction:
SELECT  JobSatisfaction, COUNT(*) AS number_of_employees, Attrition
FROM emp_attrition
GROUP BY  JobSatisfaction,Attrition;


-- ATTRITION RATE BY AVG Monthly income by department:
SELECT Department , AVG(MonthlyIncome) AS avg_monthly_income, Attrition
FROM emp_attrition
GROUP BY  Department,Attrition;


-- ATTRITION RATE BY AVG MonthlyRate by department:
SELECT Department , AVG(MonthlyRate) AS avg_monthly_rate, Attrition
FROM emp_attrition
GROUP BY  Department,Attrition;



-- ATTRITION RATE BY Distance from home:
SELECT DistanceFromHome, Attrition
FROM emp_attrition
GROUP BY  DistanceFromHome,Attrition
ORDER BY DistanceFromHome ASC;


-- ATTRITION RATE BY Education, Education Field:
SELECT Education, EducationField, Attrition
FROM emp_attrition
GROUP BY  Education, EducationField,Attrition
ORDER BY Education ASC;


-- ATTRITION RATE BY EnvironmentSatisfaction:
SELECT EnvironmentSatisfaction, Attrition
FROM emp_attrition
GROUP BY  EnvironmentSatisfaction,Attrition
ORDER BY EnvironmentSatisfaction ASC;


-- ATTRITION RATE BY AVG Monthly rate by department:
SELECT Department , AVG(MonthlyRate) AS avg_monthly_rate, Attrition
FROM emp_attrition
GROUP BY  Department,Attrition;


-- ATTRITION RATE BY percent salary hike:
SELECT PercentSalaryHike, Attrition
FROM emp_attrition
GROUP BY  PercentSalaryHike,Attrition
ORDER BY PercentSalaryHike ASC;



-- ATTRITION RATE BY Performance rating:
SELECT PerformanceRating, Attrition
FROM emp_attrition
GROUP BY  PerformanceRating,Attrition
ORDER BY PerformanceRating ASC;



-- ATTRITION RATE BY MaritalStatus, RelationshipSatisfaction:
SELECT MaritalStatus, RelationshipSatisfaction,WorkLifeBalance,Attrition
FROM emp_attrition
GROUP BY  MaritalStatus, RelationshipSatisfaction,WorkLifeBalance,Attrition
ORDER BY RelationshipSatisfaction,WorkLifeBalance ASC;


-- ATTRITION RATE BY Years at company, Years in current role, Years since last promotion, Years with current manager, total working years:
SELECT TotalWorkingYears,YearsAtCompany, YearsInCurrentRole, YearsSinceLastPromotion, YearsWithCurrManager, Attrition
FROM emp_attrition
GROUP BY  TotalWorkingYears,YearsAtCompany, YearsInCurrentRole, YearsSinceLastPromotion, YearsWithCurrManager, Attrition;


-- ATTRITION RATE BY OverTime:
SELECT 
    OverTime, StandardHours, Attrition
FROM
    emp_attrition
GROUP BY OverTime , StandardHours , Attrition;


SELECT Gender, COUNT(*) AS number_of_employees, AVG(MonthlyIncome) AS avg_monthly_income
FROM emp_attrition
GROUP BY Gender;

SELECT Gender, AVG(JobSatisfaction), Attrition
FROM emp_attrition
GROUP BY Gender,Attrition;


SELECT Gender, COUNT(*) AS number_of_emp, Department
FROM emp_attrition
GROUP BY Gender,Department;

SELECT AVG(MonthlyIncome) AS avg_income, Department, Attrition
FROM emp_attrition
GROUP BY Department, Attrition;

SELECT JobRole, COUNT(*) AS number_of_emp, Department
FROM emp_attrition
GROUP BY JobRole,Department;








