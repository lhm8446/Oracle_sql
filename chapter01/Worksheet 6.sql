-- null 관련함수

select nvl(null,0) from dual;

select nvl(1,0) from dual;

select employee_id, 
	nvl(commission_pct, 0), 
	nvl(commission_pct, 0)*salary 
	from employees;
	

select nvl2(1,10,0) from dual;


select employee_id, 
	nvl2(commission_pct, commission_pct* salary,0)
	from employees;
	
select nullif(5,3+2) from dual;   -- 두식이 같으면 null

select nullif(3,3+2) from dual;

select coalesce(null, null, 3, 4, 5) from dual; -- null이 아닌값을 출력
select coalesce(1, null, 3, 4, 5) from dual;

-- select employee_id, nvl(manager_id,'매니저 없음') from employees;  타입안맞음

select employee_id, nvl(to_char(manager_id),'매니저 없음') from employees;

