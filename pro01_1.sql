-- 회원 가입
insert into MEMBER1 values ('kyj','1111','김연정','kyj@naver.com','010-1234-1234',sysdate);
insert into MEMBER1 values('admin','1234','관리자','admin@naver.com','010-2222-2222',sysdate);
-- insert into member1 values (?,?,?,?,?,sysdate);
-- pstmt.setString(1, id);
-- pstmt.setString(2, pw);
-- pstmt.setString(3, name);
-- pstmt.setString(4, email);
-- pstmt.setString(5, tel);

-- 회원 목록
select * from member1;

-- 로그인
select * from member1 where id='kyj' and pw='1111';
-- "select * from member1 where id='"+id+"' and pw="'"+pw+"';  -- Statement
-- select * from member1 where id=? and pw=?;	-- PrepareStatement
-- pstmt.setString(1, id);
-- pstmt.setString(2, pw);


-- 회원 정보 수정
update membera set pw='1111', tel='010-3333-4444', email='aaaaa@gmail.com' where id='aaaaaaaa'; 
-- update member1 set pw=?, tel=?, email=? where id=?;
-- pstmt.setString(1, pw);
-- pstmt.setString(2, tel);
-- pstmt.setString(3, email);
-- pstmt.setString(4, id);

-- 회원 탈퇴
delete from member1 where id='aaaaaaaa';
-- delete from member1 where id=?;
-- pstmt.setString(1, id);

select * from board order by resdate;

update member1 set name = '이민하' where id = 'aaaaaaaa';
commit
delete board where no= 17;
update board set no=12 where no = 21;