-- DML

-- 2) update

select * from employees where department_id = 50;

update employees
set first_name='ha',
	salary = salary * 1.1,
	commission_pct = 0;


-- 3) delete
-- error : 참조키가 있는 경우 삭제할 수 없음
-- delete from employees;

rollback;