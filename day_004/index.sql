-- 인덱스를 보는 방법
SHOW INDEX FROM emp;
SHOW tables;

CREATE TABLE dept_i (
  deptno INT (2),
  dname VARCHAR (14),
  loc VARCHAR (13)
);

-- empty
SHOW INDEX FROM dept_i;

-- PRIMARY KEY 추가하면
ALTER TABLE dept_i ADD constraint PRIMARY KEY (deptno);
-- column_name deptno가 인덱스로 잡힌다.
SHOW INDEX FROM dept_i;

-- PRIMARY KEY 지우면
ALTER TABLE dept_i DROP PRIMARY KEY;
-- INDEX 도 하늘나라로 간다.
SHOW INDEX FROM dept_i;

-- INDEX 를 따로 만드는 법
CREATE INDEX dept_i_idx ON dept_i (dname);
SHOW INDEX FROM dept_i;
-- 특정 INDEX 지우는 법
DROP INDEX dept_i_idx ON dept_i;

-- INDEX 를 따로 만드는 법 2
ALTER TABLE dept_i ADD INDEX dept_i_idx (dname);
SHOW INDEX FROM dept_i;
-- 특정 INDEX 지우는 법 2
ALTER TABLE dept_i DROP INDEX dept_i_idx;