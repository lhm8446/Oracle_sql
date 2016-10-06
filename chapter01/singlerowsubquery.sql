-- single row subquery

select first_name, 
	   salary 
from employees 
where salary >(select salary from employees where first_name = 'Lex');


select first_name, 
	   salary 
from employees 
where salary =(select salary from employees where first_name = 'Lex');


select first_name, 
	   salary 
from employees 
where salary <(select salary from employees where first_name = 'Lex');


select first_name, 
	   salary 
from employees 
where salary <>(select salary from employees where first_name = 'Lex');


-- 전체 직원의 평균 연봉보다 더 많이  받는 직원의 이름과 연봉

select first_name,salary
from employees
where salary >(select avg(salary) from employees);


