show tables;
-- 테이블 이름 바꾸기
rename table emp_year2 to year_emp;
-- 테이블 이름 바꾸기2
alter table year_emp rename year_emp2;

-- 테이블 삭제하기 (다중 삭제는 안됨)
drop table if EXISTS dept2;
drop table if EXISTS dept3;
drop table if EXISTS emp_year;
drop table if EXISTS empty_dept1;
drop table if EXISTS year_emp2;