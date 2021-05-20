CREATE TABLE dept_a1(
  deptno INT (2) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  dname VARCHAR (14),
  loc VARCHAR (13)
);
DESC dept_a1;
SELECT * FROM dept_a1;

-- 0으로 계속 넣을 수 있다. 0 : 최고수 + 1
INSERT INTO dept_a1 values (0, '연구부', '스울');
-- 0말고 다른 값이 들어가면 꼬이거나 에러가 발생함
INSERT INTO dept_a1 values (10, '연구부', '스울');
DELETE FROM dept_a1 WHERE loc='스울';