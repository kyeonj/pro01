-- 글 추가 (등록)
insert into board values (bseq.nextval, '테스트 글1', '테스트 글1의 내용입니다.', 'kyj', sysdate);
 insert into board values (bseq.nextval, '테스트 글2', '테스트 글2의 내용입니다.', 'kyj', sysdate);
 insert into board values (bseq.nextval, '테스트 글3', '테스트 글3의 내용입니다.', 'admin', sysdate);
 insert into board values (bseq.nextval, '테스트 글4', '테스트 글4의 내용입니다.', 'admin', sysdate);
 insert into board values (bseq.nextval, '테스트 글5', '테스트 글5의 내용입니다.', 'aaaaaaaa', sysdate);
 insert into board values (bseq.nextval, '테스트 글6', '테스트 글6의 내용입니다.', 'kyj', sysdate);
 insert into board values (bseq.nextval, '테스트 글7', '테스트 글7의 내용입니다.', 'aaaaaaaa', sysdate);
 insert into board values (bseq.nextval, '테스트 글8', '테스트 글8의 내용입니다.', 'admin', sysdate);
 insert into board values (bseq.nextval, '테스트 글9', '테스트 글9의 내용입니다.', 'admin', sysdate);
 insert into board values (bseq.nextval, '테스트 글10', '테스트 글10의 내용입니다.', 'kyj', sysdate);
 insert into board values (bseq.nextval, '테스트 글11', '테스트 글11의 내용입니다.', 'kyj', sysdate);
-- insert into boarda values (bseq.nextval, ?, ?, ?, sysdate);
-- pstmt.setString(1, title);
-- pstmt.setString(2, content);
-- pstmt.setString(3, author);

 -- 글 목록
select * from board;
select count(*) as cnt from board;
select * from board where rownum between 1 and 10 order by no desc;
-- select * from boarda where rownum between ? and ? order by no desc;
-- pstmt.setInt(1, startNum);
-- pstmt.setInt(2, endNum);

select no, title, content, author, resdate from 
(select rownum rn, no, title, content, author, resdate from board 
order by no desc) t1 where t1.rn between 11 and 20;
-- select no, title, content, author, resdate from 
-- (select rownum rn, no, title, content, author, resdate from board 
-- order by no desc) t1 where t1.rn between ? and ?;
-- pstmt.setInt(1, startNum);
-- pstmt.setInt(2, endNum);
-- pageCount = (amount % 10==0) ? (amount / 10) : (amount / 10) + 1;
-- startNum = curPage * 10 - 9;
-- endNum = curPage * 10;

 -- 글 상세보기
select a.no no, a.title title, a.content content, b.name name,
to_char(a.resdate, 'yyyy-MM-dd') resdate from board a inner join member1 b 
on a.author=b.id where a.no=1
-- select a.no no, a.title title, a.content content, b.name name,
-- a.resdate resdate from board a inner join member1 b 
-- on a.author=b.id where a.no=?
-- pstmt.setInt(1, no);
-- rs.getInt("no");
-- rs.getString("tit");
-- rs.getString("con");
-- rs.getString("nm");
-- rs.getString("res");

-- 글 수정
update board set title='제목입니다.', content='여기는 내용입니다.' where no=1;
-- update board set title=?, content=? where no=?
-- pstmt.setString(1, title);
-- pstmt.setString(2, content);
-- pstmt.setInt(3, no);

-- 글 삭제
delete from board where no=1;
-- delete from board where no=?;
-- pstmt.setInt(1, no);
  
insert into board values (bseq.nextval, 'aaa','aaa','aaa', sysdate);
select sysdate now from dual;