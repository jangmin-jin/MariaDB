SHOW tables;
SELECT * FROM dept2;
-- 계속 연결해서 들어갈 수 있다.
INSERT INTO dept2 VALUES (81, '생산부', null), (82, '생산부', null);

-- 새로운 테이블 생성
CREATE TABLE dept3 as select * from dept where 1 != 1;
SELECT * FROM dept3;

-- dept안에 있는 값을 고대로 다 넣을 수도 있다.
INSERT INTO dept3 select * from dept;