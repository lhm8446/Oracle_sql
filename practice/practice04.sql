-- 1번
select count(employee_id)as "직원 수"
from employees 
where salary<(select avg(salary) from employees);

-- 2번
select e.employee_id,e.last_name,e.salary
from employees e,(select department_id , max(salary)as max_sa from employees group by department_id) b
where e.DEPARTMENT_ID = b.department_id and e.salary = b.max_sa
order by e.salary DESC;


select employee_id,last_name,salary
from employees
where (DEPARTMENT_ID ,salary) in (select department_id , max(salary) from employees group by department_id)
order by salary DESC;


-- 3번

select j.job_title, s.sum_sa
from jobs j, (select job_id , sum(salary)as sum_sa from employees group by job_id) s
where j.JOB_ID = s.job_id
order by s.sum_sa DESC;

-- 4번
select e.employee_id, e.last_name, e.salary
from employees e, (select DEPARTMENT_id , avg(salary)as avg_as from employees group by DEPARTMENT_id) a
where e.DEPARTMENT_ID = a.DEPARTMENT_ID
and e.SALARY > a.avg_as;





