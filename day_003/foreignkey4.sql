-- 딸린 자식이 있어서 삭제 불가
DELETE FROM dept_p2 WHERE deptno=20;
-- 딸린 자식이 없어서 삭제 가능
DELETE FROM dept_p2 WHERE deptno=10;
DELETE FROM emp_f2 WHERE deptno=20;

INSERT INTO dept_p2 VALUES (20, '연구부', '서울');
INSERT INTO dept_p2 VALUES (10, '연구부', '서울');
INSERT INTO emp_f2 VALUES (1003, '홍길동', '팀장', 10);
INSERT INTO emp_f2 VALUES (1003, '이몽룡', '팀장', 20);

-- 슬하에 자식들이 있어서 삭제 불가
DROP TABLE dept_p2;

-- 자식먼저 삭제후 부모 삭제 가능
DROP TABLE emp_f2;
DROP TABLE dept_p2;