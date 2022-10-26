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
 -- insert into board values(bseq.nextval, ?, ?, ? , sysdate);
 -- pstmt.setString(1, title);
 -- pstmt.setString(2, content);
 select count(*) cnt from board;
 select no, title, content, author, resdate from (select rownum rn, no, title, content, author, resdate from board) t1 where t1.rn between 1 and 10;
  select no, title, content, author, resdate from (select rownum rn, no, title, content, author, resdate from board) t1 where t1.rn between 11 and 20;
  
 -- 글 상세 보기
  select a.no no, a.title title, a.content content, b.name name, to_char(a.resdate, 'yyyy-MM-dd') resdate from board a inner join member1 b on a.author=b.id where a.no=1;