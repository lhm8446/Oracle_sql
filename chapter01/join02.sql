-- ansi join sql문 (1999 syntax)

-- natural join 테이블의 칼럼이름이 같은경우만

select a.first_name, b.DEPARTMENT_NAME
from employees a
natural join departments b;


select count (*)
from employees a 
join departments b
using (department_id);

-- inner join 표준 SQL
select count (*)
from employees a ;
 

-- outer join 표준 SQL

		select count(*)
			FROM employees e
right outer join departments d
			  on e.DEPARTMENT_ID = d.DEPARTMENT_ID;
			  
			  		select count(*)
			FROM departments d
left outer join employees e
			  on e.DEPARTMENT_ID = d.DEPARTMENT_ID;