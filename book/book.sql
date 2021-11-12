create table bookTBL(
code varchar2(4) primary key,
title nvarchar2(50) not null,
writer nvarchar2(10) not null,
price number(8));

insert into bookTBL values('1001','이것이 자바다','신용균',28000);
insert into bookTBL values('1002','이것이 오라클이다','오재남',29000);
insert into bookTBL values('1003','자바의 신 ','강신용',30000);
insert into bookTBL values('1004','자바 1000제','김용만',18000);
insert into bookTBL values('1005','spring','이민호',22000);

select* from bookTBL;

--code검색 
-- = :정확하게 일치하는  
select *from BOOKTBL where code='1001';

--like : % or _ 와 같이 사용해야함 
-- %자바 : 자바로 끝나는 모든 책 
--자바% : 자바로 시작하는 모든 책 
--%자바%:중간에 자바가 들어오는책 ,_자바 : 글자 한자리는 아무거나 오고 자바로 끝나는 책
