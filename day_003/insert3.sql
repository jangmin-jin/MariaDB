show tables;
DROP TABLE dept2;
DROP TABLE dept3;
desc dept;

-- 디폴트를 10으로 지정했기 때문에 Null도 허용 된다.
CREATE TABLE dept2(
  deptno INT(2) DEFAULT 10,
  dname VARCHAR(14),
  loc VARCHAR(13)
);
INSERT INTO dept2 values (10, '개발부', '쓰울');
INSERT INTO dept2 values (null, '개발부', '쓰울');
-- default 를 넣으면 10이 들어간다.
INSERT INTO dept2 values (default, '개발부', '쓰울');
SELECT * FROM dept2;