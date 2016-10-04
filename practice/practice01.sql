-- 1번
select first_name ||' '|| last_name as "이름", email as "이메일", phone_number 
as "전화번호" from employees order by hire_date asc ;

-- 2번 
select job_title , max_salary from jobs order by max_salary desc;

-- 3번
select count (*) from employees where manager_id is null;

-- 4번
select job_id, salary from employees order by salary desc;

--select * from jobs where job_id = 'AD_PRES';

-- 5번
select count(*) DEPARTMENT_ID from departments ;

-- 6번
select DEPARTMENT_name from departments order by length(DEPARTMENT_name) desc;

-- 7번
select count (DEPARTMENT_ID) from departments where manager_id is null;

-- 8번
select upper(country_name) from countries where region_id is not null order by upper(country_name) asc;

-- 9번
select region_name from regions order by length(region_name)asc; 

-- 10번
select distinct lower(city) from LOCATIONS order by lower(city)asc;