select * from member1
select * from BOARD
insert into MEMBER1 values ('kyj','1111','김연정','kyj@naver.com','010-1234-1234',sysdate);
insert into MEMBER1 values('admin','1234','관리자','admin@naver.com','010-2222-2222',sysdate);
update member1 set name = '이민하' where id = 'aaaaaaaa';
commit
delete board where no= 17;
update board set no=12 where no = 21;