--alter table
alter table book add(pubs VARCHAR2(120));     -- 칼럼 추가

alter table book MODIFY(pubs varchar2(200));   --칼럼 타입 변경

alter table book rename column pubs to publishing; -- 칼럼 이름변경

alter table book drop column publishing;          -- 칼럼 삭제

--drop table
--drop table book;

-- comment
comment on table book is 'ㅁㄴㅇㅁㄴㅇ';

select * from book;
