-- 1
select emp.EMPLOYEE_ID as "사번", 
		emp.FIRST_NAME as "이름", 
		d.DEPARTMENT_NAME as "부서명",
		emp.FIRST_NAME as "매니저 이름"
from employees emp, employees man, departments d
where emp.DEPARTMENT_ID = d.DEPARTMENT_ID
and emp.MANAGER_ID = d.MANAGER_ID;


-- 2
select r.REGION_NAME, c.COUNTRY_NAME
from regions r, countries c
where r.REGION_ID = c.REGION_ID
order by r.REGION_NAME DESC, c.COUNTRY_NAME DESC;


-- 3
select d.DEPARTMENT_ID as "부서ID", 
	   d.DEPARTMENT_NAME as "부서이름",
	   man.FIRST_NAME as "매니저 이름",
	   l.CITY as "도시이름",
	   c.COUNTRY_NAME as "나라",
	   r.REGION_NAME as "지역"
from DEPARTMENTS d, 
	 employees man, 
	 locations l, 
	 countries c,
	 regions r
where d.DEPARTMENT_ID = man.DEPARTMENT_ID
and d.LOCATION_ID = l.LOCATION_ID
and l.COUNTRY_ID = c.COUNTRY_ID
and c.REGION_ID = r.REGION_ID
order by "부서ID";


-- 4
select e.EMPLOYEE_ID as "사원번호",
	   e.FIRST_NAME ||' '|| e.LAST_NAME as "이름"
from jobs j,
	 job_history h,
	 employees e
where h.JOB_ID = j.JOB_ID and j.JOB_TITLE='Public Accountant'
  and h.EMPLOYEE_ID = e.EMPLOYEE_ID;


-- 6
select emp.EMPLOYEE_ID, emp.LAST_NAME, emp.HIRE_DATE
 from employees emp ,employees man
 where emp.MANAGER_ID = man.EMPLOYEE_ID
 and emp.HIRE_DATE < man.HIRE_DATE
 order by emp.EMPLOYEE_ID
