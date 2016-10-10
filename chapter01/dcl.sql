-- data dictionnary
select * from dictionary;
select * from user_objects;

-- table 조회
select *from user_objects
where object_type='TABLE';

--제약조건 조회
select * from user_constraints where table_name='BOOK';

-- 제약조건
select * from user_cons_columns;

-- 모든사용자 확인
select * from dba_users;

-- 현재 접속한 계정정보
select * from user_users;