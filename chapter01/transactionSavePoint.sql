-- transaction save point

select *from book;
commit;

--DML 1
insert into book values (3,'토지3',sysdate, '대여중',1);

-- save point a
savepoint a;

--DML 2
delete from book where no =3;

-- savepoint b
savepoint b;

--DML 3 
insert into book values (3,'토지4',sysdate, '대여중',1);

--test
rollback to a;
select *from book;