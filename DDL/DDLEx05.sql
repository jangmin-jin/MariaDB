-- 데이터를 선택 안하고 테이블 서식만 가져오는 방법
create table empty_dept1 as select * from dept where 1 != 1;
desc empty_dept1;
select * from empty_dept1;