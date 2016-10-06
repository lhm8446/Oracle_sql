select job_id from employees;
select distinct job_id from employees;

select employee_id, salary,
	case job_id 
	when 'AC_ACCOUNT' 
	then salary + salary*0.1 
	when 'AC_MGR' 
	then salary + salary*0.2 
	when 'AC_VP' 
	then salary + salary*0.5
	else salary 
end as"이번달 급여"
from employees;

select employee_id, salary, 
	DECODE(job_id, 
	'AC_ACCOUNT',salary + salary*0.1 ,
	'AC_MGR' ,salary + salary*0.2 ,
	'AC_VP' , salary + salary*0.5 ,salary) as"이번달 급여"
	from employees;