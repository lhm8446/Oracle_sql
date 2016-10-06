-- 1번
select max(salary) as "최고임금", min(salary) as "최저임금", 
max(salary)-min(salary) as "최고임금 - 최저임금"
from employees;

-- 2번
select to_char(max(hire_date),'yyyy"년"MM"월"dd"일"') as "마지막 직원 입사일" from employees ;


--3번
select DEPARTMENT_id as "부서", avg(salary) as "평균임금", max(salary)as "최고임금", min(salary)as "최저임금" 
from employees 
group by department_id
order by avg(salary) desc, max(salary) desc, min(salary) desc;

--4번
select job_id as "업무", avg(salary) as "평균임금", max(salary)as "최고임금", min(salary)as "최저임금" 
from employees 
group by job_id
order by avg(salary) desc, max(salary) desc, min(salary) desc;

--5번
select to_char(min(hire_date),'yyyy"년"MM"월"dd"일"')as "첫직원 입사일" from employees ;

--6번
select department_id as "부서", avg(salary) as "평균임금", min(salary) as "최저임금", avg(salary) - min(salary) as "평균-최저"
from employees 
group by department_id 
having avg(salary)-min(salary) < 2000
order by avg(salary)-min(salary) desc;


--7번
select job_id, (max(salary)-min(salary)) as diff_max_min_salary
from employees 
group by job_id
order by diff_max_min_salary desc;

select job_title from jobs where job_title ='SA_REP';


select j.job_title, a.diff
from jobs j, 
(select job_id, (max(salary)-min(salary)) as diff 
from employees
group by job_id) a
where a.job_ID = j.job_id 
and diff = (select max(diff) 
from(select job_id,(max(salary)-min(salary))as diff 
from employees group by job_id));

