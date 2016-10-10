-- transaction type

commit;

Set TranSaction read only; 

select * from book;

delete from book;

Set TranSaction read write; 

select * from book;
insert into book values(3,'토지3',sysdate,'대여가능',1);