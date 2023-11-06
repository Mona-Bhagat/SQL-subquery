

select * from [dbo].[EmployeeDemographics$]

select * from [dbo].[EmployeeSalary$]


------subquery using where 

select employeeid, salary

from [dbo].[EmployeeSalary$] 

where salary > (select AVG(salary) as avgsal from [dbo].[EmployeeSalary$])




------subquery using IN operator

select employeeid, salary 

from [dbo].[EmployeeSalary$]

where employeeid in (select employeeid 
                     from [dbo].[EmployeeDemographics$] 
					 where age > 30 ) 








