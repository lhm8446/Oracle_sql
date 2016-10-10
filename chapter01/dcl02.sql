-- 모든 사용자확인
select *from dba_users;

-- 현재 접속한 계정정보
select * from user_users;

select * from all_users;

create user hamin identified by "hamin";

-- 권한부여 (접속권한)
grant create session to hamin;
revoke create session from hamin;

--role 삭제
drop role reviwer;

--role 생성
create role reviewer;

-- 모든테이블을 select 할 수 있는 권한을 롤에 부여 (reviewer)
grant select any table to reviewer;

--롤(reviewer)에 롤(connect)을 추가
grant connect to reviewer;

-- 사용자 계정에 롤을 부여 
grant reviewer to hamin;