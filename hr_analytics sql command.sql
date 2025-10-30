use hr_analysis;
select * from hr_analytics;

--- 1) Total Records Count
select count(*) as total_count from hr_analytics;

--- 2) Check Null values on EmpID
select count(*) as total_null_records from hr_analytics
where empid is null;

--- 3) Total Employees by Age Group
 select agegroup, count(empid) as total_agegroup from hr_analytics
 group by agegroup;
 
 --- 4) How many Employees by each Department
 select department, count(empid) as tot_emp from hr_analytics
 group by department;
 
 --- 5) Show Employees by Salary Slab
 select salaryslab, count(empid) as tot_emp from hr_analytics
 group by salaryslab;
 
 --- 6) Employee Count by Gender and Marital Status
 select maritalstatus,gender,  count(*) as tot_emp from hr_analytics
  group by maritalstatus,gender;
   
--- 7) Show Business Travel by Age Group
select businesstravel,agegroup, count(*) as total_emp from hr_analytics
group by businesstravel,agegroup;

--- 8) Employees WITH Above-Average Income in Their Department 
select empid,department,monthlyincome from hr_analytics as a
where monthlyincome > (select avg(monthlyincome)  from hr_analytics as b
where a.department = b.department )
order by monthlyincome desc;
