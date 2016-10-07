-- create table
create table book(
	no		 NUMBER(10),
	title	 VARCHAR2(50),
	author 	 varchar2(80),
	pub_date date
);

--insert
insert into book
values (1,'토지','박경리', to_date('2005-03-12','yyyy-mm-dd'));
					 --sysdate
					 
insert into book(title,no,author,pub_date)			-- 입력 자리 변경
values('슬램덩크','2','다케이코', to_date('2006-04-05','yyyy-mm-dd'));


-- delete
delete from book 
where author = '다케이코';


--update
update book
set title ='토지2',
	pub_date= to_date('2007-04-05','yyyy-mm-dd')
where title = '토지';

-- commit
commit;


-- rollback			-- 데이터 복구
rollback;


select * from book;