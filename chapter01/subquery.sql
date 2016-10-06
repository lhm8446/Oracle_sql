--subquery 

select salary from employees where first_name = 'Lex';
select first_name, salary from employees where salary >17000;



select first_name, 
	   salary 
from employees 
where salary >(select salary from employees where first_name = 'Lex');
