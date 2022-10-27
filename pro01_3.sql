CREATE table faqa(
no number	primary key,    
title varchar2(100)	 not null,   
content	varchar2(600),   	  
author varchar2(16),    	
resdate date default sysdate,
gubun number not null, 	--질문(0)/답변(1) 구분
parno number not null);  --질문(1)과 답변(1)의 공통번호

create sequence fseq;
insert into faqa values (fseq.nextval, '질문1', '질문에 대한 내용입니다1.', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, '질문2', '질문에 대한 내용입니다2.', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, '질문3', '질문에 대한 내용입니다3.', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, '질문1에 대한 답변', '질문1에 대한 답변 내용입니다.', 'admin', sysdate, 1, 1);
insert into faqa values (fseq.nextval, '질문2에 대한 답변', '질문2에 대한 답변 내용입니다.', 'admin', sysdate, 1, 2);
insert into faqa values (fseq.nextval, '질문3에 대한 답변', '질문3에 대한 답변 내용입니다.', 'admin', sysdate, 1, 3);
select * from faqa order by parno asc, gubun asc;

-- 질문 등록
-- insert into faqa values (fseq.nextval, ?, ?, 'admin', sysdate, 0, fseq.currval);
-- 답변 등록
-- insert into faqa values (fseq.nextval, ?, ?, 'admin', sysdate, 0, ?);

-- 글 수정
-- update faqa set title=?, content=? where no=?;


-- 질문 및 답변 삭제
-- delete from faqa where parno=?
delete from faqa where parno=16;
select fseq.currval from dual;
delete faqa where no= 23;
commit;