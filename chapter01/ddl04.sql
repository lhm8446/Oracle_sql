-- create table

CREATE TABLE book
(
   no         NUMBER (10),
   title      VARCHAR2 (50),
   author     VARCHAR2 (80),
   pub_date   DATE
);

--insert

INSERT INTO book
     VALUES (1,
             '토지',
             '박경리',
             TO_DATE ('2005-03-12', 'yyyy-mm-dd'));

      --sysdate

INSERT INTO book (title,
                  no,
                  author,
                  pub_date)                                        -- 입력 자리 변경
     VALUES ('슬램덩크',
             '2',
             '다케이코',
             TO_DATE ('2006-04-05', 'yyyy-mm-dd'));


-- delete

DELETE FROM book
      WHERE author = '다케이코';


--update

UPDATE book
   SET title = '토지2', pub_date = TO_DATE ('2007-04-05', 'yyyy-mm-dd')
 WHERE title = '토지';

-- commit
COMMIT;


-- rollback			-- 데이터 복구
ROLLBACK;


SELECT * FROM book;