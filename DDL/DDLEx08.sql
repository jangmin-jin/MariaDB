show tables;
drop table dept;

-- 다른 테이블 참조하여 테이블 만들기
create table dept as select * from sample.dept;
select * from dept;