-- 1번

select e.FIRST_NAME||' '||e.LAST_NAME as "이름", e.SALARY as "연봉", d.DEPARTMENT_NAME as "부서"
from employees e, 
	 departments d
where e.DEPARTMENT_ID = d.DEPARTMENT_ID
and hire_date = (select max(hire_date) as max_h from employees);

-- 2번
select e.EMPLOYEE_ID as "사번", e.last_name as "성", e.SALARY as "연봉" 
from employees e,(select department_id ,avg(salary) as avg_s 
					from employees group by department_id) d
where e.DEPARTMENT_ID = d.department_ID
and e.SALARY > d.avg_s;

--3번
select e.EMPLOYEE_ID as "사번", 
 	   e.FIRST_NAME ||' '|| e.LAST_NAME as "이름", 
	   j.JOB_TITLE as "업무",
	   e.SALARY as "연봉"
from EMPLOYEES e, jobs j
where e.JOB_ID = j.JOB_ID
and e.DEPARTMENT_ID = (select department_id 
						from employees 
						group by department_id
	  					having avg(salary) = (select max(avg(salary)) 
												from employees 
												group by department_id));


--4번

select department_name
from departments
where department_id = (select department_id 
						from employees 
						group by department_id
	  					having avg(salary) = (select max(avg(salary)) 
												from employees 
												group by department_id));

--5번



--6번

select j.JOB_TITLE
from departments d, jobs j, employees e
where e.DEPARTMENT_ID = d.DEPARTMENT_ID
and e.DEPARTMENT_ID = j.JOB_ID
and e.JOB_ID = (select JOB_ID 
				  from employees 
				  group by JOB_ID
	  			  having avg(salary) = (select max(avg(salary)) 
										  from employees 
									  group by department_id));
	 
