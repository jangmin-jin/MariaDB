-- 테이블 수정 (추가, 삭제)
show tables;
desc emp_year2;
-- alter table 로 테이블 수정(삽입)
alter table emp_year2 add job varchar(10);
-- 데이터 크기를 바꿀 수 있지만, 작은 자리수로는 바꿀 수는 없다.
alter table emp_year2 modify job varchar(20);
-- rename column으로 컬럼 이름을 바꿀 수 있다.
alter table emp_year2 rename column job to work;
-- 컬럼 지우기
alter table emp_year2 drop work;
