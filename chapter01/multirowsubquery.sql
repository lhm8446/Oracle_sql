-- multi row subquery

-- ALL < , ALL > 
-- <any , =any, >any


-- job_id가 'IT_PROG'인 직원들이 받는 연봉보다 많이 받는 직원을 출력

select salary from employees where job_id = 'IT_PROG';


select first_name, salary 
from employees 
where salary > ALL(select salary from employees where job_id = 'IT_PROG');


-- job_id가 'IT_PROG'인 직원들이 받는 연봉과 같은 연봉을 받는 직원

select first_name, salary 
from employees 
where salary in(select salary from employees where job_id = 'IT_PROG');


select first_name, salary 
from employees 
where salary = any(select salary from employees where job_id = 'IT_PROG');
