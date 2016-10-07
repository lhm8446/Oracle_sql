-- constraints

-- not null
drop table book cascade constraint;

create table book(
	no		 NUMBER(10),
	title	 VARCHAR2(50) not null,
	pub_date date,
	state varchar2(100) not null,
	author_no number(20) not null,
	--constraint c_book_u unique(no)             --unique
	primary key (no),  --primary key         -- not null + unique  
	constraint c_book_check check ( state in('대여중','대여가능')),
	constraint c_book_fk foreign key(author_no) references author(no)on delete cascade
);

insert into book
values (1,'토지', to_date('2005-03-12','yyyy-mm-dd'),'대여중','1');

insert into book
values (2,'토지2', to_date('2005-03-12','yyyy-mm-dd'),'대여가능','2');

insert into book
values (3,'토지3', to_date('2005-03-12','yyyy-mm-dd'),'대여가능','2');

select * from book;

delete from author where no=2;


drop table author;
create table author(
 no number(10),
 name varchar(20) not null,
 primary key(no));
 
 insert into author values(1,'박경리');
 
 insert into author values(2,'공자');
 
select * from author;