-- 각 부서별로 최고연봉을 받는 직원의 이름과 연봉을 출력


---- 1
select employee_id,salary
 from employees 
 where (department_id, salary) in (select department_id, max(salary)
								   	from employees
								group by department_id) ;
								

---- 2*
select a.first_name, a.salary
from employees a,(select department_id, max(salary) as max_salary
					from employees
				group by department_id) b
where a.DEPARTMENT_ID = b.department_id
  and a.SALARY = b.max_salary;



---- 3
select a.first_name, a.salary
from employees a
where salary = (select max(salary)
				from employees 
				where department_id = a.department_id); 
