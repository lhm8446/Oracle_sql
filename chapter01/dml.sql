-- DML

select * from author;
select * from book;

-- 1) insert 
insert 
into author 
values (1,'박경리'); 

insert 
into book
values ( 1,'토지',to_date('1985-01-01','yyyy-mm-dd'),'대여가능',1);

insert
into book(author_no,no,pub_date,state,title)
values (1,2,to_date('1985-01-01','yyyy-mm-dd'),'대여가능','토지2');


--3) delete 
delete from book where author_no=1;
delete from author where name='박경리';

select *from book;
select *from author;

rollback;

commit;
