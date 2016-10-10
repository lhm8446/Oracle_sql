-- rownum

-- 문제 : 직원중에 월급이 상위 10 ~20 까지 골라낸다.

-- e : rownum이 셋팅 된 이후에  order by가 실행되므로 순서가 엉킴
select employee_id,salary,rownum
  from employees
order by salary desc;


-- 해결 방법 (where 절에서 rownum 조건이 안맞기 떄문에 row가 하나도 없음 >>문제)
select employee_id, salary, rownum
from(select employee_id,salary
  	   from employees
   order by salary desc)
where 10<= rownum and rownum <= 20;

-- 최종 해결방법
select *
from(select employee_id, salary, rownum rn
	   from(select employee_id,salary
  	   		  from employees
 		  order by salary desc))
where 10<= rn and rn <= 20;