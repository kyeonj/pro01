CREATE table qnaa(
no number	primary key,    
title varchar2(100)	 not null,   
content	varchar2(600),   	  
author varchar2(16),    	
resdate date default sysdate,
lev number not null,            --깊이
parno number not null,        --부모글 번호
sec char(1));                        --비밀글 여부

create sequence qseq;

insert into qnaa values (qseq.nextval, '문의글테스트1','문의글테스트1 내용', 'kyj' , sysdate, 0, qseq.currval, 'N');
insert into qnaa values (qseq.nextval, '문의글테스트2', '문의글테스트2 내용', 'aaaaaaaa', sysdate, 0, qseq.currval, 'Y');
insert into qnaa values (qseq.nextval, '문의글1에 대한 답변','문의글1에 대한 답변 내용','admin',sysdate, 1, 1, 'N');
insert into qnaa values (qseq.nextval, '문의글2에 대한 답변', '문의글2에 대한 답변내용', 'admin', sysdate, 1, 2, 'Y');

select * from qnaa;
select * from qnaa order by parno asc, lev asc;
update qnaa set content ='문의글테스트2 내용' where no=2;
update qnaa set title='문의글1에 대한 답변', content='문의글1에 대한 답변 내용' where no=3;
select * from qnaa order by parno desc, lev asc, no asc;
