-- isolation type

select * from book;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
update book set title='토지5' where no=2;

select * from book;



