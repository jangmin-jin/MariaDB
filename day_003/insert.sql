-- 잉여 테이블 삭제
SHOW tables;
DROP table dept2;
DROP TABLE test1;

-- 테이블 생성
CREATE TABLE dept2 as select * from dept where 1 != 1;
-- 값 삽입
INSERT INTO dept2 values (10, '기획부', '쓰울');
-- 컬럼 명 순서 지정하여 삽입 가능
INSERT INTO dept2 (deptno, dname, loc) values (20, '개발부', '붓싼');
INSERT INTO dept2 (deptno, loc, dname) values (20, '겡기', '생산부');

SELECT * FROM dept2;
DESC dept2; -- deptno 의 null 필터만 NO로 되어 있기 때문에 deptno는 필수로 넣어줘야한다.

-- deptno는 null 을 넣을 수 없는 상태임
INSERT INTO dept2 (deptno, dname, loc) values (null, '연구부', '춘첸');
INSERT INTO dept2 (deptno, dname, loc) values (30, null, '춘첸');
INSERT INTO dept2 values (71, null, null);
-- ''의 경우 값이 비어져있다.
INSERT INTO dept2 values (72, '', null);