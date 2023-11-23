#EMPLOYEE COUNT 
SELECT sum(`employee count`) as `Total Number Of Employees` 
FROM `hr table`; 

#ATTRITION COUNT 
SELECT count(attrition) as `Attrition Count` 
FROM `hr table` 
WHERE Attrition = 'yes';

#ATTRITION RATE 
SELECT sum(case when attrition= 'yes' then 1 else 0 end)/ sum(`employee count`)* 100 as 'Attrition Rate' 
FROM `hr table`; 

#ACTIVE EMPLOYEES 
SELECT count(Attrition) As `Attrition Count`
FROM `hr table` 
WHERE attrition = 'No';

#AVERAGE AGE 
SELECT avg(age) 
FROM `hr table`;

#DEPARTMENT ATTRITION 
SELECT department, count(Attrition) As `Attrition Count`
FROM `hr table` 
WHERE attrition = 'yes' 
GROUP BY department;

#EDUCATION FIELD WISE ATTRITION 
SELECT `education field`, count(Attrition) As `Attrition Count`
FROM `hr table` 
WHERE attrition = 'yes' 
GROUP BY `education field`;

#JOB ROLE ATTRTION 
SELECT `Job role`, count(Attrition) As `Attrition Count`
FROM `hr table` 
WHERE attrition = 'yes' 
GROUP BY `Job role`
ORDER BY `Attrition Count` desc;

 #JOB LEVEL ATTRITION 
SELECT `Job level`, count(Attrition) As `Attrition Count`
FROM `hr table` 
WHERE attrition = 'yes' 
GROUP BY `Job level` 
ORDER BY `Job level`;

#AGE GROUP ATTRITION 
SELECT `Cf_age band`, count(Attrition) As `Attrition Count`
FROM `hr table` 
WHERE attrition = 'yes' 
GROUP BY `cf_age band`
ORDER BY `Attrition Count` Desc;

#GENDER WISE ATTRITION 
SELECT `gender`, count(Attrition) As `Attrition Count`
FROM `hr table` 
WHERE attrition = 'yes' 
GROUP BY `gender`
ORDER BY `Attrition Count` Desc; 








