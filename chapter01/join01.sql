-- inner join(equi-join)
select e.EMPLOYEE_ID, 
		d.DEPARTMENT_ID, 
		e.FIRST_NAME, 
		d.DEPARTMENT_NAME
 from EMPLOYEES e, departments d 
where e.DEPARTMENT_ID = d.DEPARTMENT_ID  -- 조인조건 (n-1)개 필수, n= 테이블갯수
and e.salary > 5000						 -- row 선택조건
order by e.EMPLOYEE_ID;


--outer join
select count(*)
FROM employees e,
	 departments d
where e.DEPARTMENT_ID = d.DEPARTMENT_ID;


select nvl(e.first_name ,'소속사원없음'), d.DEPARTMENT_NAME
FROM employees e,
	 departments d
where e.DEPARTMENT_ID (+)= d.DEPARTMENT_ID;


--self join 
select emp.FIRST_NAME, man.FIRST_NAME
from employees emp,employees man
where emp.manager_ID = man.employee_ID;


select emp.FIRST_NAME, man.FIRST_NAME
from employees emp,employees man
where man.employee_ID (+)= emp.manager_ID;


select * from employees where manager_id is null;
